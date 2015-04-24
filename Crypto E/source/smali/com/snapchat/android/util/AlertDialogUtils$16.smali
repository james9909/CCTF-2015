.class final Lcom/snapchat/android/util/AlertDialogUtils$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Landroid/os/Message;

.field final synthetic c:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/snapchat/android/util/AlertDialogUtils$16;->a:Lcom/snapchat/android/model/Friend;

    iput-object p2, p0, Lcom/snapchat/android/util/AlertDialogUtils$16;->b:Landroid/os/Message;

    iput-object p3, p0, Lcom/snapchat/android/util/AlertDialogUtils$16;->c:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 403
    new-instance v0, Lcom/snapchat/android/api/FriendActionTask;

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$16;->a:Lcom/snapchat/android/model/Friend;

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->UNBLOCK:Lcom/snapchat/android/model/FriendAction;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api/FriendActionTask;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$16;->b:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api/FriendActionTask;->a(Landroid/os/Message;)Lcom/snapchat/android/api/FriendActionTask;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$16;->c:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api/FriendActionTask;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)Lcom/snapchat/android/api/FriendActionTask;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/FriendActionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 406
    return-void
.end method
