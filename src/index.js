import "./style.css";
import main from "../output/WAGSI.Main/index.js";
import gopher from "../output/WAGSI.LiveCodeHere.Engine/index.js";
import stash from "../output/WAGSI.LiveCodeHere.Engine/index.js";
import hack from "../output/WAGSI.Plumbing.Hack/foreign.js";

var nonce = gopher.nonce;

main.main();

if (gopher.w_4_4_gg_) {
  console.log("Found an initial wag 🐶");
  main.storeWag.wag = gopher.w_4_4_gg_;
}

if (stash.stash) {
  console.log("Found an initial stash 📦");
  main.storeStash.stash = stash.stash;
}

module.hot
  .apply({ ignoreUnaccepted: true })
  .then((outdatedModules) => {
    console.log("outdatedModules", outdatedModules);
  })
  .catch((error) => {
    console.error(error);
  });

if (module.hot) {
  module.hot.accept("../output/Gopher/index.js", function (i) {
    if (gopher.w_4_4_gg_ && gopher.nonce !== nonce) {
      nonce = gopher.nonce
      console.log("Hello wags 🐕");
      main.storeWag.wag = gopher.w_4_4_gg_;
      var handlers = hack.handlers();
      for (var item in handlers) {
        handlers[item](gopher.w_4_4_gg_)();
      }
    }
    if (shouldI.skipUpdate) {
      shouldI.skipUpdate = false;
    }
  });
  module.hot.accept("../output/Stash/index.js", function () {
    if (stash.stash) {
      console.log("Hello stash 📚");
      main.storeStash.stash = stash.stash;
      var handlers = hack.ffiHandlers();
      for (var item in handlers) {
        handlers[item](stash.stash)();
      }
    }
  });
}
