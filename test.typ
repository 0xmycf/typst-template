#import "./Prelude.typ": applyStyle, citep
#show: doc => applyStyle( author: "Me Myself"
                        , title: "Lorem in the Context of Me"
                        , doc
                        )

= Top Header

```hs
-- the main function is the entrypoint in the program
-- in contrast to java this is low boilerplate
-- the type signature can be omitted.
main :: IO ()
main = do -- do notation
  args <- getArgs <&> T.pack -- imports omitted!
  let xs = 12345678910
  forM_ args (putStrLn . T.unpack) -- printing the arguments
  if length args == 0 -- could use null here
    then error "give a filename..."
    -- here otherMain is some function in scope
    else otherMain (head args)
```

== Some Lorem Text in other languages
=== Some Lorem Text in Chinese
上海香港，您好。早上好，这是一段中文的测试文本。
Lorem Ipsum是印刷和排版领域中的虚拟文本。
Lorem Ipsum自15世纪以来一直是行业的标准虚拟文本。
当一个未知的打印机拿走了一种类型的压力，并将其混合成一个类型样本书时，
它不仅存活了五个世纪，而且还跨越了电子排版，其基本思想仍然保持不变。
它在1960年代与Letraset传统工具一起流行，
包括Lorem Ipsum段落包含在最近的桌面出版软件中，例如Aldus PageMaker。
中文的Lorem Ipsum通常是随机生成的，但也可以使用一些实际的文本来代替，
例如《庄子》、《老子》等。这是一段长度不等的中文测试文本。

=== Some Lorem Text in Japanese
こんにちは、東京です。このテキストは日本語のロレム・イプサムです。
ロレム・イプサムは印刷・出版業界で用いられるダミーテキストです。
このテキストは、文字の大きさや配置などを確認するために使用されます。
ロレム・イプサムは15世紀に欧州で誕生したテキストで、現在も使われ続けています。
このテキストはランダムに生成されたものであり、実際には意味を持たない言葉が並んでいます。

=== Some Lorem Text in Korean
안녕하세요, 서울입니다. 이것은 한국어 로렘 입숨 텍스트입니다.
로렘 입숨 텍스트는 인쇄 및 출판 업계에서 사용되는 더미 텍스트입니다.
이 텍스트는 글자 크기 및 배치 등을 확인하기 위해 사용됩니다.
로렘 입숨은 15세기에 유럽에서 탄생한 텍스트이며, 현재까지 사용되고 있습니다.
이 텍스트는 무작위로 생성된 것이며, 실제로는 의미를 가지지 않는 단어들이 나열되어 있습니다.

==== A fourth level header just for testing stuff
上海香港，您好。早上好，这是一段中文的测试文本。
Lorem Ipsum是印刷和排版领域中的虚拟文本。
Lorem Ipsum自15世纪以来一直是行业的标准虚拟文本。
当一个未知的打印机拿走了一种类型的压力，并将其混合成一个类型样本书时，
它不仅存活了五个世纪，而且还跨越了电子排版，其基本思想仍然保持不变。
它在1960年代与Letraset传统工具一起流行，
包括Lorem Ipsum段落包含在最近的桌面出版软件中，例如Aldus PageMaker。
中文的Lorem Ipsum通常是随机生成的，但也可以使用一些实际的文本来代替，

In here we cite @citekeyA
    and here we cite them in text: #citep("citekeyA").
  Note that the above citation should be in _apa_ style but isn't (properly)!

#pagebreak()

= Another Chapter

#import sym: *
#import math: limits
#let d = dot.op
#let implies = sym.arrow.r.double

In here we display some math.
  We want to show that if $#forall x #sym.in #RR " : " x #d 0 = 0$.

*Proof:*\
  $ &x #d 0          &= 0 \
    &x #d (0 + 0)    &= 0 \
    &x #d 0 + x #d 0 &= 0 $

This is true due to $0$ being the additive neutral of $(+)$
    and the distributive law.

#h(1fr) $qed$

== Testing some numbers!

12345678910

+ 0
+ 1
+ 2
+ 3
+ 5
+ 6
+ 7
+ 8
+ 9
+ 10
+ -1
+ 11
+ 1/3

