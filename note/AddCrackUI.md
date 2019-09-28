# Add Crack UI

## Principle

`res/xml/app_settings.xml`保存了有关设置页面的界面信息.修改它即可在设置界面上加入我们需要的按钮.
在适当的地方与其他条目并列地放置一个`PreferenceCategory`,并将其中的内容填写如下:

```xml
    <PreferenceCategory android:title="@string/p_setting_crack">
        <Preference android:title="@string/p_settings_crack_export" android:key="pref_export_db"/>
        <Preference android:title="@string/p_settings_crack_import" android:key="pref_import_db"/>
    </PreferenceCategory>
```

与此对应,`res/values/string.xml`的内容也应当修改,以确保上述代码中引用的`@string`中资源可用.
添加条目如下

```xml
    <string name="p_setting_crack">破解功能</string>
    <string name="p_settings_crack_export">导出 data.db 至 /sdcard </string>
    <string name="p_settings_crack_import">从 /sdcard 导入 data.db </string>
```

即可.