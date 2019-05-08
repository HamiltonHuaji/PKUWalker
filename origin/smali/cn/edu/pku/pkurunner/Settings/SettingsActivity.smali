.class public Lcn/edu/pku/pkurunner/Settings/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->b:I

    return-void
.end method

.method private static synthetic a(Lcom/dropbox/core/v2/DbxClientV2;)Lcom/dropbox/core/v2/users/FullAccount;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxClientV2;->users()Lcom/dropbox/core/v2/users/DbxUserUsersRequests;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;->getCurrentAccount()Lcom/dropbox/core/v2/users/FullAccount;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lcom/dropbox/core/v2/DbxClientV2;Lcom/dropbox/core/v2/users/FullAccount;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Lcom/dropbox/core/v2/DbxClientV2;->users()Lcom/dropbox/core/v2/users/DbxUserUsersRequests;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;->getSpaceUsage()Lcom/dropbox/core/v2/users/SpaceUsage;

    move-result-object p0

    .line 166
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Data;->uploadDatabaseToDropbox(Landroid/content/Context;Lcom/dropbox/core/v2/DbxClientV2;)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 191
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a:Landroid/app/ProgressDialog;

    .line 192
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 193
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a:Landroid/app/ProgressDialog;

    const-string v1, "Uploading..."

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 194
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 195
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 196
    iget-object p1, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    const/4 p1, 0x1

    .line 197
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    aget-object p1, v0, v1

    return-object p1
.end method

