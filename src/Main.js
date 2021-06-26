var storeWag = {};

exports.storeWag = storeWag;

exports.cachedScene = function (nothing) {
  return function (just) {
    return function () {
      return storeWag.wag ? just(storeWag.wag) : nothing;
    };
  };
};
