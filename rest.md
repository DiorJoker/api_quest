REST について説明できる
1. REST とは
API の設計で用いられる有名な設計思想に REST があります。REST には4つの原則があり、その原則を満たした設計の API を REST API と呼びます。

REST 及び REST の4つの原則について、プログラミング初心者にわかるように説明してください。

なお、今後 API を設計する際は、REST の4つの原則を意識して設計するようにしてください。

## RESTとは

URIにアクセスすることで、情報のやり取りを実現できるようにしたもの。

RESTの４原則を満たした、サービスの設計になっているもの


## RESTの4つの原則とは

1. 統一インターフェース

```
予め定義されている方法を利用して、APIと通信を行いましょうと言うもの

```

2. アドレス可能性

```
URIと言う識別子によって、やり取りされる情報を識別できること

つまり、web通信の場合、URL（アドレス）によって、識別を可能にしましょう

と言うもの
```

3. 接続性

```
ハイパーリンクを埋め込んで、１つの情報（Webサイトのページ）から、また違う情報（Webサイトのページ）に遷移できるようにしてあること
```

4. ステートレス性

```
HTTPでの通信は、ステートレスです。

ステートレスとは、1回1回の通信に、前の状態の情報を一歳含めないと言うこと

webは、リクエストとレスポンスが1回の通信で、それが、何度も時系列で連鎖になって行きますが、
各時点で、前の状態を保持していないと言うことです。
```