.class Lcom/snapchat/android/util/SnapListItemHandler$OpenBroadcastSnapUrlRunnable;
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
    name = "OpenBroadcastSnapUrlRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/SnapListItemHandler;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/SnapListItemHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenBroadcastSnapUrlRunnable;->a:Lcom/snapchat/android/util/SnapListItemHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput-object p2, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenBroadcastSnapUrlRunnable;->b:Ljava/lang/String;

    .line 563
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenBroadcastSnapUrlRunnable;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->d(Ljava/lang/String;)V

    .line 568
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/snapchat/android/util/SnapListItemHandler$OpenBroadcastSnapUrlRunnable;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 569
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 570
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/SnapchatApplication;->startActivity(Landroid/content/Intent;)V

    .line 571
    return-void
.end method
