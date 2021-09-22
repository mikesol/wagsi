var handlers = {};
exports.handlers = function () {
  return handlers;
};

exports.wag_ = function (id) {
  return function (f) {
    return function () {
      handlers[id] = f;
    };
  };
};

exports.dewag_ = function (id) {
  return function () {
    delete handlers[id];
  };
};
var stashHandlers = {};

exports.stashHandlers = function () {
  return stashHandlers;
};

exports.stash_ = function (id) {
  return function (f) {
    return function () {
      stashHandlers[id] = f;
    };
  };
};

exports.deStash_ = function (id) {
  return function () {
    delete stashHandlers[id];
  };
};
