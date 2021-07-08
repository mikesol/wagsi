const path = require("path");
const fs = require("fs");
const EventHooksPlugin = require("event-hooks-webpack-plugin");

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
        const fi = fs.readFileSync("src/Plumbing/EngineTemplate.purs").toString();
        fs.writeFileSync(
          "src/Engine.purs",
          "module Engine where\n" + fi.split(/\r\n|\n|\r/).slice(1).join("\n")
        );
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
