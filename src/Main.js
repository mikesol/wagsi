var storeWag = {};

exports.storeWag = storeWag;

exports.cachedScene = function (nothing) {
  return function (just) {
    return function () {
      return storeWag.wag ? just(storeWag.wag) : nothing;
    };
  };
};

var storeStash = {};

exports.storeStash = storeStash;

exports.cachedStash = function (nothing) {
  return function (just) {
    return function () {
      return storeStash.stash ? just(storeStash.stash) : nothing;
    };
  };
};
