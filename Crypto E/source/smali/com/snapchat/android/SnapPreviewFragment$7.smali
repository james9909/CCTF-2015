.class Lcom/snapchat/android/SnapPreviewFragment$7;
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
    .line 744
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment$7;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 747
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$7;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->e(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/model/AnnotatedMediabryo;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$7;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->f(Lcom/snapchat/android/SnapPreviewFragment;)V

    .line 752
    :goto_0
    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$7;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->g(Lcom/snapchat/android/SnapPreviewFragment;)V

    goto :goto_0
.end method
