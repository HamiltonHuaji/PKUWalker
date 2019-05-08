# Remove Vbox Check

## Principle

在拆包并反编译后的`cn/edu/pku/pkurunner/MainActivity.java,line:390`处的函数即为判断Vbox的核心代码.
其原理为判断`/dev`目录下是否有符合`vbox.*`这一pattern的设备文件.如果有,该函数返回`true`.
修改对应的`cn/edu/pku/pkurunner/MainActivity.smali,line:2110`即可.
可推测得返回true对应

```smali
    const/4 v0, 0x1
    return v0
```

故修改为

```smali
    const/4 v0, 0x0
    return v0
```

即可.