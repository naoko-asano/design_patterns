# Template Method パターン

## 概要

- 継承によって、アルゴリズムを変更するパターン
- 基底クラスでプロセス全体をコントロールするテンプレートメソッドを作り、サブクラスで詳細を穴埋めする
- テンプレートとは、文字の形に穴があいている薄いプラスチックの板のこと。その穴をなぞると、手書きでも整った文字を書くことができるが、使う道具(e.g. 鉛筆,マジック,筆)によってどのような形になるかは分からない。テンプレートはその枠組みを提供するだけだ。

## クラス図

![](https://i.imgur.com/r5eBUaO.png)

## デメリット

- アルゴリズムのパターンの数だけサブクラスが増える
- 継承していることによってスーパークラスとサブクラスが密接になる
- 別のパターンに変更したくなった場合、別のクラスのインスタンスを作成し直さなければならない。

## 参考文献

- ラス・オルセン 「Ruby によるデザインパターン」 ピアソン・エデュケーション 2009
- [TECHSCORE](https://www.techscore.com/tech/DesignPattern/TemplateMethod)
