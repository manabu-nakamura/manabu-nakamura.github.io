---
title: Visual Studio Code
categories: [Visual Studio Code]
tags: [Visual Studio Code, Visual Studio Code Insiders, Code - OSS]
---
[Visual Studio Code](https://code.visualstudio.com/) 1.99.0で「右端での折り返し」をオンにしている時，行末に日本語を入力すると，入力中の文字列がおかしくなります（[https://github.com/microsoft/vscode/issues/204816](https://github.com/microsoft/vscode/issues/204816)）．editor.experimentalEditContextEnabledをオンにすると改善されます（[https://code.visualstudio.com/updates/v1_94#_experimental-edit-context](https://code.visualstudio.com/updates/v1_94#_experimental-edit-context)）．[Visual Studio Code Insiders](https://code.visualstudio.com/insiders/)，[Code - OSS](https://github.com/microsoft/vscode)ではeditor.experimentalEditContextEnabledは既にデフォルトでオンになっているようです．