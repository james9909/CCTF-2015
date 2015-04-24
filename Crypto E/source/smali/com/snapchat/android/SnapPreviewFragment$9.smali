.class Lcom/snapchat/android/SnapPreviewFragment$9;
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
    .line 769
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment$9;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 772
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment$9;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 773
    const v1, 0x7f07000e

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment$9;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v2}, Lcom/snapchat/android/SnapPreviewFragment;->k(Lcom/snapchat/android/SnapPreviewFragment;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Lcom/snapchat/android/SnapPreviewFragment$9$1;

    invoke-direct {v3, p0}, Lcom/snapchat/android/SnapPreviewFragment$9$1;-><init>(Lcom/snapchat/android/SnapPreviewFragment$9;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 782
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 783
    return-void
.end method
