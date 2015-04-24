.class public Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FriendCheckboxOnClickListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;

.field private final b:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field private final c:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/snapchat/android/model/Friend;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;->a:Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;->b:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 77
    iput-object p3, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;->c:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    .line 78
    iput-object p4, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;->d:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;->e:Lcom/snapchat/android/model/Friend;

    .line 80
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;->a:Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->J:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 88
    if-eqz v1, :cond_1

    .line 89
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    .line 90
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    iget-object v4, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;->e:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v4}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/snapchat/android/analytics/AnalyticsEvents;->k(Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;->a:Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v2, v1}, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->a(ZZ)V

    .line 102
    new-instance v1, Lcom/snapchat/android/api/FriendActionTask;

    iget-object v2, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;->e:Lcom/snapchat/android/model/Friend;

    iget-object v4, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;->a:Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;

    invoke-direct {v1, v2, v0, v4}, Lcom/snapchat/android/api/FriendActionTask;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/api/FriendActionTask$FriendActionCompleteCallback;)V

    iget-object v2, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;->c:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/api/FriendActionTask;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Lcom/snapchat/android/api/FriendActionTask;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;->b:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/api/FriendActionTask;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)Lcom/snapchat/android/api/FriendActionTask;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/api/FriendActionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 106
    iget-object v1, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;->b:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;->e:Lcom/snapchat/android/model/Friend;

    iget-object v3, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;->c:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    iget-object v4, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;)V

    .line 107
    return-void

    .line 94
    :cond_1
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    .line 95
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    iget-object v4, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;->e:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v4}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/snapchat/android/analytics/AnalyticsEvents;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 101
    goto :goto_1
.end method
