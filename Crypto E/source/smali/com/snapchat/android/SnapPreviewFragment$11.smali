.class Lcom/snapchat/android/SnapPreviewFragment$11;
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
    .line 804
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment$11;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 811
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$11;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->o(Lcom/snapchat/android/SnapPreviewFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$11;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->p(Lcom/snapchat/android/SnapPreviewFragment;)V

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$11;->a:Lcom/snapchat/android/SnapPreviewFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/SnapPreviewFragment;->b(Lcom/snapchat/android/SnapPreviewFragment;Z)Z

    .line 815
    return-void
.end method
