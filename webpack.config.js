const path = require("path");
const fs = require("fs");
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
        fs.writeFileSync('', 'src/Engine.purs')
      },
      done: () => {
        const fi = fs.readFileSync('src/Wagged.purs');
        fs.writeFileSync(fi, 'src/Engine.purs');
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
    hot: true,
  },
};
