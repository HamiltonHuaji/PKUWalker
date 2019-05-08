.class Lcn/edu/pku/pkurunner/Settings/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->setuptrigers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    .line 36
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity$1;->this$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 39
    const-string v0, "cn.edu.pku.pkurunner.fileprovider"

    .line 40
    .local v0, "authority":Ljava/lang/String;
    const-string v1, "application/octet-stream"

    .line 41
    .local v1, "type":Ljava/lang/String;
    const-string v2, "\u544a\u8bc9\u4f60\u4eec\u4e00\u70b9\uff0c\u4eba\u751f\u7684\u7ecf\u9a8c"

    .line 43
    .local v2, "title":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity$1;->this$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    invoke-virtual {v3}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 44
    .local v3, "dir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "data.db"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v4, "db":Ljava/io/File;
    iget-object v5, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity$1;->this$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    invoke-virtual {v5}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 46
    .local v5, "uri":Landroid/net/Uri;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v6, "share":Landroid/content/Intent;
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    iget-object v7, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity$1;->this$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    invoke-static {v6, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v3    # "dir":Ljava/io/File;
    .end local v4    # "db":Ljava/io/File;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "share":Landroid/content/Intent;
    goto :goto_0

    .line 50
    :catch_0
    move-exception v3

    .line 51
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Landroid/widget/Toast;

    iget-object v5, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity$1;->this$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    invoke-virtual {v5}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 52
    .local v4, "toast":Landroid/widget/Toast;
    iget-object v5, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity$1;->this$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    invoke-virtual {v5}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 54
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "toast":Landroid/widget/Toast;
    :goto_0
    const/4 v3, 0x0

    return v3
.end method
