module.exports = {
  entry: './src/index.js',
  output: {
    path: `${__dirname}/dist`,
    filename: 'bundle.js'
  },
  devServer: {
    // src/index.htmlをデフォルトのホームとする
    contentBase: './src',
    // インラインモード
    inline: true,
    // 8080番ポートで起動
    port: 8080,
    // dockerのコンテナ上でサーバを動かすときは以下の設定で全ての接続を受け入れる
    host:"0.0.0.0",
  },
}