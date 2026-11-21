---
title: Jetpack Compose
categories: [Android, Jetpack Compose]
tags: [Android, Jetpack Compose]
---
[1.6.0-alpha01](https://developer.android.com/jetpack/androidx/releases/compose-material3#1.6.0-alpha01)でモーダルボトムシートの動作（モーダルボトムシートの高さ）が変わっています．ComposeMaterial3Flags.isBottomSheetPartiallyExpandedDeterministicEnabledをfalseにすれば元に戻せます．モーダルボトムシートを閉じるために戻るボタンを2回押す必要がある場合がありましたが，改善されました．

[1.5.0](https://developer.android.com/jetpack/androidx/releases/compose-material3#1.5.0)になりました．モーダルボトムシートを閉じるために戻るボタンを2回押す必要がある場合があります．[1.5.0-alpha21](https://developer.android.com/jetpack/androidx/releases/compose-material3#1.5.0-alpha21)以降，ComposeMaterial3Flags.isBottomSheetPartiallyExpandedDeterministicEnabledをfalseにすれば改善されると思います．

[1.5.0-alpha26](https://developer.android.com/jetpack/androidx/releases/compose-material3#1.5.0-alpha26)でElevatedToggleButtonDefaults，FilledTonalToggleButtonDefaults，OutlinedToggleButtonDefaultsが追加されています（ToggleButtonDefaults.elevatedToggleButtonColors()が<ins>Elevated</ins>ToggleButtonDefaults.elevatedToggleButtonColors()，…になります．さらに，[1.5.0-alpha27](https://developer.android.com/jetpack/androidx/releases/compose-material3#1.5.0-alpha27)でElevatedToggleButtonDefaults.<ins>elevatedToggleButton</ins>Colors()がElevatedToggleButtonDefaults.colors()，…に変更されています）．ElevatedButtonDefaultsとかも追加されるんでしょうか？　[1.5.0-alpha25](https://developer.android.com/jetpack/androidx/releases/compose-material3#1.5.0-alpha25)でTonalToggleButtonが<ins>Filled</ins>TonalToggleButtonに変更されています．分かりやすいです．