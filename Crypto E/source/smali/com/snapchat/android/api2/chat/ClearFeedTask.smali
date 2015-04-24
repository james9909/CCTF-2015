.class public Lcom/snapchat/android/api2/chat/ClearFeedTask;
.super Lcom/snapchat/android/api2/framework/BasicScRequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/chat/ClearFeedTask$ClearFeedTaskCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/snapchat/android/api2/chat/ClearFeedTask$ClearFeedTaskCallback;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api2/chat/ClearFeedTask$ClearFeedTaskCallback;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/snapchat/android/api2/chat/ClearFeedTask;->mCallback:Lcom/snapchat/android/api2/chat/ClearFeedTask$ClearFeedTaskCallback;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;->a(Lcom/snapchat/android/api2/framework/NetworkResult;)V

    .line 31
    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/ClearFeedTask;->mCallback:Lcom/snapchat/android/api2/chat/ClearFeedTask$ClearFeedTaskCallback;

    invoke-interface {v0}, Lcom/snapchat/android/api2/chat/ClearFeedTask$ClearFeedTaskCallback;->a()V

    .line 36
    :goto_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 37
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/ClearFeedTask;->mCallback:Lcom/snapchat/android/api2/chat/ClearFeedTask$ClearFeedTaskCallback;

    invoke-interface {v0}, Lcom/snapchat/android/api2/chat/ClearFeedTask$ClearFeedTaskCallback;->b()V

    goto :goto_0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "/loq/clear_feed"

    return-object v0
.end method
