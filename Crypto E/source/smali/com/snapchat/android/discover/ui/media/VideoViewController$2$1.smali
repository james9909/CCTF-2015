.class Lcom/snapchat/android/discover/ui/media/VideoViewController$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/media/VideoViewController$2;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

.field final synthetic b:Lcom/snapchat/android/discover/ui/media/VideoViewController$2;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/media/VideoViewController$2;Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController$2$1;->b:Lcom/snapchat/android/discover/ui/media/VideoViewController$2;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController$2$1;->a:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/VideoViewController$2$1;->a:Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;->b()V

    .line 178
    return-void
.end method
