## Composite パターン

### 概要

- 再帰的な構造の取り扱いを容易にするデザインパターン
- 「Composite」は「複合的」という意味

### クラス図

![](https://i.imgur.com/sFHeEZJ.png)

### Ruby らしい方法

- コンポジットオブジェクトに子コンポーネントを追加する処理や参照を Array のように書くことができる

```ruby
def <<(child)
    @children << child
end

def [](index)
    @children[index]
end

def []=(index, new_value)
     @children[index] = new_value
end
```

### 使用上の注意

- ツリーの深さが一段しかないと誤解しないようにする

## 参考文献

- ラス・オルセン 「Ruby によるデザインパターン」 ピアソン・エデュケーション 2009
- [TECHSCORE](https://www.techscore.com/tech/DesignPattern/Composite)
