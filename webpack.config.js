const path = require("path");
const fs = require("fs");
const EventHooksPlugin = require("event-hooks-webpack-plugin");
var nCompiles = 0;
var allBefore = function (str, acc, arr) {
  if (arr === []) {
    return acc;
  }
  if (arr[0] === str) {
    return acc;
  }
  return allBefore(str, acc.concat([arr[0]]), arr.slice(1));
};

var allAfter = function (str, arr) {
  if (arr === []) {
    return arr;
  }
  if (arr[0] === str) {
    return arr.slice(1);
  }
  return allAfter(str, arr.slice(1));
};

var removeImportEngine = function (arr) {
  return arr.filter(function (x) {
    return x.indexOf("import Engine") === -1;
  });
};

module.exports = {
  mode: "production",
  entry: "./src/index.js",
  output: {
    path: path.resolve(__dirname, "dist"),
    filename: "bundle.js",
  },
  plugins: [
    new EventHooksPlugin({
      environment: () => {
        const fi = fs.readFileSync("src/EngineTemplate.purs").toString();
        fs.writeFileSync(
          "src/Engine.purs",
          "module Engine where\n" + fi.split("\n").slice(1).join("\n")
        );
      },
      done: (stats) => {
        if (nCompiles > 0) {
          //console.log("Done called", nCompiles, stats);
          const tmpl = fs.readFileSync("src/EngineTemplate.purs").toString();
          const fi = fs.readFileSync("src/Wagged.purs").toString();
          fs.writeFileSync(
            "src/Engine.purs",
            "module Engine where\n" +
              allBefore("-- stopPrelude", [], tmpl.split("\n"))
                .slice(1)
                .join("\n") +
              fi.split("\n").slice(1).join("\n")
          );
        }
        nCompiles++;
      },
    }),
  ],
  module: {
    rules: [
      {
        test: /\.js$/i,
        include: path.resolve(__dirname, "src"),
        use: {
          loader: "babel-loader",
          options: {
            presets: ["@babel/preset-env"],
          },
        },
      },
      {
        test: /\.css$/i,
        include: path.resolve(__dirname, "src"),
        use: ["style-loader", "css-loader", "postcss-loader"],
      },
    ],
  },
  devServer: {
    contentBase: path.resolve(__dirname, "dist"),
    watchContentBase: true,
    disableHostCheck: true,
    hot: true,
  },
};
