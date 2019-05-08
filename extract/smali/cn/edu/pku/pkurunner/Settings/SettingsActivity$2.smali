.class Lcn/edu/pku/pkurunner/Settings/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->setup_triggers()V
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

    .line 91
    iput-object p1, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity$2;->this$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .line 94
    const-string v0, "*/*"

    .line 95
    .local v0, "type":Ljava/lang/String;
    const-string v1, "\u4f60\u4eec\u554a,\u8fd8\u8981\u5b66\u4e60\u4e00\u4e2a"

    .line 96
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Landroid/widget/Toast;

    iget-object v3, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity$2;->this$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    invoke-virtual {v3}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 97
    .local v2, "toast":Landroid/widget/Toast;
    iget-object v3, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity$2;->this$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    invoke-virtual {v3}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u5bfc\u5165\u6587\u4ef6\u540eApp\u9700\u8981\u81ea\u52a8\u9000\u51fa.\u8bf7\u624b\u52a8\u91cd\u542f\u540e\u9009\u62e9\u65e7\u7528\u6237"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 99
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.GET_CONTENT"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v4, "share":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v6, "android.intent.category.OPENABLE"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v6, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity$2;->this$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    invoke-virtual {v6, v4, v3}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v4    # "share":Landroid/content/Intent;
    goto :goto_0

    .line 103
    :catch_0
    move-exception v4

    .line 104
    .local v4, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity$2;->this$0:Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    invoke-virtual {v6}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 106
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    return v3
.end method
