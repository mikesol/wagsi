import "./style.css";
import main from "../output/Main/index.js";
import engine from "../output/Engine/index.js";
import gopher from "../output/Gopher/index.js";
import stash from "../output/Stash/index.js";
import hack from "../output/Hack/foreign.js";

var shouldI = { skipUpdate: false };

main.main();

if (gopher.w_4_4_gg_) {
  console.log("Found an initial wag 🐶");
  main.storeWag.wag = gopher.w_4_4_gg_;
}

if (stash.stash) {
  console.log("Found an initial stash 📦");
  main.storeStash.stash = stash.stash;
}

if (module.hot) {
  module.hot.accept("../output/Math/index.js");
  module.hot.accept("../output/Math/foreign.js");
  module.hot.accept("../output/EZCtrl/index.js");
  module.hot.accept("../output/Engine/index.js", function (i) {
    shouldI.skipUpdate = true;
  });
  module.hot.accept("../output/Gopher/index.js", function (i) {
    if (gopher.w_4_4_gg_ && !shouldI.skipUpdate) {
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
