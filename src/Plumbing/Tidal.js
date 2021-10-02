var wagHandlers = {};
var srcHandlers = {};
exports.wagHandlers = function () {
  return wagHandlers;
};
exports.wag_ = function (id) {
  return function (f) {
    return function () {
      wagHandlers[id] = f;
    };
  };
};
exports.dewag_ = function (id) {
  return function () {
    delete wagHandlers[id];
  };
};
exports.srcHandlers = function () {
  return srcHandlers;
};
exports.src_ = function (id) {
  return function (f) {
    return function () {
      srcHandlers[id] = f;
    };
  };
};
exports.desrc_ = function (id) {
  return function () {
    delete srcHandlers[id];
  };
};