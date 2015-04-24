.class Lcom/snapchat/android/util/SnapListItemHandler$ReplaySnapRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/SnapListItemHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReplaySnapRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/SnapListItemHandler;

.field private b:Lcom/snapchat/android/model/ReceivedSnap;

.field private c:Landroid/content/Context;

.field private d:Lcom/snapchat/android/model/ChronologicalSnapProvider;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/SnapListItemHandler;Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/snapchat/android/util/SnapListItemHandler$ReplaySnapRunnable;->a:Lcom/snapchat/android/util/SnapListItemHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p2, p0, Lcom/snapchat/android/util/SnapListItemHandler$ReplaySnapRunnable;->b:Lcom/snapchat/android/model/ReceivedSnap;

    .line 448
    iput-object p4, p0, Lcom/snapchat/android/util/SnapListItemHandler$ReplaySnapRunnable;->c:Landroid/content/Context;

    .line 449
    iput-object p3, p0, Lcom/snapchat/android/util/SnapListItemHandler$ReplaySnapRunnable;->d:Lcom/snapchat/android/model/ChronologicalSnapProvider;

    .line 450
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 454
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler$ReplaySnapRunnable;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/snapchat/android/util/SnapListItemHandler$ReplaySnapRunnable;->b:Lcom/snapchat/android/model/ReceivedSnap;

    iget-object v3, p0, Lcom/snapchat/android/util/SnapListItemHandler$ReplaySnapRunnable;->d:Lcom/snapchat/android/model/ChronologicalSnapProvider;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;)V

    .line 457
    iget-object v1, p0, Lcom/snapchat/android/util/SnapListItemHandler$ReplaySnapRunnable;->b:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-static {v1, v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/User;)V

    .line 459
    :cond_0
    return-void
.end method
