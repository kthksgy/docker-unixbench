# docker-unixbench
UNIX用ベンチマーク「UnixBench」を実行するDockerイメージです。

## イメージ内容
|ベースイメージ|alpine:3.11|
|:-:|:-:|
|エントリポイント|`/byte-unixbench/UnixBench/Run`|

## ビルド
`git clone`した後に`docker build`してください。

```shell
$ git clone https://github.com/kthksgy/docker-unixbench.git
$ docker build -t kthksgy/unixbench:latest docker-unixbench
```

## 実行
`--rm`オプションを付けて実行すると実行後にコンテナが破棄されて便利です。末尾にオプションを付けるとUnixBenchの実行オプションを設定できます。どんなオプションがあるかは参考文献を参照してください。

```shell
$ docker run --rm kthksgy/unixbench:latest
```

## 参考文献
- [kdlucas/byte-unixbench | GitHub](https://github.com/kdlucas/byte-unixbench/tree/master/UnixBench)
- [byte-unixbench/UnixBench/USAGE](https://github.com/kdlucas/byte-unixbench/blob/master/UnixBench/USAGE)