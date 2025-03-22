---
title: GitHub Flavored Markdown Admonitions
categories: [Jekyll, GitHub Flavored Markdown Admonitions]
tags: [Jekyll]
---
[GitHub Pages](https://pages.github.com/)上では，[警告](https://docs.github.com/ja/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#alerts)がレンダリングされません．[GitHub Flavored Markdown Admonitions](https://github.com/Helveg/jekyll-gfm-admonitions)プラグインを使用するとレンダリングされるようになります．

少し問題がありましたが，先日，よくなりました（[https://github.com/Helveg/jekyll-gfm-admonitions/issues/7](https://github.com/Helveg/jekyll-gfm-admonitions/issues/7)）．しかし，[Chirpy](https://github.com/cotes2020/jekyll-theme-chirpy)と相性がよくないようです…（[https://github.com/Helveg/jekyll-gfm-admonitions/issues/9](https://github.com/Helveg/jekyll-gfm-admonitions/issues/9)）．よくなるでしょうか？　早速，よくなりました．

警告の終わりが[引用](https://docs.github.com/ja/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#quoting-text)，GitHub上での警告の終わりと違います（[https://github.com/Helveg/jekyll-gfm-admonitions/pull/8#issuecomment-2696180859](https://github.com/Helveg/jekyll-gfm-admonitions/pull/8#issuecomment-2696180859)）．楽に解析するために，試しに，[ジェネレータ](https://jekyllrb-ja.github.io/docs/plugins/generators/)として作成されているGitHub Flavored Markdown Admonitionsプラグインを[コンバータ](https://jekyllrb-ja.github.io/docs/plugins/converters/)として書き直し，[https://manabu-nakamura.github.io/](https://manabu-nakamura.github.io/)で使ってみています（[`jekyll-gfm-admonitions.rb`](https://github.com/manabu-nakamura/jekyll-gfm-admonitions2/blob/main/lib/jekyll-gfm-admonitions.rb)，[`Gemfile`](https://github.com/manabu-nakamura/manabu-nakamura.github.io/blob/main/Gemfile)，[`_config.yml`](https://github.com/manabu-nakamura/manabu-nakamura.github.io/blob/main/_config.yml)）．コンバータはページ全体にアクセスできないようですが，実害はないようです．引用，警告の直後に[見出し](https://docs.github.com/ja/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#headings)がある場合の引用，警告の終わりが気になります．MarkdownプロセッサとしてkramdownでなくGFMを使えば大丈夫ですが，Chirpyでは使えません（[https://manabu-nakamura.github.io/jekyll-gfm-admonitions2/](https://manabu-nakamura.github.io/jekyll-gfm-admonitions2/)，[https://docs.github.com/ja/pages/setting-up-a-github-pages-site-with-jekyll/setting-a-markdown-processor-for-your-github-pages-site-using-jekyll](https://docs.github.com/ja/pages/setting-up-a-github-pages-site-with-jekyll/setting-a-markdown-processor-for-your-github-pages-site-using-jekyll)）．

警告の中に引用，警告が入れ子になっている場合，まじめに解析するのは面倒です．しかし，まじめに解析しなくても，実害がありません．少しだけ書きかえました．
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

> [!NOTE]
> > [!NOTE]
> > foo
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

> [!NOTE]
> > [!NOTE]
> > foo