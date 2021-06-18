import "./style.css";
import main from "../output/Main/index.js";
import psci from "../output/Wagged/index.js";
import hack from "../output/Hack/foreign.js";
main.main();

if (module.hot) {
  module.hot.accept("../output/Wagged/index.js", function() {
    console.log('Accepting the updated module!', psci.it);
    var handlers = hack.handlers();
    for (var item in handlers) {
      console.log('handl');
      handlers[item](psci.it)();
    }
  })
}
