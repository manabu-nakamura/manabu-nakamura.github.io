---
title: DatePicker and TimePicker
categories: [Android, Material Components for Android]
tags: [Android, Material Components for Android, DatePicker, TimePicker]
---
[ダイアログ](https://developer.android.com/develop/ui/views/components/dialogs?hl=ja)は，[`DialogFragment`](https://developer.android.com/reference/androidx/fragment/app/DialogFragment)とともに使用するべきです．端末の回転後，`DialogFragment`のインスタンスが自動的に再生成され，[`onCreateDialog`](https://developer.android.com/reference/androidx/fragment/app/DialogFragment#onCreateDialog(android.os.Bundle))()メソッドが呼び出され，ダイアログのインスタンスも再生成されます．その際に，イベントリスナー1⃣なども設定されます．
```java
public class MainActivity extends AppCompatActivity {
    public void foo(MenuItem menuItem) {
        new DialogFragment2().show(getSupportFragmentManager(), "");
    }

    public static class DialogFragment2 extends DialogFragment {
        @NonNull
        @Override
        public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
            return new MaterialAlertDialogBuilder(requireContext())
                    .setPositiveButton("...",  (dialog, which) -> {
                        ...
                    })//1⃣
                    .create();
        }
    }
}
```
[`MaterialDatePicker`](https://developer.android.com/reference/com/google/android/material/datepicker/MaterialDatePicker)，[`MaterialTimePicker`](https://developer.android.com/reference/com/google/android/material/timepicker/MaterialTimePicker)は，日付，時刻の選択ツールで，`DialogFragment`をextendsしています．端末の回転後，日付，時刻選択ツールのインスタンスは自動的に再生成されます．その際に，イベントリスナー2⃣などは設定されません．アクティビティが（再）生成された際に，起動されている日付，時刻選択ツールにイベントリスナー3⃣などを設定することができます（[https://github.com/material-components/material-components-android/issues/1688](https://github.com/material-components/material-components-android/issues/1688)，[https://github.com/material-components/material-components-android/issues/4498](https://github.com/material-components/material-components-android/issues/4498)）．もっといい方法はないでしょうか？　[`View`](https://developer.android.com/reference/android/view/View)をextendsする`MaterialDatePicker`，`MaterialTimePicker`があればいいですね（[https://github.com/material-components/material-components-android/issues/3429](https://github.com/material-components/material-components-android/issues/3429)，[https://github.com/material-components/material-components-android/issues/1799](https://github.com/material-components/material-components-android/issues/1799)）．
```java
public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ...
        Fragment fragment = getSupportFragmentManager().findFragmentByTag("MaterialDatePicker");
        if (fragment instanceof MaterialDatePicker<?>) {
            ((MaterialDatePicker<?>)fragment).addOnPositiveButtonClickListener(selection -> {
                ...
            });//3⃣
        }
    }

    public void bar(MenuItem menuItem) {
        MaterialDatePicker<?> materialDatePicker = MaterialDatePicker.Builder.datePicker().build();
        materialDatePicker.addOnPositiveButtonClickListener(selection -> {
            ...
        });//2⃣
        materialDatePicker.show(getSupportFragmentManager(), "MaterialDatePicker");
    }
}
```