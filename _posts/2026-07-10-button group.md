---
title: Button Group
categories: [Android, Jetpack Compose]
tags: [Android, Jetpack Compose]
---
[ボタングループ](https://m3.material.io/components/button-groups/overview)が分かりにくいです．

1⃣選択されたボタンの角が四角く，選択されていないボタンの角が丸いボタングループだけでなく，2⃣選択されたボタンの角が丸く，ボタングループの端の角が丸く，それ以外の角が四角いボタングループ（round connected button group），3⃣選択されたボタンの角が丸く，選択されていないボタンの角が四角いボタングループ（square connected button group）もあるようです（[https://m3.material.io/components/button-groups/specs](https://m3.material.io/components/button-groups/specs)）．3⃣選択されたボタンの角が丸く，選択されていないボタンの角が四角いボタングループはまだ実装されていないようです（Compose Material 3の最新版（[1.5.0-alpha23](https://developer.android.com/jetpack/androidx/releases/compose-material3#1.5.0-alpha23)））．

<ins>standard button group</ins>：

選択されたボタンと隣接するボタンの幅が一時的に変化します（[https://m3.material.io/components/button-groups/specs](https://m3.material.io/components/button-groups/specs)）．

1⃣選択されたボタンの角が四角く，選択されていないボタンの角が丸いボタングループです．

```kotlin
Row {
    val themes = listOf(
        "0",
        "1",
        "2"
    )
    var selectedIndex by rememberSaveable {
        mutableIntStateOf(
            0
        )
    }
    ButtonGroup(
        {
        }
    ) {
        themes.forEachIndexed { index, theme ->
            toggleableItem(
                selectedIndex == index,
                theme,
                {
                    selectedIndex = index
                }
            )
        }
    }
}
```

<ins>connected button group</ins>：

ボタングループをページの幅いっぱいに広げます（[https://m3.material.io/components/button-groups/guidelines](https://m3.material.io/components/button-groups/guidelines)）．

shapesを設定しないと1⃣選択されたボタンの角が四角く，選択されていないボタンの角が丸いボタングループになり，shapesを設定すると2⃣選択されたボタンの角が丸く，ボタングループの端の角が丸く，それ以外の角が四角いボタングループになります．

```kotlin
Row(
    Modifier.fillMaxWidth(),
    Arrangement.spacedBy(
        ButtonGroupDefaults.ConnectedSpaceBetween
    )
) {
    val themes = listOf(
        "0",
        "1",
        "2"
    )
    var selectedIndex by rememberSaveable {
        mutableIntStateOf(
            0
        )
    }
    themes.forEachIndexed { index, theme ->
        ToggleButton(
            selectedIndex == index,
            {
                selectedIndex = index
            },
            Modifier.weight(
                1f
            ),
            shapes = when (index) {//設定しないと1⃣，設定すると2⃣
                0 -> ButtonGroupDefaults.connectedLeadingButtonShapes()
                themes.lastIndex -> ButtonGroupDefaults.connectedTrailingButtonShapes()
                else -> ButtonGroupDefaults.connectedMiddleButtonShapes()
            }
        ) {
            Text(
                theme
            )
        }
    }
}
```

[https://github.com/manabu-nakamura/appc/blob/main/counter/src/main/java/com/github/manabu_nakamura/counter/MainActivity.kt](https://github.com/manabu-nakamura/appc/blob/main/counter/src/main/java/com/github/manabu_nakamura/counter/MainActivity.kt)

テーマの選択にはconnected button groupがすすめられているようですが，standard button groupと比べ，選択されていないボタンが分かりにくいです（[https://m3.material.io/components/button-groups/guidelines](https://m3.material.io/components/button-groups/guidelines)）．