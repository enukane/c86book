C86 Book
=======

## なんだこれは

C86, 2014夏コミックマーケットで頒布した「キャプチャリング 802.11 : ひたすら収集するお話」の
原稿データになります。

印刷につかった原稿(pdf)は含まれていません。
ReVIEWのソースからコンパイルして生成してください。

## Requirements

- Ruby
- [Re:VIEW] (https://github.com/kmuto/review): flexible document format/conversion system.

To install required softwares, please type as follows after installing ruby environemt:

    gem install review

## ReVIEWへのパッチ

デフォルトのRe:VIEWで生成したpdfでは, 目次の文字色が赤くなってしまうため,
本書を生成するにあたっては以下の様なパッチを適用しました。

- Change TOC color from red to black (${REVIEWPATH}/lib/review/review.tex.erb)
```diff
@@ -41,6 +41,7 @@
 \usepackage[dvipdfm,bookmarks=true,bookmarksnumbered=true,colorlinks=true,%
             pdftitle={<%= values["booktitle"] %>},%
             pdfauthor={<%= values["aut"] %>}]{hyperref}
+\hypersetup{ linkcolor=black }

 \newenvironment{reviewimage}{%
   \begin{figure}[H]
```

## How to Build
このソースのあるディレクトリでmakeコマンドを叩けば```summer2014.pdf```ができあがるはず！

## 内容物
ReVIEWで必要となるimageやsty以外の内容物について

- Makefile : pdfを生成するにあたりでっち上げたMakefile. openはOS X専用.
- coverpage.pdf : 物理媒体用に印刷して表紙として使ったデータ
- coverpage/ : 上記coverpage.pdfの元となる表紙データ(OmniGraffle形式). ボツ案になったbad_coverpage.graffleを含む
- images_data/ : imageディレクトリにある画像の元データ(白黒加工前等)
