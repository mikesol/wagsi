var fs = require("fs");

var fi = fs.readFileSync("src/LiveCodeHere/EngineTemplate.purs").toString();
fs.writeFileSync(
  "src/LiveCodeHere/Engine.purs",
  "module WAGSI.LiveCodeHere.Engine where\n" + fi.split("\n").slice(1).join("\n")
);
fs.writeFileSync(
  "src/LiveCodeHere/Gopher.purs",
  "module WAGSI.LiveCodeHere.Gopher where\n"
);