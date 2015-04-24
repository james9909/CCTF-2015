.class public Lcom/snapchat/android/livechat/AdlHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;,
        Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;,
        Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;,
        Lcom/snapchat/android/livechat/AdlHelper$ConnectionState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method static a(Lcom/addlive/platform/PlatformInitListener;Landroid/os/Handler;)Lcom/addlive/platform/PlatformInitListener;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 160
    new-instance v0, Lcom/snapchat/android/livechat/AdlHelper$3;

    invoke-direct {v0, p1, p0}, Lcom/snapchat/android/livechat/AdlHelper$3;-><init>(Landroid/os/Handler;Lcom/addlive/platform/PlatformInitListener;)V

    return-object v0
.end method

.method static a(Lcom/addlive/service/Responder;Landroid/os/Handler;)Lcom/addlive/service/Responder;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/addlive/service/Responder",
            "<TT;>;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/addlive/service/Responder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lcom/snapchat/android/livechat/AdlHelper$2;

    invoke-direct {v0, p1, p0}, Lcom/snapchat/android/livechat/AdlHelper$2;-><init>(Landroid/os/Handler;Lcom/addlive/service/Responder;)V

    return-object v0
.end method

.method static a()Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/snapchat/android/livechat/AdlHelper$1;

    invoke-direct {v0}, Lcom/snapchat/android/livechat/AdlHelper$1;-><init>()V

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;

    invoke-direct {v0, p0}, Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
