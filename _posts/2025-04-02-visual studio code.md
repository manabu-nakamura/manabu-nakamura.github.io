---
title:  Visual Studio Code
categories: [Visual Studio Code]
tags: [Visual Studio Code, Code - OSS]
---
[Code - OSS](https://github.com/microsoft/vscode)はオープンソース版の[Visual Studio Code](https://code.visualstudio.com/)です．Visual Studio Codeに気になることがあったので，Code - OSSのソースを読み，ビルドしてみました（[https://github.com/microsoft/vscode/issues/245194](https://github.com/microsoft/vscode/issues/245194)，[https://github.com/microsoft/vscode/wiki/How-to-Contribute](https://github.com/microsoft/vscode/wiki/How-to-Contribute)）．
```batchfile
npm config edit

git clone https://github.com/manabu-nakamura/vscode.git
cd vscode
npm install
npm run compile
.\scripts\code.bat
```
しかし，表示を英語以外にする[Visual Studio Code Language Pack](https://github.com/microsoft/vscode-loc)が動きません（[https://github.com/microsoft/vscode/issues/245119](https://github.com/microsoft/vscode/issues/245119)）．フルビルドしなくてはいけないことを教えてもらいました．
```batchfile
npm run gulp vscode-win32-x64
"..\VSCode-win32-x64\Code - OSS.exe"
```
Visual Studio Code Language Packを作成するために，[Visual Studio Code Extension manager](https://github.com/microsoft/vscode-vsce)を使用します（[https://github.com/Microsoft/vscode-loc/wiki/How-to-create-language-pack-extension](https://github.com/Microsoft/vscode-loc/wiki/How-to-create-language-pack-extension)）．
```batchfile
npm install -g @vscode/vsce

cd vscode-loc-main\i18n\vscode-language-pack-ja
vsce package
```
勉強になりました．Code - OSSだけでなく，[Electron](https://github.com/electron/electron)の勉強もしてみようかと思っています．

今回，対応が本当に早く，親切でした．