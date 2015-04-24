.class final Lcom/snapchat/android/livechat/AdlHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlHelper;->a()Lcom/snapchat/android/livechat/AdlHelper$AdlWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/addlive/platform/InitState;
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/addlive/platform/ADL;->getInitState()Lcom/addlive/platform/InitState;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/addlive/platform/PlatformInitListener;Lcom/addlive/platform/PlatformInitOptions;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-static {p1, p2, p3}, Lcom/addlive/platform/ADL;->init(Lcom/addlive/platform/PlatformInitListener;Lcom/addlive/platform/PlatformInitOptions;Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public b()Lcom/addlive/service/AddLiveService;
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/addlive/platform/ADL;->getService()Lcom/addlive/service/AddLiveService;

    move-result-object v0

    return-object v0
.end method
