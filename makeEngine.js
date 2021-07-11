var fs = require("fs");

var wagged = fs.readFileSync("src/PutThePastBehindUs/WaggedTemplate.purs").toString();
fs.writeFileSync(
  "src/PutThePastBehindUs/Wagged.purs",
  "module WAGSI.PutThePastBehindUs.Wagged where\n" + wagged.split("\n").slice(1).join("\n").replace("Room0Template","Room0").replace("Room1Template","Room1")
);

var room0 = fs.readFileSync("src/PutThePastBehindUs/Room0Template.purs").toString();
fs.writeFileSync(
  "src/PutThePastBehindUs/Room0.purs",
  "module WAGSI.PutThePastBehindUs.Room0 where\n" + room0.split("\n").slice(1).join("\n")
);

var room1 = fs.readFileSync("src/PutThePastBehindUs/Room1Template.purs").toString();
fs.writeFileSync(
  "src/PutThePastBehindUs/Room1.purs",
  "module WAGSI.PutThePastBehindUs.Room1 where\n" + room1.split("\n").slice(1).join("\n")
);

fs.writeFileSync(
  "src/PutThePastBehindUs/Gopher.purs",
  "module WAGSI.PutThePastBehindUs.Gopher where\n"
);