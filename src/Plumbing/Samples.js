exports.unsafeSampleGetter = function(s) {
  return function(a) {
    return a[s];
  }
}