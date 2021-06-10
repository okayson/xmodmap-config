# xmodmap-config

## Installation

```shell
$ ./setup.sh
```

## Note

**キーコードの調べ方**

```shell
$ xev
```

**現在のキーマップの表示**

```shell
$ xmodmap -pke
```

**xmodmapの設定ファイルの書き方**

```shell
keycode  <keycode> = key shift+key Mode_switch+key Mode_switch+shift+key
# e.g.
keycode  43 = h H Left Left
```

