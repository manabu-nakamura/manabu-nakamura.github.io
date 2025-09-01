---
title: Material 3 Expressive
categories: [Android, Material Components for Android]
tags: [Android, Material Components for Android, Material 3 Expressive]
---
新しいTheme.Material3Expressive.*テーマが開発されています（[https://m3.material.io/blog/building-with-m3-expressive](https://m3.material.io/blog/building-with-m3-expressive)）．

鮮やかな色，アニメーションがいい感じです．

アプリなどの背景色（colorSurface）とモーダルでない（スクリムがない）シートの背景色（colorSurfaceContainerLow）の差が小さいのが気になっています．私は，モーダルでない（スクリムがない）シートの背景色をcolorSurfaceContainerHighestにしています．指針を示して欲しいです．[https://m3.material.io/components/bottom-sheets/specs](https://m3.material.io/components/bottom-sheets/specs)がおかしいようですが…（[https://github.com/material-components/material-components-android/issues/4792](https://github.com/material-components/material-components-android/issues/4792)）．

よく見ると，Android 12ぐらいから設定，ロックNo.を入力するインタフェースなどがどんどんexpressiveになっていますね．

Material 3 ExpressiveはMaterial Components for Android 1.14.0-alpha01以降で使用できます（1.13.0-alpha11～1.13.0-alpha13で一時的に使用できました）．

Material 3 Expressiveで廃止される予定です：

- [segmented button](https://github.com/material-components/material-components-android/blob/master/docs/components/ToggleButtonGroup.md)
- [navigation drawer](https://github.com/material-components/material-components-android/blob/master/docs/components/NavigationDrawer.md)

Material 3 Expressiveに関係なく（Material 3でも）廃止される予定です：

- [bottom app bar](https://github.com/material-components/material-components-android/blob/master/docs/components/BottomAppBar.md)

Material 3 ExpressiveをサポートしないMaterial Components for Android 1.13.0-rc01でも使用できます：

- [docked toolbar](https://github.com/material-components/material-components-android/blob/master/docs/components/DockedToolbar.md)
- [floating toolbar](https://github.com/material-components/material-components-android/blob/master/docs/components/FloatingToolbar.md)
- [split button](https://github.com/material-components/material-components-android/blob/master/docs/components/SplitButton.md)

Material Components for Android 1.13.0-rc01では使用できません：

- [overflow linear layout](https://github.com/material-components/material-components-android/blob/master/docs/components/OverflowLinearLayout.md)

分かりにくいです…．