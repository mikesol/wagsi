import "./style.css";
import './prism.css';
import "./prism.js";
import main from "../output/WAGSI.Main/index.js";
import gopher from "../output/WAGSI.LiveCodeHere.Wagged/index.js";
import hack from "../output/WAGSI.Plumbing.Tidal/foreign.js";
import cde from './LiveCodeHere/Wagged.purs';
import exmpl from './Plumbing/Example.purs';

main.main(exmpl)();

if (gopher.wag) {
  console.log("Found an initial wag 🐶");
  main.storeWag.wag = gopher.wag;
}

if (cde) {
  console.log("Found initial code 📦");
  main.storeSrc.src = cde;
}

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
  module.hot.accept('./LiveCodeHere/Wagged.purs', function (i) {

  })
  module.hot.accept(
    "../output/WAGSI.LiveCodeHere.Wagged/index.js",
    function (i) {
      if (gopher.wag) {
        main.storeWag.wag = gopher.wag;
        console.log("Hello wags 🐕");
        var wagHandlers = hack.wagHandlers();
        for (var item in wagHandlers) {
          wagHandlers[item](gopher.wag)();
        }
        ////////////////////////////////
        console.log("Hello src 🤓");
        main.storeSrc.src = cde;
        var srcHandlers = hack.srcHandlers();
        for (var item in srcHandlers) {
          srcHandlers[item](cde)();
        }
      }
    }
  );
}
