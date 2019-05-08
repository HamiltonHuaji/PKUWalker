#!/usr/bin/env python3

import re

crack_code=r'''
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "resultIntent"    # Landroid/content/Intent;

    .line 47
    if-nez p1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 48
    new-instance v0, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "toast":Landroid/widget/Toast;
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 51
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 52
    .local v2, "input":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 53
    .local v3, "dir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "data.db"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .local v4, "f":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 55
    .local v5, "output":Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 57
    .local v6, "bt": [B
    :goto_0
    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "c":I
    const/4 v9, 0x0

    if-lez v7, :cond_0

    .line 58
    invoke-virtual {v5, v6, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 61
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    # .line 62
    # invoke-static {v9}, Ljava/lang/System;->exit(I)V
    .line 63
    invoke-static {}, Landroid/os/Process;->myPid()I
    move-result v7
    invoke-static {v7}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v3    # "dir":Ljava/io/File;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "output":Ljava/io/FileOutputStream;
    .end local v6    # "bt":[B
    .end local v8    # "c":I
    goto :goto_1

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 47
    .end local v0    # "toast":Landroid/widget/Toast;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    nop

    .line 67
    :goto_1
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->finish()V

    .line 68
    return-void
.end method

'''
setup_trig=r'''
.end method

.method private setup_triggers()V
    .locals 2

    .line 69
    const-string v0, "pref_export_db"

    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/Settings/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity$1;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    const-string v0, "pref_import_db"

    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/Settings/SettingsActivity$2;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity$2;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 107
    return-void
.end method
'''

work = {
    "remove vbox check":{
        "product/pkurunner-v1.2.4_res/smali/cn/edu/pku/pkurunner/MainActivity.smali":{
            (r"const/4 v0, 0x1",r"const/4 v0, 0x0"):[
                r"\.method private static k\(\)Z",
                r"Ljava/util/regex/Matcher;\->matches\(\)Z",
                r"move-result v5", 
                r"if-eqz v5, :cond_1"
            ]
        }
    },
    "inject crack ui":{
        "product/pkurunner-v1.2.4_res/res/xml/app_settings.xml":{
            (r"</PreferenceCategory>",'''</PreferenceCategory>\n\t<PreferenceCategory android:title="@string/p_setting_crack">\n\t\t<Preference android:title="@string/p_settings_crack_export" android:key="pref_export_db"/>\n\t\t<Preference android:title="@string/p_settings_crack_import" android:key="pref_import_db"/>\n\t</PreferenceCategory>'''):[
                r"</PreferenceCategory>"
            ]
        },
        "product/pkurunner-v1.2.4_res/res/values/strings.xml":{
            (r"<resources>",'<resources>\n    <string name="p_setting_crack">破解功能</string>\n    <string name="p_settings_crack_export">导出 data.db 至 /sdcard </string>\n    <string name="p_settings_crack_import">从 /sdcard 导入 data.db </string>'):[]
        }
    },
    "change easter egg":{
        "product/pkurunner-v1.2.4_res/res/values/arrays.xml":{
            (r"<item>没</item>","<item>没</item><item>竟然被你发现了,要不要来 https://github.com/HamiltonHuaji/PKUWalker 看看?</item>"):[]
        }
    },
    "inject crack code":{
        "product/pkurunner-v1.2.4_res/smali/cn/edu/pku/pkurunner/Settings/SettingsActivity.smali":{
            (r"\Z",crack_code):[]
        }
    },
    "inject trigger":{
        "product/pkurunner-v1.2.4_res/smali/cn/edu/pku/pkurunner/Settings/SettingsActivity.smali":{
            ("\\.end method\n",setup_trig):[".end method\n\n.method private i\(\)V","\\.end method"]
        }
    },
    "inject onCreate":{
        "product/pkurunner-v1.2.4_res/smali/cn/edu/pku/pkurunner/Settings/SettingsActivity.smali":{
            ("Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->i\(\)V\n",r"Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->i()V"+"\n   "+r"invoke-direct {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->setup_triggers()V"):[
                r"\.method protected onCreate\(Landroid/os/Bundle;\)V",
                r"Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->i\(\)V"
            ]
        }
    }
}

def insert(origin,new,offset):
    return origin[:offset]+new+origin[offset:]

def search(origin,pattern,start):
    span = re.search(pattern,origin[start:])
    if span == None:
        print(pattern)
        raise Exception
    else:
        return span.span()[0]+start

def do_step(todo,place,origin):
    start = 0
    for p in place:
        print("searching for "+p)
        start = search(origin, p, start)
    print(f"changing {todo[0]}")
    return re.sub(todo[0],todo[1],origin,count = 1)

def do_steps(steps,origin):
    temp = origin
    for key in steps:
        temp = do_step(key,steps[key],temp)
    return temp

def do_mod(mod):
    for f in mod:
        print("working on file :"+f)
        fd = open(f,'r')
        origin = fd.read()
        fd.close()

        fd = open(f,'w')
        fd.write(do_steps(mod[f], origin))
        fd.close()

def do_mods(mods):
    for key in mods:
        print(key)
        do_mod(mods[key])
    print("done")

do_mods(work)