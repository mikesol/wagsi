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