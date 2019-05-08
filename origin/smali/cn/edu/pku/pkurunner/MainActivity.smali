.class public Lcn/edu/pku/pkurunner/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field private a:Lcn/edu/pku/pkurunner/Map/MapFragment;

.field private b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

.field private c:Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;

.field private d:Landroid/support/v4/app/Fragment;

.field private e:[I

.field private f:I

.field private g:Landroid/support/design/widget/NavigationView;

.field private h:Landroid/support/v4/widget/DrawerLayout;

.field private i:Landroid/support/design/widget/CoordinatorLayout;

.field private j:Landroid/content/SharedPreferences;

.field private k:Landroid/content/SharedPreferences;

.field private l:J

.field private m:Lcn/edu/pku/pkurunner/Broadcasts/WeatherUpdateReceiver;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcn/edu/pku/pkurunner/View/ProgressableView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x3

    .line 88
    new-array v0, v0, [I

    iput-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->e:[I

    const/4 v0, -0x1

    .line 89
    iput v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->f:I

    const-wide/16 v0, 0x0

    .line 101
    iput-wide v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->l:J

    return-void
.end method

.method static synthetic a(Lcn/edu/pku/pkurunner/MainActivity;)Landroid/support/design/widget/NavigationView;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/edu/pku/pkurunner/MainActivity;->g:Landroid/support/design/widget/NavigationView;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcn/edu/pku/pkurunner/Exception/ServerException;->setResources(Landroid/content/res/Resources;)V

    const-string v0, "GuideActivity"

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0, v0, v1}, Lcn/edu/pku/pkurunner/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->k:Landroid/content/SharedPreferences;

    .line 139
    invoke-static {p0}, Lcn/edu/pku/pkurunner/Data;->init(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$I8DZ_e9lpZmEs3Q8H6qt9wVQvJI;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$I8DZ_e9lpZmEs3Q8H6qt9wVQvJI;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    new-instance v2, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$PVEDqOv-hV0Ccoo4LZWFJjjpGjw;

    invoke-direct {v2, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$PVEDqOv-hV0Ccoo4LZWFJjjpGjw;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    .line 140
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 676
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_0

    .line 257
    iget-object v3, p0, Lcn/edu/pku/pkurunner/MainActivity;->e:[I

    aput v2, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 259
    :cond_0
    new-instance p1, Lcn/edu/pku/pkurunner/Map/MapFragment;

    invoke-direct {p1}, Lcn/edu/pku/pkurunner/Map/MapFragment;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    .line 260
    new-instance p1, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    invoke-direct {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    .line 261
    new-instance p1, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/MainActivity;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    invoke-direct {p1, v1}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;)V

    .line 262
    new-instance p1, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;

    invoke-direct {p1}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->c:Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;

    .line 263
    new-instance p1, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/MainActivity;->c:Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;

    invoke-direct {p1, v1}, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;-><init>(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;)V

    .line 265
    iput-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->d:Landroid/support/v4/app/Fragment;

    const/4 p1, -0x1

    .line 266
    iput p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->f:I

    goto :goto_4

    :cond_1
    const-string v3, "onCreate have instance"

    .line 268
    invoke-static {v3}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v3, "FRAGMENT_ARRAY_KEY"

    .line 269
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lcn/edu/pku/pkurunner/MainActivity;->e:[I

    const-string v3, "FRAGMENT_LAST_KEY"

    .line 270
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->f:I

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastTag: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/edu/pku/pkurunner/MainActivity;->f:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    :goto_1
    if-ge v2, v1, :cond_4

    .line 275
    iget-object v4, p0, Lcn/edu/pku/pkurunner/MainActivity;->e:[I

    aget v4, v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 276
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 277
    iget v5, p0, Lcn/edu/pku/pkurunner/MainActivity;->f:I

    if-eq v5, v2, :cond_2

    .line 278
    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_2

    .line 280
    :cond_2
    iput-object v4, p0, Lcn/edu/pku/pkurunner/MainActivity;->d:Landroid/support/v4/app/Fragment;

    .line 281
    :goto_2
    invoke-virtual {p0, v2, v4}, Lcn/edu/pku/pkurunner/MainActivity;->setFragmentById(ILandroid/support/v4/app/Fragment;)V

    goto :goto_3

    .line 283
    :cond_3
    invoke-virtual {p0, v2, v0}, Lcn/edu/pku/pkurunner/MainActivity;->setFragmentById(ILandroid/support/v4/app/Fragment;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 286
    :cond_4
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_4
    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .locals 4

    .line 503
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->d:Landroid/support/v4/app/Fragment;

    .line 504
    iget-object v1, p0, Lcn/edu/pku/pkurunner/MainActivity;->d:Landroid/support/v4/app/Fragment;

    if-eq v1, p1, :cond_2

    .line 505
    iput-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->d:Landroid/support/v4/app/Fragment;

    .line 506
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 508
    :cond_0
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->findIdByFragment(Landroid/support/v4/app/Fragment;)I

    move-result v0

    .line 509
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 510
    iget-object v2, p0, Lcn/edu/pku/pkurunner/MainActivity;->e:[I

    const/4 v3, 0x1

    aput v3, v2, v0

    const v2, 0x7f090143

    .line 511
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 513
    :cond_1
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 515
    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 516
    iput v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->f:I

    :cond_2
    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;II)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    .line 730
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->d:Landroid/support/v4/app/Fragment;

    .line 731
    iget-object v1, p0, Lcn/edu/pku/pkurunner/MainActivity;->d:Landroid/support/v4/app/Fragment;

    if-eq v1, p1, :cond_2

    .line 732
    iput-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->d:Landroid/support/v4/app/Fragment;

    .line 733
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 734
    invoke-virtual {v1, p3, p2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p2

    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 736
    :cond_0
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->findIdByFragment(Landroid/support/v4/app/Fragment;)I

    move-result p3

    .line 737
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 738
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->e:[I

    const/4 v1, 0x1

    aput v1, v0, p3

    const v0, 0x7f090143

    .line 739
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 741
    :cond_1
    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 743
    :goto_0
    iput p3, p0, Lcn/edu/pku/pkurunner/MainActivity;->f:I

    :cond_2
    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 415
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object p1

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/User;->isOffline()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Utils/ClientUpdateNotice;->downloadLatestVersion(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic a(Lcn/edu/pku/pkurunner/MainActivity;Lcn/edu/pku/pkurunner/Model/Weather;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->a(Lcn/edu/pku/pkurunner/Model/Weather;)V

    return-void
.end method

.method private a(Lcn/edu/pku/pkurunner/Model/Weather;)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "weather"

    invoke-static {p1}, Lcn/edu/pku/pkurunner/Utils/SerializeHelper;->objectToString(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    invoke-virtual {p1, p0}, Lcn/edu/pku/pkurunner/Model/Weather;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->b(Lcn/edu/pku/pkurunner/Model/Weather;)V

    return-void
.end method

.method private synthetic a(Lcn/edu/pku/pkurunner/Network/Model/UserStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 591
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/MainActivity;->refreshUserStatusNotice()V

    return-void
.end method

.method private synthetic a(Lcn/edu/pku/pkurunner/Network/Model/Version;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 412
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Network/Model/Version;->getVersion()I

    move-result p1

    const/16 v0, 0x26a

    if-le p1, v0, :cond_0

    .line 413
    iget-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->i:Landroid/support/design/widget/CoordinatorLayout;

    const v0, 0x7f0f001d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    const v0, 0x7f0f001c

    new-instance v1, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$bFrLeiZItrij45WXpFxxPsLDpcc;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$bFrLeiZItrij45WXpFxxPsLDpcc;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    .line 414
    invoke-virtual {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    .line 416
    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 417
    iget-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->g:Landroid/support/design/widget/NavigationView;

    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v0, 0x7f0900cc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    .line 418
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/io/Serializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    check-cast p1, Lcn/edu/pku/pkurunner/Model/Weather;

    sput-object p1, Lcn/edu/pku/pkurunner/Network/Network;->weather:Lcn/edu/pku/pkurunner/Model/Weather;

    .line 181
    sget-object p1, Lcn/edu/pku/pkurunner/Network/Network;->weather:Lcn/edu/pku/pkurunner/Model/Weather;

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->b(Lcn/edu/pku/pkurunner/Model/Weather;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 627
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 628
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v1, v1, p1

    float-to-int v1, v1

    const/high16 v2, 0x43fc0000    # 504.0f

    mul-float v2, v2, p1

    float-to-int v2, v2

    const/high16 v3, 0x42000000    # 32.0f

    mul-float v3, v3, p1

    float-to-int v3, v3

    const/high16 v4, 0x44020000    # 520.0f

    mul-float p1, p1, v4

    float-to-int p1, p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const p1, 0x7f0f00ad

    .line 632
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0f00aa

    .line 633
    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 629
    invoke-static {v0, p1, v1}, Lcom/getkeepsafe/taptargetview/TapTarget;->forBounds(Landroid/graphics/Rect;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p1

    const/4 v0, 0x1

    .line 635
    invoke-virtual {p1, v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->transparentTarget(Z)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p1

    const v0, 0x7f06017e

    .line 636
    invoke-virtual {p1, v0}, Lcom/getkeepsafe/taptargetview/TapTarget;->outerCircleColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object p1

    new-instance v0, Lcn/edu/pku/pkurunner/MainActivity$5;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/MainActivity$5;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    .line 628
    invoke-static {p0, p1, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/TapTarget;Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 593
    instance-of v0, p1, Lcn/edu/pku/pkurunner/Exception/ServerException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcn/edu/pku/pkurunner/Exception/ServerException;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Exception/ServerException;->getErrorCode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 594
    invoke-static {p0}, Lcn/edu/pku/pkurunner/Utils/ClientUpdateNotice;->showVersionLowDialog(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object p1

    .line 595
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$YUmWLUnwG5bLnQCng9nzboot9VM;

    invoke-direct {v0, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$YUmWLUnwG5bLnQCng9nzboot9VM;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    .line 596
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 599
    :cond_0
    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lretrofit2/HttpException;

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    .line 600
    invoke-static {p0}, Lcn/edu/pku/pkurunner/Utils/TokenInvalidNotice;->showTokenInvalidDialog(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object p1

    .line 601
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$Kt6yKyetxvBJKRIE1tVxSuudGAE;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$Kt6yKyetxvBJKRIE1tVxSuudGAE;

    .line 602
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_1
    const v0, 0x7f0f0011

    const/4 v1, 0x1

    .line 604
    new-array v1, v1, [Ljava/lang/Object;

    .line 605
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 604
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 605
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private a(Landroid/view/MenuItem;)Z
    .locals 2

    .line 444
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 457
    :pswitch_1
    sget-object p1, Lcn/edu/pku/pkurunner/Network/Network;->weather:Lcn/edu/pku/pkurunner/Model/Weather;

    if-eqz p1, :cond_0

    sget-object p1, Lcn/edu/pku/pkurunner/Network/Network;->weather:Lcn/edu/pku/pkurunner/Model/Weather;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Weather;->getAqi()Lcn/edu/pku/pkurunner/Model/Weather$AqiBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 458
    sget-object p1, Lcn/edu/pku/pkurunner/Network/Network;->weather:Lcn/edu/pku/pkurunner/Model/Weather;

    invoke-virtual {p1, p0}, Lcn/edu/pku/pkurunner/Model/Weather;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 459
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 460
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "cn.edu.pku.pkurunner.MainActivity.weatherUpdate"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 466
    :pswitch_2
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object p1

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/User;->isOffline()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/Utils/ClientUpdateNotice;->downloadLatestVersion(Landroid/content/Context;Z)V

    goto :goto_0

    .line 454
    :pswitch_3
    iget-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->c:Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 469
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcn/edu/pku/pkurunner/Settings/SettingsActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 451
    :pswitch_5
    iget-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 448
    :pswitch_6
    iget-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 473
    :pswitch_7
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/MainActivity;->h()V

    goto :goto_0

    .line 463
    :pswitch_8
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/MainActivity;->g()V

    .line 479
    :goto_0
    iget-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->h:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900c4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic b(Lcn/edu/pku/pkurunner/Network/Model/Version;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 396
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Network/Model/Version;->getVersion()I

    move-result p1

    const/16 v0, 0x26a

    if-le p1, v0, :cond_0

    .line 397
    invoke-static {p0}, Lcn/edu/pku/pkurunner/Utils/ClientUpdateNotice;->showVersionLowDialog(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x1

    .line 399
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/MainActivity;->c()V

    .line 166
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/MainActivity;->d()V

    return-void
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 672
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 673
    iget-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    iget-object p1, p1, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    invoke-interface {p1}, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;->stopAndSwitchToIdle()V

    const/4 p1, 0x1

    .line 674
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method static synthetic b(Lcn/edu/pku/pkurunner/MainActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/MainActivity;->g()V

    return-void
.end method

.method private b(Lcn/edu/pku/pkurunner/Model/Weather;)V
    .locals 3

    .line 232
    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Weather;->getNow()Lcn/edu/pku/pkurunner/Model/Weather$NowBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www.heweather.com/files/images/cond_icon/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Weather;->getNow()Lcn/edu/pku/pkurunner/Model/Weather$NowBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Weather$NowBean;->getCond()Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/edu/pku/pkurunner/Model/Weather$NowBean$CondBean;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".png"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 234
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    .line 235
    invoke-static {p0}, Lcn/edu/pku/pkurunner/GlideApp;->with(Landroid/support/v4/app/FragmentActivity;)Lcn/edu/pku/pkurunner/GlideRequests;

    move-result-object v1

    .line 236
    invoke-virtual {v1, p1}, Lcn/edu/pku/pkurunner/GlideRequests;->load(Ljava/lang/String;)Lcn/edu/pku/pkurunner/GlideRequest;

    move-result-object v1

    const v2, 0x7f080090

    .line 237
    invoke-virtual {v1, v2}, Lcn/edu/pku/pkurunner/GlideRequest;->placeholder(I)Lcn/edu/pku/pkurunner/GlideRequest;

    move-result-object v1

    const v2, 0x7f080092

    .line 238
    invoke-virtual {v1, v2}, Lcn/edu/pku/pkurunner/GlideRequest;->error(I)Lcn/edu/pku/pkurunner/GlideRequest;

    move-result-object v1

    .line 239
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/GlideRequest;->centerCrop()Lcn/edu/pku/pkurunner/GlideRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->AUTOMATIC:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 240
    invoke-virtual {v1, v2}, Lcn/edu/pku/pkurunner/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcn/edu/pku/pkurunner/GlideRequest;

    move-result-object v1

    .line 234
    invoke-interface {v0, v1}, Lcn/edu/pku/pkurunner/View/ProgressableView;->setWeatherDrawable(Lcn/edu/pku/pkurunner/GlideRequest;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 242
    invoke-static {p0}, Lcn/edu/pku/pkurunner/GlideApp;->with(Landroid/support/v4/app/FragmentActivity;)Lcn/edu/pku/pkurunner/GlideRequests;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/GlideRequests;->asBitmap()Lcn/edu/pku/pkurunner/GlideRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/edu/pku/pkurunner/GlideRequest;->load(Ljava/lang/String;)Lcn/edu/pku/pkurunner/GlideRequest;

    move-result-object p1

    new-instance v0, Lcn/edu/pku/pkurunner/MainActivity$2;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, v1}, Lcn/edu/pku/pkurunner/MainActivity$2;-><init>(Lcn/edu/pku/pkurunner/MainActivity;II)V

    invoke-virtual {p1, v0}, Lcn/edu/pku/pkurunner/GlideRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private static synthetic b(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 583
    new-array v0, v0, [Ljava/lang/Object;

    .line 584
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f0f0010

    invoke-virtual {p0, p1, v0}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 583
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 584
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private c()V
    .locals 3

    const-string v0, "WeatherService"

    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0, v0, v1}, Lcn/edu/pku/pkurunner/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->j:Landroid/content/SharedPreferences;

    .line 174
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->j:Landroid/content/SharedPreferences;

    const-string v1, "weather"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->j:Landroid/content/SharedPreferences;

    const-string v1, "weather"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 176
    sput-object v2, Lcn/edu/pku/pkurunner/Network/Network;->weather:Lcn/edu/pku/pkurunner/Model/Weather;

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {v0}, Lcn/edu/pku/pkurunner/Utils/SerializeHelper;->stringToObject(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$Bt7U2Qwo1zQxuApPNG6edMhNISA;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$Bt7U2Qwo1zQxuApPNG6edMhNISA;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    new-instance v2, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$UhA6B3dKrhzevlHDkzCHu5XoPNM;

    invoke-direct {v2, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$UhA6B3dKrhzevlHDkzCHu5XoPNM;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    .line 179
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic c(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 528
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/MainActivity;->finish()V

    return-void
.end method

.method private synthetic c(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 597
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->moveTaskToBack(Z)Z

    :cond_0
    return-void
.end method

.method private synthetic c(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    .line 184
    new-array v0, v0, [Ljava/lang/Object;

    .line 185
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f0f0012

    invoke-virtual {p0, p1, v0}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 196
    new-instance v0, Lcn/edu/pku/pkurunner/Broadcasts/WeatherUpdateReceiver;

    new-instance v1, Lcn/edu/pku/pkurunner/MainActivity$1;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/MainActivity$1;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    invoke-direct {v0, v1}, Lcn/edu/pku/pkurunner/Broadcasts/WeatherUpdateReceiver;-><init>(Lio/reactivex/Observer;)V

    iput-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->m:Lcn/edu/pku/pkurunner/Broadcasts/WeatherUpdateReceiver;

    .line 216
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "cn.edu.pku.pkurunner.MainActivity.weatherUpdate"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcn/edu/pku/pkurunner/MainActivity;->m:Lcn/edu/pku/pkurunner/Broadcasts/WeatherUpdateReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/edu/pku/pkurunner/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static synthetic d(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static synthetic d(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private synthetic d(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 156
    new-array v0, v0, [Ljava/lang/Object;

    .line 157
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f0f0010

    invoke-virtual {p0, p1, v0}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private e()V
    .locals 8

    const v0, 0x7f090144

    .line 294
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/support/v7/widget/Toolbar;

    .line 295
    invoke-virtual {p0, v5}, Lcn/edu/pku/pkurunner/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const v0, 0x7f090010

    .line 297
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->h:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x7f090011

    .line 298
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->g:Landroid/support/design/widget/NavigationView;

    .line 299
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->g:Landroid/support/design/widget/NavigationView;

    new-instance v1, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$lZBC25iUcO0XAu8SzbDnGVUJc1w;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$lZBC25iUcO0XAu8SzbDnGVUJc1w;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    const v0, 0x7f09000f

    .line 300
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->i:Landroid/support/design/widget/CoordinatorLayout;

    .line 302
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->g:Landroid/support/design/widget/NavigationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900cb

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/edu/pku/pkurunner/MainActivity;->n:Landroid/widget/TextView;

    const v1, 0x7f0900ca

    .line 304
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f090157

    .line 306
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/edu/pku/pkurunner/View/ProgressableView;

    iput-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    .line 307
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-interface {v0, v1}, Lcn/edu/pku/pkurunner/View/ProgressableView;->setReferenceTime(Ljava/util/Date;)V

    .line 309
    new-instance v0, Lcn/edu/pku/pkurunner/MainActivity$3;

    iget-object v4, p0, Lcn/edu/pku/pkurunner/MainActivity;->h:Landroid/support/v4/widget/DrawerLayout;

    const v6, 0x7f0f00d9

    const v7, 0x7f0f00d8

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcn/edu/pku/pkurunner/MainActivity$3;-><init>(Lcn/edu/pku/pkurunner/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 317
    iget-object v1, p0, Lcn/edu/pku/pkurunner/MainActivity;->h:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 318
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method

.method private synthetic e(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 488
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcn/edu/pku/pkurunner/LoginActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "logout"

    const/4 v0, 0x1

    .line 489
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 490
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic e(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 403
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->moveTaskToBack(Z)Z

    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    .line 393
    invoke-static {}, Lcn/edu/pku/pkurunner/Network/Network;->getMinVersion()Lio/reactivex/Observable;

    move-result-object v0

    .line 394
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$V8t7sc850iVUqkQsowLp4Y0CF4g;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$V8t7sc850iVUqkQsowLp4Y0CF4g;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    .line 395
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$JBsPdj4ERSyMPEGDxKGdjAkaNIc;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$JBsPdj4ERSyMPEGDxKGdjAkaNIc;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    sget-object v2, Lcn/edu/pku/pkurunner/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;

    .line 402
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 407
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/User;->isOffline()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 409
    :goto_0
    invoke-static {v0}, Lcn/edu/pku/pkurunner/Network/Network;->getLatestVersion(Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 410
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$7eZpWfDy8sBU4LJPSe39rG6Lax8;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$7eZpWfDy8sBU4LJPSe39rG6Lax8;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    sget-object v2, Lcn/edu/pku/pkurunner/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$Jxp4LOjD5wh7hYvpBAWXzgH0LNY;

    .line 411
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private synthetic f(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    iget-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->k:Landroid/content/SharedPreferences;

    const-string v0, "guided"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object p1

    if-nez p1, :cond_1

    .line 146
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/edu/pku/pkurunner/LoginActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 151
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/edu/pku/pkurunner/GuidePage/IntroActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "jumpToLogin"

    const/4 v1, 0x1

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private g()V
    .locals 2

    .line 432
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://pku-runner.github.io"

    .line 433
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 434
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private h()V
    .locals 3

    .line 484
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f001b

    .line 485
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0018

    .line 486
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$tR6zxh2RfuRk4oOUiNOj9D1bZ9w;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$tR6zxh2RfuRk4oOUiNOj9D1bZ9w;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    const v2, 0x7f0f001a

    .line 487
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$mXi11_DFa-5VhjwxOm0nx4qCAVc;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$mXi11_DFa-5VhjwxOm0nx4qCAVc;

    const v2, 0x7f0f0019

    .line 492
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 493
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private i()Z
    .locals 4

    const v0, 0x7f090142

    .line 534
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 535
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    iget-object v2, p0, Lcn/edu/pku/pkurunner/MainActivity;->h:Landroid/support/v4/widget/DrawerLayout;

    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const v1, 0x7f0f00af

    .line 541
    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f00ac

    .line 542
    invoke-virtual {p0, v2}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-static {v0, v1, v2}, Lcom/getkeepsafe/taptargetview/TapTarget;->forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object v0

    const v1, 0x7f06006b

    .line 544
    invoke-virtual {v0, v1}, Lcom/getkeepsafe/taptargetview/TapTarget;->outerCircleColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object v0

    const/4 v1, 0x1

    .line 545
    invoke-virtual {v0, v1}, Lcom/getkeepsafe/taptargetview/TapTarget;->transparentTarget(Z)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object v0

    new-instance v2, Lcn/edu/pku/pkurunner/MainActivity$4;

    invoke-direct {v2, p0}, Lcn/edu/pku/pkurunner/MainActivity$4;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    .line 538
    invoke-static {p0, v0, v2}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/TapTarget;Lcom/getkeepsafe/taptargetview/TapTargetView$Listener;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private j()Z
    .locals 3

    const v0, 0x7f090090

    .line 557
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 558
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0f00ae

    .line 563
    invoke-virtual {p0, v1}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f00ab

    .line 564
    invoke-virtual {p0, v2}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 561
    invoke-static {v0, v1, v2}, Lcom/getkeepsafe/taptargetview/TapTarget;->forView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object v0

    const v1, 0x7f06012f

    .line 566
    invoke-virtual {v0, v1}, Lcom/getkeepsafe/taptargetview/TapTarget;->outerCircleColor(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object v0

    const/4 v1, 0x1

    .line 567
    invoke-virtual {v0, v1}, Lcom/getkeepsafe/taptargetview/TapTarget;->transparentTarget(Z)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object v0

    const/16 v2, 0x60

    .line 568
    invoke-virtual {v0, v2}, Lcom/getkeepsafe/taptargetview/TapTarget;->targetRadius(I)Lcom/getkeepsafe/taptargetview/TapTarget;

    move-result-object v0

    .line 560
    invoke-static {p0, v0}, Lcom/getkeepsafe/taptargetview/TapTargetView;->showFor(Landroid/app/Activity;Lcom/getkeepsafe/taptargetview/TapTarget;)Lcom/getkeepsafe/taptargetview/TapTargetView;

    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static k()Z
    .locals 6

    .line 834
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-string v1, "vbox.*"

    .line 836
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 837
    array-length v3, v0

    if-nez v3, :cond_0

    goto :goto_1

    .line 839
    :cond_0
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 840
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v2
.end method

.method public static synthetic lambda$7eZpWfDy8sBU4LJPSe39rG6Lax8(Lcn/edu/pku/pkurunner/MainActivity;Lcn/edu/pku/pkurunner/Network/Model/Version;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->a(Lcn/edu/pku/pkurunner/Network/Model/Version;)V

    return-void
.end method

.method public static synthetic lambda$Bt7U2Qwo1zQxuApPNG6edMhNISA(Lcn/edu/pku/pkurunner/MainActivity;Ljava/io/Serializable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->a(Ljava/io/Serializable;)V

    return-void
.end method

.method public static synthetic lambda$EQl8QHlYtgmiablRkDCOcDsDRLM(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$I8DZ_e9lpZmEs3Q8H6qt9wVQvJI(Lcn/edu/pku/pkurunner/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->f(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$JBsPdj4ERSyMPEGDxKGdjAkaNIc(Lcn/edu/pku/pkurunner/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->e(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$Kt6yKyetxvBJKRIE1tVxSuudGAE(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/MainActivity;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$NLFo39h-IGCSq6xPx7C9JfZNfc0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcn/edu/pku/pkurunner/MainActivity;->d(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$PVEDqOv-hV0Ccoo4LZWFJjjpGjw(Lcn/edu/pku/pkurunner/MainActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$RTvcBQWKUJgP8YiRfqaPYMxGSHc(Lcn/edu/pku/pkurunner/MainActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$RlhSlQFcDDIgRCQ4cpGVB7JaUU4(Lcn/edu/pku/pkurunner/MainActivity;Lcn/edu/pku/pkurunner/Network/Model/UserStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->a(Lcn/edu/pku/pkurunner/Network/Model/UserStatus;)V

    return-void
.end method

.method public static synthetic lambda$UhA6B3dKrhzevlHDkzCHu5XoPNM(Lcn/edu/pku/pkurunner/MainActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$V8t7sc850iVUqkQsowLp4Y0CF4g(Lcn/edu/pku/pkurunner/MainActivity;Lcn/edu/pku/pkurunner/Network/Model/Version;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->b(Lcn/edu/pku/pkurunner/Network/Model/Version;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$YUmWLUnwG5bLnQCng9nzboot9VM(Lcn/edu/pku/pkurunner/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->c(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$aC_oG1PFkUdDyZvwo4tnm4J9gjM(Lcn/edu/pku/pkurunner/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/MainActivity;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$bFrLeiZItrij45WXpFxxPsLDpcc(Lcn/edu/pku/pkurunner/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$cCD7z7zeM1-Hs6pMudGYAfoSQ64(Lcn/edu/pku/pkurunner/MainActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$d_7I7PqrUKoy8BTQ8E0A6X2rpiE(Lcn/edu/pku/pkurunner/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$lZBC25iUcO0XAu8SzbDnGVUJc1w(Lcn/edu/pku/pkurunner/MainActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->a(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$mXi11_DFa-5VhjwxOm0nx4qCAVc(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->d(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$rceM-72z9JgWosn2Aj2iiRolwNU(Lcn/edu/pku/pkurunner/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/MainActivity;->c(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$tR6zxh2RfuRk4oOUiNOj9D1bZ9w(Lcn/edu/pku/pkurunner/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/edu/pku/pkurunner/MainActivity;->e(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public findIdByFragment(Landroid/support/v4/app/Fragment;)I
    .locals 1

    .line 822
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 823
    :cond_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 824
    :cond_1
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->c:Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public onBackPressed()V
    .locals 4

    const v0, 0x7f090010

    .line 657
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    .line 658
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 661
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/edu/pku/pkurunner/MainActivity;->l:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 662
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0017

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 663
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->l:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 666
    iput-wide v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->l:J

    .line 667
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    iget-object v0, v0, Lcn/edu/pku/pkurunner/Map/MapFragment;->presenter:Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;

    invoke-interface {v0}, Lcn/edu/pku/pkurunner/Map/MapContract$Presenter;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 668
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0016

    .line 669
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0013

    .line 670
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0015

    .line 671
    new-instance v2, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$aC_oG1PFkUdDyZvwo4tnm4J9gjM;

    invoke-direct {v2, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$aC_oG1PFkUdDyZvwo4tnm4J9gjM;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0014

    .line 676
    sget-object v2, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$EQl8QHlYtgmiablRkDCOcDsDRLM;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$EQl8QHlYtgmiablRkDCOcDsDRLM;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 677
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 679
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->moveTaskToBack(Z)Z

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f1000cc

    .line 120
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->setTheme(I)V

    .line 121
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c001e

    .line 122
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->setContentView(I)V

    .line 124
    invoke-direct {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->a(Landroid/os/Bundle;)V

    .line 126
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/MainActivity;->a()V

    .line 127
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/MainActivity;->e()V

    .line 128
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/MainActivity;->b()V

    .line 130
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/MainActivity;->f()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 704
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 687
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 688
    iput-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    .line 689
    iput-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    .line 690
    iput-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->c:Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;

    .line 691
    iput-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->d:Landroid/support/v4/app/Fragment;

    .line 692
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->m:Lcn/edu/pku/pkurunner/Broadcasts/WeatherUpdateReceiver;

    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 710
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f090012

    if-ne v0, v2, :cond_0

    .line 712
    new-instance p1, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;

    invoke-direct {p1}, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;-><init>()V

    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "Permission dialog"

    invoke-virtual {p1, v0, v2}, Lcn/edu/pku/pkurunner/Permission/PermissionDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return v1

    :cond_0
    const v2, 0x7f09000e

    if-ne v0, v2, :cond_1

    .line 715
    iget-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->k:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "drawer"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "fab"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pullDown"

    .line 716
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1

    .line 719
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 425
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090011

    .line 426
    invoke-virtual {p0, p1}, Lcn/edu/pku/pkurunner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/NavigationView;

    .line 427
    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v0, 0x7f0900c7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    .line 428
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 522
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 523
    invoke-static {}, Lcn/edu/pku/pkurunner/MainActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u975e\u5e38\u4e8b\u6001\uff01\uff01\uff01"

    .line 525
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u8bf7\u4e0d\u8981\u5728\u975e\u624b\u673a\u7684Android\u7aef\u4f7f\u7528\u672c\u8f6f\u4ef6\u54e6\uff01\n\u5c0f\u5fc3\u7528\u7740\u7528\u7740\u8bbe\u5907\u98de\u51fa\u53bb\u54e6\uff01\uff08\u5927\u96fe"

    .line 526
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 527
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u539f\u5730\u7206\u70b8"

    new-instance v2, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$rceM-72z9JgWosn2Aj2iiRolwNU;

    invoke-direct {v2, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$rceM-72z9JgWosn2Aj2iiRolwNU;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    .line 528
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 697
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "FRAGMENT_ARRAY_KEY"

    .line 698
    iget-object v1, p0, Lcn/edu/pku/pkurunner/MainActivity;->e:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "FRAGMENT_LAST_KEY"

    .line 699
    iget v1, p0, Lcn/edu/pku/pkurunner/MainActivity;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 9

    .line 574
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 576
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 578
    :cond_0
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 579
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->loadByUser()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$NLFo39h-IGCSq6xPx7C9JfZNfc0;->INSTANCE:Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$NLFo39h-IGCSq6xPx7C9JfZNfc0;

    new-instance v2, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$cCD7z7zeM1-Hs6pMudGYAfoSQ64;

    invoke-direct {v2, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$cCD7z7zeM1-Hs6pMudGYAfoSQ64;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    .line 580
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 587
    :cond_1
    invoke-virtual {p0}, Lcn/edu/pku/pkurunner/MainActivity;->refreshUserStatusNotice()V

    .line 588
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/User;->isOffline()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 589
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->refreshUserStatus()Lio/reactivex/Observable;

    move-result-object v0

    .line 590
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v3, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$RlhSlQFcDDIgRCQ4cpGVB7JaUU4;

    invoke-direct {v3, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$RlhSlQFcDDIgRCQ4cpGVB7JaUU4;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    new-instance v4, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$RTvcBQWKUJgP8YiRfqaPYMxGSHc;

    invoke-direct {v4, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$RTvcBQWKUJgP8YiRfqaPYMxGSHc;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    .line 591
    invoke-virtual {v0, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_1

    .line 610
    :cond_2
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    invoke-interface {v0, v2}, Lcn/edu/pku/pkurunner/View/ProgressableView;->setActiveMode(Z)V

    .line 611
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    invoke-interface {v0, v2}, Lcn/edu/pku/pkurunner/View/ProgressableView;->setCollapseMode(Z)V

    const-wide/16 v3, 0x0

    .line 613
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/Model/User;->getRecords()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/edu/pku/pkurunner/Model/Record;

    .line 614
    invoke-virtual {v5}, Lcn/edu/pku/pkurunner/Model/Record;->getDistance()I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v3, v5

    goto :goto_0

    .line 616
    :cond_3
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    const v5, 0x7f0f0140

    new-array v6, v2, [Ljava/lang/Object;

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v7

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-virtual {p0, v5, v6}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcn/edu/pku/pkurunner/View/ProgressableView;->setMainText(Ljava/lang/String;)V

    .line 619
    :goto_1
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->d:Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    invoke-direct {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 620
    :cond_4
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->d:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lcn/edu/pku/pkurunner/MainActivity;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->k:Landroid/content/SharedPreferences;

    const-string v3, "drawer"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 621
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "drawer"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 622
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->h:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(IZ)V

    .line 623
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 624
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 625
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$d_7I7PqrUKoy8BTQ8E0A6X2rpiE;

    invoke-direct {v1, p0}, Lcn/edu/pku/pkurunner/-$$Lambda$MainActivity$d_7I7PqrUKoy8BTQ8E0A6X2rpiE;-><init>(Lcn/edu/pku/pkurunner/MainActivity;)V

    .line 626
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_2

    .line 646
    :cond_5
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->d:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lcn/edu/pku/pkurunner/MainActivity;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->k:Landroid/content/SharedPreferences;

    const-string v3, "fab"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 647
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/MainActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 648
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "fab"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 649
    :cond_6
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->d:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lcn/edu/pku/pkurunner/MainActivity;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->k:Landroid/content/SharedPreferences;

    const-string v3, "pullDown"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 650
    invoke-direct {p0}, Lcn/edu/pku/pkurunner/MainActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 651
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pullDown"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_7
    :goto_2
    return-void
.end method

.method public refreshUserStatusNotice()V
    .locals 20

    move-object/from16 v0, p0

    .line 325
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUser()Lcn/edu/pku/pkurunner/Model/User;

    move-result-object v1

    if-nez v1, :cond_0

    .line 328
    iget-object v2, v0, Lcn/edu/pku/pkurunner/MainActivity;->n:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v2, v0, Lcn/edu/pku/pkurunner/MainActivity;->o:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 331
    :cond_0
    iget-object v2, v0, Lcn/edu/pku/pkurunner/MainActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v2, v0, Lcn/edu/pku/pkurunner/MainActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->getDepartment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz v1, :cond_7

    .line 335
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Model/User;->isOffline()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_6

    .line 337
    :cond_1
    invoke-static {}, Lcn/edu/pku/pkurunner/Data;->getUserStatus()Lcn/edu/pku/pkurunner/Network/Model/UserStatus;

    move-result-object v1

    if-nez v1, :cond_2

    .line 339
    iget-object v1, v0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    invoke-interface {v1}, Lcn/edu/pku/pkurunner/View/ProgressableView;->reset()V

    goto/16 :goto_5

    .line 341
    :cond_2
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;->getCurrent()I

    move-result v2

    int-to-double v2, v2

    .line 342
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;->getBonus()I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v4, v2

    .line 343
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;->getTarget()I

    move-result v6

    int-to-double v6, v6

    .line 345
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;->getEndDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;->getBeginDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    const-wide/16 v12, 0xe10

    div-long/2addr v8, v12

    const-wide/16 v14, 0x18

    div-long/2addr v8, v14

    long-to-int v8, v8

    .line 346
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;->getEndDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v16, v16, v18

    div-long v16, v16, v10

    div-long v16, v16, v12

    div-long v12, v16, v14

    long-to-int v9, v12

    const v12, 0x7f0f013e

    const/4 v13, 0x2

    .line 347
    new-array v14, v13, [Ljava/lang/Object;

    sub-int v15, v8, v9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v10, 0x0

    aput-object v16, v14, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v14, v13

    invoke-virtual {v0, v12, v14}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    cmpl-double v12, v4, v6

    if-lez v12, :cond_3

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    :goto_1
    const/4 v14, 0x3

    .line 350
    new-array v13, v14, [Ljava/lang/Object;

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v18, v2, v16

    .line 351
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v13, v10

    div-double v16, v6, v16

    .line 352
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/4 v14, 0x1

    aput-object v16, v13, v14

    if-eqz v12, :cond_4

    const v12, 0x7f0f013b

    .line 354
    invoke-virtual {v0, v12}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_2
    const/4 v14, 0x2

    goto :goto_3

    :cond_4
    new-array v12, v14, [Ljava/lang/Object;

    .line 355
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;->getValidCount()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v10

    const v14, 0x7f0f0143

    invoke-virtual {v0, v14, v12}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :goto_3
    aput-object v12, v13, v14

    const v12, 0x7f0f013f

    .line 350
    invoke-virtual {v0, v12, v13}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 357
    iget-object v13, v0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    invoke-interface {v13, v10}, Lcn/edu/pku/pkurunner/View/ProgressableView;->setCollapseMode(Z)V

    const v13, 0x7f0f013c

    if-le v9, v8, :cond_5

    .line 360
    iget-object v2, v0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    invoke-interface {v2, v10}, Lcn/edu/pku/pkurunner/View/ProgressableView;->setActiveMode(Z)V

    .line 362
    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;->getBeginDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0xe10

    div-long/2addr v2, v4

    const-wide/16 v4, 0x18

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 363
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3}, Ljava/text/SimpleDateFormat;-><init>()V

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;->getBeginDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 364
    iget-object v3, v0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    const v4, 0x7f0f0142

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 365
    invoke-virtual {v0, v13}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v14, 0x1

    aput-object v2, v5, v14

    const/4 v2, 0x2

    aput-object v1, v5, v2

    .line 364
    invoke-virtual {v0, v4, v5}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcn/edu/pku/pkurunner/View/ProgressableView;->setSleepingIndicatorText(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    const/4 v14, 0x1

    if-ltz v9, :cond_6

    .line 368
    iget-object v1, v0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    invoke-interface {v1, v14}, Lcn/edu/pku/pkurunner/View/ProgressableView;->setActiveMode(Z)V

    .line 369
    iget-object v1, v0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    invoke-interface {v1, v11}, Lcn/edu/pku/pkurunner/View/ProgressableView;->setSecondaryText(Ljava/lang/String;)V

    .line 370
    iget-object v1, v0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    int-to-float v9, v15

    int-to-float v8, v8

    const/4 v10, 0x0

    add-float/2addr v8, v10

    div-float/2addr v9, v8

    invoke-interface {v1, v9}, Lcn/edu/pku/pkurunner/View/ProgressableView;->setSecondaryProgress(F)V

    .line 371
    iget-object v1, v0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    invoke-interface {v1, v12}, Lcn/edu/pku/pkurunner/View/ProgressableView;->setMainText(Ljava/lang/String;)V

    .line 372
    iget-object v1, v0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    div-double/2addr v2, v6

    double-to-float v2, v2

    invoke-interface {v1, v2}, Lcn/edu/pku/pkurunner/View/ProgressableView;->setMainProgress(F)V

    .line 373
    iget-object v1, v0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    div-double/2addr v4, v6

    double-to-float v2, v4

    invoke-interface {v1, v2}, Lcn/edu/pku/pkurunner/View/ProgressableView;->setMainBonusProgress(F)V

    goto :goto_4

    .line 376
    :cond_6
    iget-object v2, v0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    invoke-interface {v2, v10}, Lcn/edu/pku/pkurunner/View/ProgressableView;->setActiveMode(Z)V

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;->getEndDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0xe10

    div-long/2addr v2, v4

    const-wide/16 v4, 0x18

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 379
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3}, Ljava/text/SimpleDateFormat;-><init>()V

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Network/Model/UserStatus;->getEndDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 380
    iget-object v3, v0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    const v4, 0x7f0f0141

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 381
    invoke-virtual {v0, v13}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v2, 0x2

    aput-object v1, v5, v2

    .line 380
    invoke-virtual {v0, v4, v5}, Lcn/edu/pku/pkurunner/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcn/edu/pku/pkurunner/View/ProgressableView;->setSleepingIndicatorText(Ljava/lang/String;)V

    .line 384
    :goto_4
    iget-object v1, v0, Lcn/edu/pku/pkurunner/MainActivity;->p:Lcn/edu/pku/pkurunner/View/ProgressableView;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-interface {v1, v2}, Lcn/edu/pku/pkurunner/View/ProgressableView;->setReferenceTime(Ljava/util/Date;)V

    :goto_5
    return-void

    :cond_7
    :goto_6
    return-void
.end method

.method public setFragmentById(ILandroid/support/v4/app/Fragment;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p2, :cond_0

    .line 808
    check-cast p2, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/MainActivity;->c:Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;

    goto :goto_0

    .line 809
    :cond_0
    new-instance p1, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;

    invoke-direct {p1}, Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->c:Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;

    .line 810
    :goto_0
    new-instance p1, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;

    iget-object p2, p0, Lcn/edu/pku/pkurunner/MainActivity;->c:Lcn/edu/pku/pkurunner/TaskList/TaskListFragment;

    invoke-direct {p1, p2}, Lcn/edu/pku/pkurunner/TaskList/TaskListPresenter;-><init>(Lcn/edu/pku/pkurunner/TaskList/TaskListContract$View;)V

    goto :goto_2

    :pswitch_1
    if-eqz p2, :cond_1

    .line 803
    check-cast p2, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/MainActivity;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    goto :goto_1

    .line 804
    :cond_1
    new-instance p1, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    invoke-direct {p1}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    .line 805
    :goto_1
    new-instance p1, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;

    iget-object p2, p0, Lcn/edu/pku/pkurunner/MainActivity;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    invoke-direct {p1, p2}, Lcn/edu/pku/pkurunner/RecordList/RecordListPresenter;-><init>(Lcn/edu/pku/pkurunner/RecordList/RecordListContract$View;)V

    goto :goto_2

    :pswitch_2
    if-eqz p2, :cond_2

    .line 799
    check-cast p2, Lcn/edu/pku/pkurunner/Map/MapFragment;

    iput-object p2, p0, Lcn/edu/pku/pkurunner/MainActivity;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    goto :goto_2

    .line 800
    :cond_2
    new-instance p1, Lcn/edu/pku/pkurunner/Map/MapFragment;

    invoke-direct {p1}, Lcn/edu/pku/pkurunner/Map/MapFragment;-><init>()V

    iput-object p1, p0, Lcn/edu/pku/pkurunner/MainActivity;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public switchFromRecordListToRunning()V
    .locals 5

    const v0, 0x7f090142

    .line 751
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    .line 752
    iget-object v1, p0, Lcn/edu/pku/pkurunner/MainActivity;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    iget-object v1, p0, Lcn/edu/pku/pkurunner/MainActivity;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "FabX"

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 754
    iget-object v1, p0, Lcn/edu/pku/pkurunner/MainActivity;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    invoke-virtual {v1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "FabY"

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v3, v0

    float-to-int v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 756
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "FabX"

    .line 757
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "FabY"

    .line 758
    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v3, v0

    float-to-int v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 759
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    invoke-virtual {v0, v1}, Lcn/edu/pku/pkurunner/Map/MapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 761
    :goto_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    const v1, 0x7f010011

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcn/edu/pku/pkurunner/MainActivity;->a(Landroid/support/v4/app/Fragment;II)V

    .line 762
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/edu/pku/pkurunner/Map/MapFragment;->shouldRevealAnimation:Z

    const v0, 0x7f090011

    .line 763
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    .line 764
    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f0900c6

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 765
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public switchFromRunningToRecordList()V
    .locals 4

    .line 772
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->d:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcn/edu/pku/pkurunner/MainActivity;->a:Lcn/edu/pku/pkurunner/Map/MapFragment;

    if-eq v0, v1, :cond_0

    const-string v0, "Not in Map state."

    .line 773
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f090140

    .line 775
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x1

    .line 776
    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 777
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 778
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    invoke-virtual {v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "newRecord"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 780
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "newRecord"

    .line 781
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 782
    iget-object v2, p0, Lcn/edu/pku/pkurunner/MainActivity;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    invoke-virtual {v2, v0}, Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 784
    :goto_0
    iget-object v0, p0, Lcn/edu/pku/pkurunner/MainActivity;->b:Lcn/edu/pku/pkurunner/RecordList/RecordListFragment;

    const/4 v2, 0x0

    const v3, 0x7f010010

    invoke-direct {p0, v0, v2, v3}, Lcn/edu/pku/pkurunner/MainActivity;->a(Landroid/support/v4/app/Fragment;II)V

    const v0, 0x7f090011

    .line 785
    invoke-virtual {p0, v0}, Lcn/edu/pku/pkurunner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    .line 786
    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f0900c7

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 787
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method
