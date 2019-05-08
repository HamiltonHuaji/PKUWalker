# Change Version Info

## Principle

在`cn/edu/pku/pkurunner/Settings/SettingsActivity.java,line:127`处可以看到已有版本信息`1.2.4`.而函数`onCreate`会依次调用`a();b();c();h();i();`.因此修改该段字符串即可修改显示的版本信息.
对应的smali文件为`cn/edu/pku/pkurunner/Settings/SettingsActivity.smali,line:1389`.
将

```smali
    const-string v1, "v1.2.4"
```

改为

```smali
    const-string v1, "v1.2.4,不知道高到哪里去了"
```

即可