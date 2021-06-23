var fs = require("fs");

var fi = fs.readFileSync("src/EngineTemplate.purs").toString();
fs.writeFileSync(
  "src/Engine.purs",
  "module Engine where\n" + fi.split("\n").slice(1).join("\n")
);
fs.unlinkSync("src/Gopher.purs");