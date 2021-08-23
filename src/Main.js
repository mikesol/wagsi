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

exports.knobCb = function (id) {
  return function(cb) {
    return function() {
      document.getElementById(id).addEventListener("input", function(event) {
        cb(event.target.value)();
      });
    }
  }
}

exports.sliderCb = function (id) {
  return function(cb) {
    return function() {
      document.getElementById(id).addEventListener("input", function(event) {
        cb(event.target.value)();
      });
    }
  }
}

exports.switchCb = function (id) {
  return function(cb) {
    return function() {
      document.getElementById(id).addEventListener("change", function(event) {
        cb(event.target.value === 1)();
      });
    }
  }
}

exports.keyboardCb = function (id) {
  return function(cbs) {
    return function() {
      document.getElementById(id).addEventListener("change", function(event) {
        cbs[event.note[1]](event.note[0] === 1)();
      });
    }
  }
}