A='''bp0VolF :: CtrlF
  , bp0FreqF :: CtrlF
  , bp0QF :: CtrlF
  , bp1VolF :: CtrlF
  , bp1FreqF :: CtrlF
  , bp1QF :: CtrlF
  , hp0VolF :: CtrlF
  , hp0FreqF :: CtrlF
  , hp0QF :: CtrlF
  , rawVolF :: CtrlF'''

A=[[y for y in x.replace(',','').split(' ') if y != ''] for x in A.split('\n')]
for m in A:
  print('%s = prop (Proxy :: _ "%s")' % (m[0], m[0]))