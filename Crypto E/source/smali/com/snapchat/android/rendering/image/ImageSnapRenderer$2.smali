.class Lcom/snapchat/android/rendering/image/ImageSnapRenderer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/rendering/image/ImageSnapRenderer;


# direct methods
.method constructor <init>(Lcom/snapchat/android/rendering/image/ImageSnapRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$2;->a:Lcom/snapchat/android/rendering/image/ImageSnapRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$2;->a:Lcom/snapchat/android/rendering/image/ImageSnapRenderer;

    invoke-static {v0}, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->c(Lcom/snapchat/android/rendering/image/ImageSnapRenderer;)Lcom/snapchat/android/analytics/SnapViewEventAnalytics;

    move-result-object v0

    const-string v1, "DelayToShowImage"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics;->b(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/snapchat/android/rendering/image/ImageSnapRenderer$2;->a:Lcom/snapchat/android/rendering/image/ImageSnapRenderer;

    invoke-static {v0}, Lcom/snapchat/android/rendering/image/ImageSnapRenderer;->d(Lcom/snapchat/android/rendering/image/ImageSnapRenderer;)Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Lcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;->a()V

    .line 142
    :cond_0
    return-void
.end method
