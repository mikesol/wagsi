var storeWag = {};
exports.storeWag = storeWag;
exports.parseParams_ = function (nothing) {
  return function (just) {
    return function (queryString) {
      return function (v) {
        return function () {
          var params = new URLSearchParams(queryString);
          var param = params.get(v);
          return param === null ? nothing : just(param);
        }
      }
    }
  }
}
exports.cachedWag = function (nothing) {
  return function (just) {
    return function () {
      return storeWag.wag ? just(storeWag.wag) : nothing;
    };
  };
};
var storeSrc = {};
exports.storeSrc = storeSrc;
exports.cachedSrc = function (nothing) {
  return function (just) {
    return function () {
      return storeSrc.src ? just(storeSrc.src) : nothing;
    };
  };
};