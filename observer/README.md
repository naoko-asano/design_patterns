# Observer パターン

## 概要

- 自分自身に変更があった時、そのことに関心のある別のオブジェクトに通知する仕組み

## クラス図

![](https://i.imgur.com/PQQ9SXK.png)

## Ruby らしい方法

- Subject を継承するのではなく、モジュールとしてインクルードする
  - スーパークラスは 1 つしか持てないが、その制約から逃れることができる
- Ruby 標準のライブラリである Observable モジュールをインクルードする
  - https://docs.ruby-lang.org/ja/latest/class/Observable.html
- Observer をクラスではなく、コードブロックにする

## 使用上の注意

- サブジェクトの更新頻度とタイミングが適切か
  - 更新が発生していないにも関わらず、通知されていることがないようにする
- サブジェクトに一貫性があるか
  - 更新対象が 2 つある場合、片方だけが更新されたタイミングで通知が行われないようにする

## 参考文献

- ラス・オルセン 「Ruby によるデザインパターン」 ピアソン・エデュケーション 2009
- [TECHSCORE](https://www.techscore.com/tech/DesignPattern/Observer)
