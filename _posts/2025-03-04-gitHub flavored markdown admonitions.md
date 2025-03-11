---
title: GitHub Flavored Markdown Admonitions
categories: [Jekyll, GitHub Flavored Markdown Admonitions]
---
[GitHub Pages](https://pages.github.com/)上では，[警告](https://docs.github.com/ja/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#alerts)がレンダリングされません．
[GitHub Flavored Markdown Admonitions](https://github.com/Helveg/jekyll-gfm-admonitions)プラグインを使用するとレンダリングされるようになります．

少し問題がありましたが，先日，よくなりました（[https://github.com/Helveg/jekyll-gfm-admonitions/issues/7](https://github.com/Helveg/jekyll-gfm-admonitions/issues/7)）．
しかし，[Chirpy](https://github.com/cotes2020/jekyll-theme-chirpy)と相性がよくないようです…（[https://github.com/Helveg/jekyll-gfm-admonitions/issues/9](https://github.com/Helveg/jekyll-gfm-admonitions/issues/9)）．
よくなるでしょうか？
早速，よくなりました．

警告の終わりが[引用](https://docs.github.com/ja/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#quoting-text)，GitHub上での警告の終わりと違います（[https://github.com/Helveg/jekyll-gfm-admonitions/pull/8#issuecomment-2696180859](https://github.com/Helveg/jekyll-gfm-admonitions/pull/8#issuecomment-2696180859)）．
試しに，プログラムを書きかえてみました（[https://github.com/manabu-nakamura/jekyll-gfm-admonitions2/blob/main/lib/jekyll-gfm-admonitions.rb](https://github.com/manabu-nakamura/jekyll-gfm-admonitions2/blob/main/lib/jekyll-gfm-admonitions.rb)）．
引用，警告の直後に[見出し](https://docs.github.com/ja/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#headings)がある場合の引用，警告の終わりが気になります．
MarkdownプロセッサとしてGFMを使えば大丈夫ですが，Chirpyでは使えません（[https://manabu-nakamura.github.io/jekyll-gfm-admonitions2/](https://manabu-nakamura.github.io/jekyll-gfm-admonitions2/)，[https://docs.github.com/ja/pages/setting-up-a-github-pages-site-with-jekyll/setting-a-markdown-processor-for-your-github-pages-site-using-jekyll](https://docs.github.com/ja/pages/setting-up-a-github-pages-site-with-jekyll/setting-a-markdown-processor-for-your-github-pages-site-using-jekyll)）．
```markdown
> foo
> bar
  baz
qux

quux
> [!NOTE]
> foo
> bar
  baz
qux

quux
> foo
> bar
# H1
> [!NOTE]
> foo
> bar
# H1
```
> foo
> bar
  baz
qux

quux
> [!NOTE]
> foo
> bar
  baz
qux

quux
> foo
> bar
# H1
> [!NOTE]
> foo
> bar
# H1