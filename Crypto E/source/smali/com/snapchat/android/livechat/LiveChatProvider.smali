.class public interface abstract Lcom/snapchat/android/livechat/LiveChatProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/app/Activity;Lcom/snapchat/android/livechat/LiveChatProvider$LiveChatProviderCallback;Lcom/snapchat/android/analytics/HereAnalytics;)V
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
.end method

.method public abstract a(Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;)V
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
.end method

.method public abstract a(Lcom/snapchat/android/ui/here/DisconnectReason;Z)V
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public abstract a([BLcom/addlive/service/AddLiveService$VideoFrameMetadata;)V
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
.end method

.method public abstract b()Z
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method
