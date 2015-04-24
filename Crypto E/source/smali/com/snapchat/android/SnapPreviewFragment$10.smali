.class Lcom/snapchat/android/SnapPreviewFragment$10;
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
    .line 787
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment$10;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 790
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$10;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->l(Lcom/snapchat/android/SnapPreviewFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 799
    :goto_0
    return-void

    .line 793
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryLibrary;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 794
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$10;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->m(Lcom/snapchat/android/SnapPreviewFragment;)V

    goto :goto_0

    .line 796
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$10;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->n(Lcom/snapchat/android/SnapPreviewFragment;)V

    goto :goto_0
.end method