.method private a(Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;)Ljava/lang/String;
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private a()V
    .locals 2

    const-string v0, "pref_name"

    .line 87
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 88
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 90
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->isOffline()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 91
    new-instance v1, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$9javiZlNHtTG3maD0ThJSShXHoc;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$9javiZlNHtTG3maD0ThJSShXHoc;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private synthetic a(Landroid/preference/Preference;Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x3

    .line 169
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/dropbox/core/v2/users/FullAccount;

    .line 171
    invoke-virtual {v1}, Lcom/dropbox/core/v2/users/FullAccount;->getName()Lcom/dropbox/core/v2/users/Name;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/users/Name;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/dropbox/core/v2/users/SpaceUsage;

    .line 172
    invoke-virtual {v1}, Lcom/dropbox/core/v2/users/SpaceUsage;->getUsed()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcn/edu/pku/pkurunner/Storage/StorageUtil;->sizeToReadableString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/dropbox/core/v2/users/SpaceUsage;

    .line 173
    invoke-virtual {p2}, Lcom/dropbox/core/v2/users/SpaceUsage;->getAllocation()Lcom/dropbox/core/v2/users/SpaceAllocation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dropbox/core/v2/users/SpaceAllocation;->getIndividualValue()Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;->getAllocated()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcn/edu/pku/pkurunner/Storage/StorageUtil;->sizeToReadableString(J)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const p2, 0x7f0f011e

    .line 169
    invoke-virtual {p0, p2, v0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic a(Landroid/preference/Preference;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p2, "Successfully changed gender"

    const/4 v0, 0x0

    .line 117
    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 118
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object p2

    invoke-virtual {p2}, Lcn/edu/pku/pkurunner/Model/User;->getGender()I

    move-result p2

    invoke-direct {p0, p2}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object p2

    invoke-virtual {p2}, Lcn/edu/pku/pkurunner/Model/User;->getGender()I

    move-result p2

    invoke-direct {p0, p2}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p3, "Successfully changed name"

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->show()V

    .line 98
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Landroid/preference/Preference;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 174
    instance-of v0, p2, Lcom/dropbox/core/NetworkIOException;

    if-eqz v0, :cond_0

    const p2, 0x7f0f011c

    .line 175
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 177
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 273
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->finish()V

    return-void
.end method

.method private synthetic a(Lcom/dropbox/core/v2/files/FileMetadata;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a:Landroid/app/ProgressDialog;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully updated ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/FileMetadata;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcn/edu/pku/pkurunner/Storage/StorageUtil;->sizeToReadableString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic a(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Really upload database (will overwrite remote file)?"

    .line 184
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$SrAoUMQphuvIp4GKD1vwi0aodQg;

    invoke-direct {v2, p1}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$SrAoUMQphuvIp4GKD1vwi0aodQg;-><init>(Lio/reactivex/ObservableEmitter;)V

    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Confirm"

    new-instance v2, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$O1HpzfLMOGrxN36BdM85Go5szy8;

    invoke-direct {v2, p1}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$O1HpzfLMOGrxN36BdM85Go5szy8;-><init>(Lio/reactivex/ObservableEmitter;)V

    .line 187
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static synthetic a(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 187
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->f()V

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    instance-of v0, p1, Lcn/edu/pku/pkurunner/Storage/OperationCancelException;

    if-eqz v0, :cond_0

    const-string p1, "Operation dismissed."

    .line 208
    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Something went wrong "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 211
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic a(Landroid/preference/ListPreference;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 259
    check-cast p3, Ljava/lang/String;

    .line 260
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 261
    invoke-static {}, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->values()[Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    move-result-object p3

    aget-object p2, p3, p2

    invoke-static {p2}, Lcn/edu/pku/pkurunner/Data;->setSpeedUnitPreference(Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;)V

    .line 262
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getSpeedUnitPreference()Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    move-result-object p2

    invoke-direct {p0, p2}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic a(Landroid/preference/Preference;)Z
    .locals 1

    .line 239
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic a(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 111
    check-cast p2, Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    .line 113
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v2

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcn/edu/pku/pkurunner/Model/User;->setGender(I)V

    .line 114
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->saveUserToDatabase()Lio/reactivex/Observable;

    move-result-object p2

    .line 115
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v1, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$Kh6T2GNnMKwjZ8LVPSv6pRqjSG8;

    invoke-direct {v1, p0, p1}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$Kh6T2GNnMKwjZ8LVPSv6pRqjSG8;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/Preference;)V

    sget-object p1, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;->INSTANCE:Lcn/edu/pku/pkurunner/Settings/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;

    .line 116
    invoke-virtual {p2, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return v0
.end method

.method private synthetic a(Lcom/dropbox/core/v2/DbxClientV2;Landroid/preference/Preference;)Z
    .locals 1

    .line 183
    new-instance p2, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$KwaCTkfvszfHfjUbdMuXvZM4MCw;

    invoke-direct {p2, p0}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$KwaCTkfvszfHfjUbdMuXvZM4MCw;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;)V

    invoke-static {p2}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p2

    .line 189
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$9V7w6Iqh4VouywAcnf8zeINtYCg;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$9V7w6Iqh4VouywAcnf8zeINtYCg;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;)V

    .line 190
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p2

    .line 199
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$rzOiOEDXhyBCmtshoSQ8e9ZG1MM;

    invoke-direct {v0, p0, p1}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$rzOiOEDXhyBCmtshoSQ8e9ZG1MM;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Lcom/dropbox/core/v2/DbxClientV2;)V

    .line 200
    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 201
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$bxT-yGaxVfz9flavpVnbU9ZIo5I;

    invoke-direct {p2, p0}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$bxT-yGaxVfz9flavpVnbU9ZIo5I;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;)V

    new-instance v0, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$5yXGVOprINrfBOYnhp6SKloYHMA;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$5yXGVOprINrfBOYnhp6SKloYHMA;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;)V

    .line 202
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic a([Ljava/lang/String;Landroid/preference/Preference;)Z
    .locals 2

    .line 246
    iget p2, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->b:I

    array-length v0, p1

    const/4 v1, 0x1

    if-ge p2, v0, :cond_0

    .line 247
    iget p2, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->b:I

    aget-object p1, p1, p2

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 248
    iget p1, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->b:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->b:I

    :cond_0
    return v1
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    aget-object p1, v0, v1

    return-object p1
.end method

.method private b(Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;)Ljava/lang/String;
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private b()V
    .locals 2

    const-string v0, "pref_gender"

    .line 106
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 107
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->getGender()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->getGender()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 109
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->isOffline()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 110
    new-instance v1, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$bu_LuEefUEoNT6SFEvCUVAIhJyc;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$bu_LuEefUEoNT6SFEvCUVAIhJyc;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private static synthetic b(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 186
    new-instance p1, Lcn/edu/pku/pkurunner/Storage/OperationCancelException;

    invoke-direct {p1}, Lcn/edu/pku/pkurunner/Storage/OperationCancelException;-><init>()V

    invoke-interface {p0, p1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    instance-of v0, p1, Lcn/edu/pku/pkurunner/Storage/Dropbox$APIWrapper$DropboxException;

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->g()V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic b(Landroid/preference/Preference;)Z
    .locals 0

    const-string p1, "anxwqdheet1e4a4"

    .line 223
    invoke-static {p0, p1}, Lcom/dropbox/core/android/Auth;->startOAuth2Authentication(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic b(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 92
    check-cast p2, Ljava/lang/String;

    .line 93
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/edu/pku/pkurunner/Model/User;->setName(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->saveUserToDatabase()Lio/reactivex/Observable;

    move-result-object v0

    .line 95
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$J_y0eHNgt8lYFe-D2kXnIaUtxhw;

    invoke-direct {v1, p0, p1, p2}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$J_y0eHNgt8lYFe-D2kXnIaUtxhw;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/Preference;Ljava/lang/String;)V

    sget-object p1, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;->INSTANCE:Lcn/edu/pku/pkurunner/Settings/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;

    .line 96
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    const/4 p1, 0x1

    return p1
.end method

.method private c()V
    .locals 2

    const-string v0, "pref_clean_photo"

    .line 126
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 127
    new-instance v1, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$Q6aS-AxC5px0VYoPHD3q6RXy4XE;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$Q6aS-AxC5px0VYoPHD3q6RXy4XE;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private synthetic c(Landroid/preference/Preference;)Z
    .locals 1

    .line 128
    sget-object p1, Lcn/edu/pku/pkurunner/Photo/PhotoFile;->PicutreType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcn/edu/pku/pkurunner/Photo/UselessPhotoCleaner;->cleanAllUnused(Ljava/io/File;)V

    const p1, 0x7f0f0118

    const/4 v0, 0x0

    .line 129
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method private d()V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    const-string v0, "pref_dropbox"

    .line 139
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 140
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->isOffline()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 141
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 142
    invoke-static {p0}, Lcn/edu/pku/pkurunner/Storage/Dropbox$APIWrapper;->getToken(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    .line 143
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$Es86gLxc-oue3Kmr7-u-uKK7mpM;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$Es86gLxc-oue3Kmr7-u-uKK7mpM;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;)V

    new-instance v2, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$K0UvSKl6K9dwfDpOrxGC4sClk_U;

    invoke-direct {v2, p0}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$K0UvSKl6K9dwfDpOrxGC4sClk_U;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;)V

    .line 144
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 5

    const-string v0, "pref_dropbox_connection"

    .line 157
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "Connected"

    .line 158
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 159
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 160
    invoke-static {}, Lcn/edu/pku/pkurunner/Storage/Dropbox$ClientFactory;->getClient()Lcom/dropbox/core/v2/DbxClientV2;

    move-result-object v0

    const-string v1, "pref_dropbox_user"

    .line 162
    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 163
    new-instance v2, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$ccGh1TLuLffJHBU5rcxYXGiabiI;

    invoke-direct {v2, v0}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$ccGh1TLuLffJHBU5rcxYXGiabiI;-><init>(Lcom/dropbox/core/v2/DbxClientV2;)V

    invoke-static {v2}, Lcn/edu/pku/pkurunner/Storage/StorageUtil;->NetworkMethodWrapper(Lcn/edu/pku/pkurunner/Storage/StorageUtil$Producer;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$JmHOKLOgQgUMOJNNyTVTQyxnogk;

    invoke-direct {v3, v0}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$JmHOKLOgQgUMOJNNyTVTQyxnogk;-><init>(Lcom/dropbox/core/v2/DbxClientV2;)V

    .line 164
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v2

    .line 168
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$0aGNA0gZjzJTspuR-0hwmrc1Mdw;

    invoke-direct {v3, p0, v1}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$0aGNA0gZjzJTspuR-0hwmrc1Mdw;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/Preference;)V

    new-instance v4, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$dWpJLJNN9KqQQKpX9_WAIfsLs3s;

    invoke-direct {v4, p0, v1}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$dWpJLJNN9KqQQKpX9_WAIfsLs3s;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/Preference;)V

    .line 169
    invoke-virtual {v2, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    const-string v1, "pref_dropbox_upload"

    .line 181
    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 182
    new-instance v2, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$zLPnZZm5wQsxNeF6YV679ZvdG9Y;

    invoke-direct {v2, p0, v0}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$zLPnZZm5wQsxNeF6YV679ZvdG9Y;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Lcom/dropbox/core/v2/DbxClientV2;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private g()V
    .locals 2

    const-string v0, "pref_dropbox"

    .line 219
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "Not connected"

    .line 220
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 221
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 222
    new-instance v1, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$PBqDQVriKFDu0kj-VeFtXa0xL3Q;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$PBqDQVriKFDu0kj-VeFtXa0xL3Q;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "pref_dropbox_user"

    .line 227
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    .line 228
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v0, "pref_dropbox_upload"

    .line 229
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 230
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private h()V
    .locals 3

    const-string v0, "pref_version"

    .line 234
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "v1.2.4"

    .line 235
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "pref_guide"

    .line 237
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 238
    new-instance v1, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$EIKi_NUx3euZfifR_gdCa2DwZMA;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$EIKi_NUx3euZfifR_gdCa2DwZMA;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "pref_version"

    .line 243
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 245
    new-instance v2, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$47mzTJdaTa2DMVzThpV7RsqKidM;

    invoke-direct {v2, p0, v1}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$47mzTJdaTa2DMVzThpV7RsqKidM;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private i()V
    .locals 2

    const-string v0, "pref_unit"

    .line 255
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 256
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getSpeedUnitPreference()Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 257
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getSpeedUnitPreference()Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->b(Lcn/edu/pku/pkurunner/Map/SpeedHelper$SPEED_UNIT;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 258
    new-instance v1, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$UMnilHUujAzJSG7WQ9wW8mNzRHc;

    invoke-direct {v1, p0, v0}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$UMnilHUujAzJSG7WQ9wW8mNzRHc;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/ListPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public static synthetic lambda$0aGNA0gZjzJTspuR-0hwmrc1Mdw(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/Preference;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Landroid/preference/Preference;Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic lambda$47mzTJdaTa2DMVzThpV7RsqKidM(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;[Ljava/lang/String;Landroid/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a([Ljava/lang/String;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$5yXGVOprINrfBOYnhp6SKloYHMA(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$9V7w6Iqh4VouywAcnf8zeINtYCg(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$9javiZlNHtTG3maD0ThJSShXHoc(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->b(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$EIKi_NUx3euZfifR_gdCa2DwZMA(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$Es86gLxc-oue3Kmr7-u-uKK7mpM(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$J_y0eHNgt8lYFe-D2kXnIaUtxhw(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$JmHOKLOgQgUMOJNNyTVTQyxnogk(Lcom/dropbox/core/v2/DbxClientV2;Lcom/dropbox/core/v2/users/FullAccount;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Lcom/dropbox/core/v2/DbxClientV2;Lcom/dropbox/core/v2/users/FullAccount;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$K0UvSKl6K9dwfDpOrxGC4sClk_U(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$Kh6T2GNnMKwjZ8LVPSv6pRqjSG8(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/Preference;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$KwaCTkfvszfHfjUbdMuXvZM4MCw(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic lambda$O1HpzfLMOGrxN36BdM85Go5szy8(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$PBqDQVriKFDu0kj-VeFtXa0xL3Q(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->b(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$Q6aS-AxC5px0VYoPHD3q6RXy4XE(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->c(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$SrAoUMQphuvIp4GKD1vwi0aodQg(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->b(Lio/reactivex/ObservableEmitter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$UMnilHUujAzJSG7WQ9wW8mNzRHc(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/ListPreference;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Landroid/preference/ListPreference;Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$bu_LuEefUEoNT6SFEvCUVAIhJyc(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$bxT-yGaxVfz9flavpVnbU9ZIo5I(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Lcom/dropbox/core/v2/files/FileMetadata;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Lcom/dropbox/core/v2/files/FileMetadata;)V

    return-void
.end method

.method public static synthetic lambda$ccGh1TLuLffJHBU5rcxYXGiabiI(Lcom/dropbox/core/v2/DbxClientV2;)Lcom/dropbox/core/v2/users/FullAccount;
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Lcom/dropbox/core/v2/DbxClientV2;)Lcom/dropbox/core/v2/users/FullAccount;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$dWpJLJNN9KqQQKpX9_WAIfsLs3s(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/preference/Preference;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Landroid/preference/Preference;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$rzOiOEDXhyBCmtshoSQ8e9ZG1MM(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Lcom/dropbox/core/v2/DbxClientV2;Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$w2BCzJEpp3j0GHtYX8XKaNkJL3w(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$zLPnZZm5wQsxNeF6YV679ZvdG9Y(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;Lcom/dropbox/core/v2/DbxClientV2;Landroid/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a(Lcom/dropbox/core/v2/DbxClientV2;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x7f120000

    .line 70
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->addPreferencesFromResource(I)V

    .line 72
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->a()V

    .line 73
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->b()V

    .line 74
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->c()V

    .line 75
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->h()V

    .line 76
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->i()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 269
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    const p1, 0x102000a

    .line 270
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 271
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c0070

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 272
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 273
    new-instance p1, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$w2BCzJEpp3j0GHtYX8XKaNkJL3w;

    invoke-direct {p1, p0}, Lcn/edu/pku/pkurunner/Settings/-$$Lambda$SettingsActivity$w2BCzJEpp3j0GHtYX8XKaNkJL3w;-><init>(Lcn/edu/pku/pkurunner/Settings/SettingsActivity;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 81
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 83
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;->d()V

    return-void
.end method
