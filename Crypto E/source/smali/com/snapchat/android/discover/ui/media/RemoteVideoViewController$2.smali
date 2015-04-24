.class Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController$2;->a:Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController$2;->a:Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;->a(Lcom/snapchat/android/discover/ui/media/RemoteVideoViewController;)Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0}, Lcom/snapchat/android/discover/ui/media/DSnapMediaListener;->b()V

    .line 178
    :cond_0
    return-void
.end method
