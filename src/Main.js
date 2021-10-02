var storeWag = {};
exports.storeWag = storeWag;
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