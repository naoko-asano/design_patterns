## Decorator パターン

### 概要

- 基本的なオブジェクトに、レイヤ状に機能を追加(装飾)していく
  それぞれのデコレータがメソッド呼び出しを受け付け、独自の機能を加え、次のコンポーネントに渡していく

### クラス図

![](https://hackmd.io/_uploads/S1Dw63OL2.png)

### 簡単に委譲する方法

- Forwardable モジュールの`def_delegate`メソッドによる委譲

```rb
require 'forwardable'

class Decorator
    extend Forwardable

    def_delegate :@real_component, :sample
    ...
end
```

- method_missing
  - 大量の呼び出しを委譲したい時に使うべき(だからここでは不適かも)

### Ruby らしいやり方

#### ラッピング(alias キーワード)

```rb
c = ConcreteComponent.new

class << c
　　alias old_operation

　　def operation
　　　　old_operation("deccoration")
　　end
end
```

##### 注意点

- メソッド名の衝突
  - 修飾部分が複雑になり、2 回エイリアスを呼ぶことになった場合は、元の operation メソッドの参照を無くしてしまうので注意が必要
- デバッグしづらくなる
  - スタックトレースに別名で出力される

#### モジュール(extend)

```rb
module Decorator1
　　def operation
　　　　super("decoration1")
　　end
end

module Decorator2
　　def operation
　　　　super("decoration2")
　　end
end

c = ConcreateComponent.new
c.extend(Decorator1)
c.extend(Decorator2)

c.operation
```

最後に追加されたモジュールが最初に呼び出されるので、処理はクライアントから Decorator2、Decorator1、ConcreateComponent の順で呼ばれる

##### 注意点

- デコレータを取り消すことができない

### Decorator パターンの使用上の注意

- コンポーネントのインターフェイスをシンプルに保つべき
  - 複雑なインターフェイスだとデコレータを正しく理解しづらくなるため
- デコレータの長い連鎖は、パフォーマンスに影響する

## 参考文献

- ラス・オルセン 「Ruby によるデザインパターン」 ピアソン・エデュケーション 2009
- [TECHSCORE](https://www.techscore.com/tech/DesignPattern/Decorator)
