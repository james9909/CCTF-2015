.class Lcom/snapchat/android/util/SnapListItemHandler$DelayedFutureTaskRunnable;
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
    name = "DelayedFutureTaskRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/SnapListItemHandler;

.field private b:Lcom/snapchat/android/model/ReceivedSnap;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/SnapListItemHandler;Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/snapchat/android/util/SnapListItemHandler$DelayedFutureTaskRunnable;->a:Lcom/snapchat/android/util/SnapListItemHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-object p2, p0, Lcom/snapchat/android/util/SnapListItemHandler$DelayedFutureTaskRunnable;->b:Lcom/snapchat/android/model/ReceivedSnap;

    .line 401
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/model/ReceivedSnap;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$DelayedFutureTaskRunnable;->b:Lcom/snapchat/android/model/ReceivedSnap;

    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$DelayedFutureTaskRunnable;->b:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->ah()V

    .line 406
    return-void
.end method
