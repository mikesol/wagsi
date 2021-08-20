var fs = require("fs");
var nRooms = 6;

if (!String.prototype.replaceAll) {
	String.prototype.replaceAll = function(str, newStr){

		// If a regex pattern
		if (Object.prototype.toString.call(str).toLowerCase() === '[object regexp]') {
			return this.replace(str, newStr);
		}

		// If a string
		return this.replace(new RegExp(str, 'g'), newStr);

	};
}

var waggedi = fs.readFileSync("templates/WaggedTemplate.purs").toString();
var waggedo = "module WAGSI.PutThePastBehindUs.Wagged where\n" + waggedi.split("\n").slice(1).join("\n");
fs.writeFileSync(
  "src/PutThePastBehindUs/Wagged.purs",
  waggedo
);

var room = fs.readFileSync("templates/TemplateForRoom.purs").toString();
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