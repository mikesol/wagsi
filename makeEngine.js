var fs = require("fs");
var nRooms = 6;

var waggedi = fs.readFileSync("src/PutThePastBehindUs/WaggedTemplate.purs").toString();
var waggedo = "module WAGSI.PutThePastBehindUs.Wagged where\n" + waggedi.split("\n").slice(1).join("\n");
fs.writeFileSync(
  "src/PutThePastBehindUs/Wagged.purs",
  waggedo
);

var room = fs.readFileSync("src/PutThePastBehindUs/TemplateForRoom.purs").toString();
for (var i = 0; i < nRooms; i++) {
  fs.writeFileSync(
    "src/PutThePastBehindUs/Room" + i + ".purs",
    "module WAGSI.PutThePastBehindUs.Room" + i + " where\n" + room.replaceAll("oom","oom"+i).split("\n").slice(1).join("\n")
  );
}


fs.writeFileSync(
  "src/PutThePastBehindUs/Gopher.purs",
  "module WAGSI.PutThePastBehindUs.Gopher where\n"
);