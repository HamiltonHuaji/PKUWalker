# Inject Export & Import Function

## Principle

将文件直接写入`/sdcard`是一种麻烦的方法.这是因为需要验证文件是否存在以及是否有权限并进行相应的写入.
更好的做法是在导出时通过`Intent`将文件在应用之间共享,在导入时调用系统文件管理器选择文件.这将大大减少所需的代码量.
从`jd-gui`反编译得到的Java代码中可以看到,为`SettingsActivity`中的`Preference`设置事件监听器的代码应为

```java
    findPreference("pref_crack_export").setOnPreferenceClickListener((preference)->{return false;});
```

由于不好直接插入Java代码,先建立一个包含目标代码的Android项目,反编译得到smali并插入.代码见`PKUWalkerHost`目录.

得到smali后将其插入`cn/edu/pku/pkurunner/SettingsActivity.smali`,并在`onCreate`中调用.
至此,App所需功能已添加完毕.