.class public interface abstract Lcom/snapchat/android/networkmanager/internal/DownloadExecutor$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract a(Lcom/snapchat/android/networkmanager/internal/DownloadExecutor;Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/util/memory/DynamicByteBuffer;Lcom/snapchat/android/api2/framework/NetworkResult;Ljava/lang/Object;)V
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
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
.end method
