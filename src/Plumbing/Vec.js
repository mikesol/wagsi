exports.unsafeMapWithTypedIndex = function(l) {
  return function (f) {
    return function(arr) {
      var result = new Array(l);
      for (var i = 0; i < l; i++) {
        result[i] = f({toInt: function(){ return i; }})()(undefined)(arr[i]);
      }
      return result;
    }
  }
}