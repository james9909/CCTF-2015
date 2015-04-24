.class public Lcom/snapchat/android/util/EditNameDialog;
.super Lcom/snapchat/android/ui/EditTextDialog;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/model/Friend;

.field private b:Landroid/os/Message;

.field private c:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 60
    const v0, 0x7f0c00fe

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x2001

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/EditTextDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/text/TextWatcher;I)V

    .line 25
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->MY_FRIENDS_POPUP:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/util/EditNameDialog;->c:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 64
    iput-object p2, p0, Lcom/snapchat/android/util/EditNameDialog;->a:Lcom/snapchat/android/model/Friend;

    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Landroid/os/Message;)V
    .locals 6
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 53
    const/4 v4, 0x0

    const/16 v5, 0x2001

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/EditTextDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/text/TextWatcher;I)V

    .line 25
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->MY_FRIENDS_POPUP:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/util/EditNameDialog;->c:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 54
    iput-object p4, p0, Lcom/snapchat/android/util/EditNameDialog;->a:Lcom/snapchat/android/model/Friend;

    .line 55
    iput-object p5, p0, Lcom/snapchat/android/util/EditNameDialog;->b:Landroid/os/Message;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/EditNameDialog;->d:Ljava/lang/Integer;

    .line 57
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/util/EditNameDialog;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/snapchat/android/util/EditNameDialog;->a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;)Lcom/snapchat/android/util/EditNameDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;)Lcom/snapchat/android/util/EditNameDialog;
    .locals 6
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 37
    const v0, 0x7f0c00fe

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 38
    new-instance v0, Lcom/snapchat/android/util/EditNameDialog;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/util/EditNameDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Landroid/os/Message;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)Lcom/snapchat/android/util/EditNameDialog;
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/snapchat/android/util/EditNameDialog;->c:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 48
    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/util/EditNameDialog;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/snapchat/android/util/EditNameDialog;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1, p1}, Lcom/snapchat/android/model/Friend;->d(Ljava/lang/String;)V

    .line 71
    new-instance v1, Lcom/snapchat/android/api/FriendActionTask;

    iget-object v2, p0, Lcom/snapchat/android/util/EditNameDialog;->a:Lcom/snapchat/android/model/Friend;

    sget-object v3, Lcom/snapchat/android/model/FriendAction;->SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

    invoke-direct {v1, v2, v3, v0}, Lcom/snapchat/android/api/FriendActionTask;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snapchat/android/util/EditNameDialog;->b:Landroid/os/Message;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/api/FriendActionTask;->a(Landroid/os/Message;)Lcom/snapchat/android/api/FriendActionTask;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/EditNameDialog;->c:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api/FriendActionTask;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)Lcom/snapchat/android/api/FriendActionTask;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/FriendActionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    return-void
.end method
