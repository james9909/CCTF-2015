.class Lcom/snapchat/android/ads/AdManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ads/AdManager;->a(Lcom/snapchat/android/ads/AdPlacement;Lcom/snapchat/android/ads/AdTransformListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ads/AdPlacement;

.field final synthetic b:Lcom/snapchat/android/ads/AdTransformListener;

.field final synthetic c:Lcom/snapchat/android/ads/AdManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ads/AdManager;Lcom/snapchat/android/ads/AdPlacement;Lcom/snapchat/android/ads/AdTransformListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/snapchat/android/ads/AdManager$2;->c:Lcom/snapchat/android/ads/AdManager;

    iput-object p2, p0, Lcom/snapchat/android/ads/AdManager$2;->a:Lcom/snapchat/android/ads/AdPlacement;

    iput-object p3, p0, Lcom/snapchat/android/ads/AdManager$2;->b:Lcom/snapchat/android/ads/AdTransformListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager$2;->c:Lcom/snapchat/android/ads/AdManager;

    iget-object v1, p0, Lcom/snapchat/android/ads/AdManager$2;->a:Lcom/snapchat/android/ads/AdPlacement;

    iget-object v2, p0, Lcom/snapchat/android/ads/AdManager$2;->b:Lcom/snapchat/android/ads/AdTransformListener;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ads/AdManager;->c(Lcom/snapchat/android/ads/AdPlacement;Lcom/snapchat/android/ads/AdTransformListener;)Lcom/snapchat/android/ads/AdManager$AdResponseController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    iget-object v1, p0, Lcom/snapchat/android/ads/AdManager$2;->b:Lcom/snapchat/android/ads/AdTransformListener;

    if-eqz v1, :cond_0

    .line 120
    new-instance v1, Lcom/snapchat/android/ads/AdTransformResponse$Builder;

    invoke-direct {v1}, Lcom/snapchat/android/ads/AdTransformResponse$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ads/AdTransformResponse$Builder;->a(Ljava/lang/Exception;)Lcom/snapchat/android/ads/AdTransformResponse$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ads/AdTransformResponse$Builder;->a()Lcom/snapchat/android/ads/AdTransformResponse;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/snapchat/android/ads/AdManager$2;->b:Lcom/snapchat/android/ads/AdTransformListener;

    iget-object v2, p0, Lcom/snapchat/android/ads/AdManager$2;->a:Lcom/snapchat/android/ads/AdPlacement;

    invoke-interface {v1, v2, v0}, Lcom/snapchat/android/ads/AdTransformListener;->a(Lcom/snapchat/android/ads/AdPlacement;Lcom/snapchat/android/ads/AdTransformResponse;)V

    goto :goto_0

    .line 124
    :cond_0
    const-string v1, "AdManager"

    const-string v2, "transformAsync error:%s for adPlaceholder:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/snapchat/android/ads/AdManager$2;->a:Lcom/snapchat/android/ads/AdPlacement;

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
