---
title: GitHub Flavored Markdown Admonitions
categories: [GitHub Pages, GitHub Flavored Markdown Admonitions]
tags: [GitHub Pages, GitHub Flavored Markdown Admonitions, Chirpy]
---
[GitHub Pages](https://pages.github.com/)上では，[警告](https://docs.github.com/ja/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#alerts)はレンダリングされず，[引用](https://docs.github.com/ja/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#quoting-text)として扱われます．
```markdown
> [!NOTE]
> foo
```
⬇️
<blockquote>
[!NOTE] foo
</blockquote>

[GitHub Flavored Markdown Admonitions](https://github.com/Helveg/jekyll-gfm-admonitions)を使用するとレンダリングされるようになります．
```markdown
> [!NOTE]
> foo
```
⬇️
> [!NOTE]
> foo

少し問題がありましたが，よくなりました（[https://github.com/Helveg/jekyll-gfm-admonitions/issues/7](https://github.com/Helveg/jekyll-gfm-admonitions/issues/7)，[https://github.com/Helveg/jekyll-gfm-admonitions/issues/9](https://github.com/Helveg/jekyll-gfm-admonitions/issues/9)）．

警告の終わりが引用，GitHub上での警告の終わりと違います（[https://github.com/Helveg/jekyll-gfm-admonitions/pull/8#issuecomment-2696180859](https://github.com/Helveg/jekyll-gfm-admonitions/pull/8#issuecomment-2696180859)）．楽に解析するために，試しに，[ジェネレータ](https://jekyllrb-ja.github.io/docs/plugins/generators/)として作成されているGitHub Flavored Markdown Admonitionsを[コンバータ](https://jekyllrb-ja.github.io/docs/plugins/converters/)として書き直し，日本語にし，ここで使ってみています（[jekyll-gfm-admonitions.rb](https://github.com/manabu-nakamura/jekyll-gfm-admonitions2/blob/main/lib/jekyll-gfm-admonitions.rb)，[Gemfile](https://github.com/manabu-nakamura/manabu-nakamura.github.io/blob/main/Gemfile)，[_config.yml](https://github.com/manabu-nakamura/manabu-nakamura.github.io/blob/main/_config.yml)）．コンバータはページ全体にアクセスできないようですが，実害はないようです．引用，警告の直後に[見出し](https://docs.github.com/ja/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#headings)がある場合の引用，警告の終わりが気になります．Markdownプロセッサとして[kramdown](https://github.com/gettalong/kramdown)でなくGFMを使えば大丈夫ですが，[Chirpy](https://github.com/cotes2020/jekyll-theme-chirpy)では使えません（[https://manabu-nakamura.github.io/jekyll-gfm-admonitions2/](https://manabu-nakamura.github.io/jekyll-gfm-admonitions2/)，[https://docs.github.com/ja/pages/setting-up-a-github-pages-site-with-jekyll/setting-a-markdown-processor-for-your-github-pages-site-using-jekyll](https://docs.github.com/ja/pages/setting-up-a-github-pages-site-with-jekyll/setting-a-markdown-processor-for-your-github-pages-site-using-jekyll)）．
```markdown
> [!NOTE]
> NOTE

> [!TIP]
> TIP

> [!IMPORTANT]
> IMPORTANT

> [!WARNING]
> WARNING

> [!CAUTION]
> CAUTION
```
⬇️
> [!NOTE]
> NOTE

> [!TIP]
> TIP

> [!IMPORTANT]
> IMPORTANT

> [!WARNING]
> WARNING

> [!CAUTION]
> CAUTION

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

> foo
> > [!NOTE]
> > bar
```
⬇️
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

> foo
> > [!NOTE]
> > bar

余談ですが，Chirpyには[プロンプト](https://chirpy.cotes.page/posts/write-a-new-post/#prompts)もあります．
```markdown
> tip
{: .prompt-tip }
> info
{: .prompt-info }
> warning
{: .prompt-warning }
> danger
{: .prompt-danger }
```
⬇️
> tip
{: .prompt-tip }
> info
{: .prompt-info }
> warning
{: .prompt-warning }
> danger
{: .prompt-danger }