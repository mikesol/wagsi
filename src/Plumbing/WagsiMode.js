exports.wagsiMode_ = function (liveCode) {
  return function (djQuickCheck) {
    return function (example) {
      return process.env.WAGSI_MODE && process.env.WAGSI_MODE == 'djqc'
        ? djQuickCheck
        : process.env.WAGSI_MODE && process.env.WAGSI_MODE == 'example'
        ? example
        : liveCode
    }
  }
}