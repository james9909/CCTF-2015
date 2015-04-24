.class Lcom/snapchat/android/rendering/video/VideoSnapRenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/rendering/video/VideoSnapResourceLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->a(Lcom/snapchat/android/model/ReceivedSnap;ZLcom/snapchat/android/rendering/SnapMediaRenderer$SnapRendererListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;


# direct methods
.method constructor <init>(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$1;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/rendering/video/VideoSnapResources;)V
    .locals 5
    .parameter

    .prologue
    .line 166
    invoke-static {}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Async loading complete for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/rendering/video/VideoSnapResources;->a()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapRenderer$1;->a:Lcom/snapchat/android/rendering/video/VideoSnapRenderer;

    invoke-static {v0, p1}, Lcom/snapchat/android/rendering/video/VideoSnapRenderer;->a(Lcom/snapchat/android/rendering/video/VideoSnapRenderer;Lcom/snapchat/android/rendering/video/VideoSnapResources;)V

    .line 168
    return-void
.end method
