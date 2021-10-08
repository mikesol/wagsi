import os
import sys

ld = os.listdir('cookbook')
ipt = []

for fi in ld:
  with open('cookbook/'+fi,'r') as r:
    v = r.read()
    for x in v.split('\n'):
      if 'module' in x and 'WAGSI.Cookbook' in x:
        ipt.append(v)
        break

def mangle(ii):
  for x in ii.split('\n'):
      if 'module' in x and 'WAGSI.Cookbook' in x:
        y = x.split(' ')
        fst = [z for z in y if 'WAGSI.Cookbook' in z][0]
        snd = fst.split('.')[-1]
        return (fst,snd,ii)
  raise ValueError('Cannot mangle input '+ii)

mangled = [mangle(x) for x in ipt]
modnames = [x[1] for x in mangled]

if len(sys.argv) != 2:
  raise ValueError('Must invoke script with single argument')

av = sys.argv[1]

import string

if av[-5:] == '.purs': av = av[:-5]
if av[0] not in string.ascii_uppercase:
  raise ValueError('Filename must start with capital letter')
for x in av:
  if x not in string.ascii_uppercase + string.ascii_lowercase + string.digits:
    raise ValueError('Filename must contain only caps, lowercase and numbers')

mod = av
fn = av + '.purs'

if mod in modnames:
  raise ValueError('Module name already taken, cowardly refusing to overwrite')
if fn in ld:
  raise ValueError('Filename already taken, cowardly refusing to overwrite')

with open('src/LiveCodeHere/Wagged.purs','r') as rf:
  f = rf.read()
  if ('title:' not in f) and ('title :' not in f) and ('title  :' not in f):
    raise ValueError("Make sure to add a title to your wag by using title:")
  f = f.replace('WAGSI.LiveCodeHere.Wagged', 'WAGSI.Cookbook.'+mod)
  with open('cookbook/'+fn,'w') as wf:
    wf.write(f)
