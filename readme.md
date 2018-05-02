# vagrant-docker-compose-webpack-dev-server
vagrant + docker + webpack-dev-serverの開発環境を構築する。
vagrantup.bat一発で済ませたい。

以下のものをインストールしておく
* VirtualBox
* Vagrant
* Tera Term (windowsの場合)

## インストール
```
git clone git@github.com:nyan4/vagrant-docker-compose-webpack-dev-server.git
```

## 実行
windows
```
vagrantup.bat
```
Mac
```
vagrant up
```

## シャットダウン
widnows
```
vagranthalt.bat
```
Mac
```
vagrant halt
```

## ターミナルの起動
windows
```
ssh.ttl
```
Mac
```
vagrant ssh
```

## 動作周り
1. git cloneしたあとでvagrantup.batの実行でvagrantからのCentOS/7のインスタンス起動
2. dockerとdocker-composeのインストール、起動
3. dockerサーバー起動、webpack,webpack-dev-serverのインストール、起動まで

## 確認
ブラウザから192.168.33.10:8080にアクセス  
vagrant/test-docker/src/index.htmlが表示される

