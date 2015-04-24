.class Lcom/snapchat/android/SnapPreviewFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/SnapPreviewFragment;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapPreviewFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment$3;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 715
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$3;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->b(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/ui/SnapEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$3;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->b(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/ui/SnapEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$3;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->b(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/ui/SnapEditorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e()V

    .line 722
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$3;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->b(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/ui/SnapEditorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->b(Z)V

    goto :goto_0
.end method
