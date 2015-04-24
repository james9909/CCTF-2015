.class Lcom/snapchat/android/ui/SnapEditorView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/SnapEditorView;->c(Lcom/snapchat/android/model/Snapbryo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/SnapEditorView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/SnapEditorView;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView$2;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$2;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-static {v0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/ui/SnapEditorView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 352
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 353
    new-instance v0, Lcom/snapchat/android/ui/SnapEditorView$2$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/SnapEditorView$2$1;-><init>(Lcom/snapchat/android/ui/SnapEditorView$2;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 359
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$2;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-static {v0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->b(Lcom/snapchat/android/ui/SnapEditorView;Landroid/media/MediaPlayer;)V

    .line 360
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$2;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-static {v0}, Lcom/snapchat/android/ui/SnapEditorView;->b(Lcom/snapchat/android/ui/SnapEditorView;)Lcom/snapchat/android/ui/SnapVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->requestLayout()V

    .line 361
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView$2;->a:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView$2;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-static {v1}, Lcom/snapchat/android/ui/SnapEditorView;->c(Lcom/snapchat/android/ui/SnapEditorView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->a(Z)V

    .line 362
    return-void
.end method
