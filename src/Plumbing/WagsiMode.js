exports.wagsiMode_ = function (liveCode) {
  return function(djQuickCheck) {
    return process.env.WAGSI_MODE && process.env.WAGSI_MODE == 'djqc' ? djQuickCheck : liveCode
  }
}