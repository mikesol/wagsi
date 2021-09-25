import "./style.css";
import "./webaudio-controls";
import main from "../output/WAGSI.Main/index.js";
import gopher from "../output/WAGSI.LiveCodeHere.Wagged/index.js";
import hack from "../output/WAGSI.Plumbing.Tidal/foreign.js";

main.main();

if (module.hot) {
  if (module.hot.status() === "ready") {
    module.hot
      .apply({ ignoreUnaccepted: true })
      .then((outdatedModules) => {
        console.log("outdatedModules", outdatedModules);
      })
      .catch((error) => {
        console.error(error);
      });
  }
  module.hot.accept(
    "../output/WAGSI.LiveCodeHere.Wagged/index.js",
    function (i) {
      console.log("HMR Gopher");
      if (gopher.wag) {
        console.log("Hello wags 🐕");
        var handlers = hack.handlers();
        for (var item in handlers) {
          handlers[item](gopher.wag)();
        }
      }
    }
  );
}
