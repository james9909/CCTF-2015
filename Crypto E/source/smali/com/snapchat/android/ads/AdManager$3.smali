.class Lcom/snapchat/android/ads/AdManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ads/AdManager;->a(Lcom/snapchat/android/ads/AdPlacement;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snapchat/android/ads/AdManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ads/AdManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/snapchat/android/ads/AdManager$3;->b:Lcom/snapchat/android/ads/AdManager;

    iput-object p2, p0, Lcom/snapchat/android/ads/AdManager$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ads/AdManager$3;->b:Lcom/snapchat/android/ads/AdManager;

    iget-object v1, p0, Lcom/snapchat/android/ads/AdManager$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ads/AdManager;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string v1, "AdManager"

    const-string v2, "EndAdSplash for adKey:%s threw exception:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/snapchat/android/ads/AdManager$3;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
