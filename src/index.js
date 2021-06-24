import "./style.css";
import main from "../output/Main/index.js";
import psci from "../output/Gopher/index.js";
import hack from "../output/Hack/foreign.js";
main.main();

if (module.hot) {
  module.hot.accept("../output/Gopher/index.js", function () {
    if (psci.w_4_4_gg_) {
      console.log("Hello wags!");
      var handlers = hack.handlers();
      for (var item in handlers) {
        handlers[item](psci.w_4_4_gg_)();
      }
    }
  });
}
