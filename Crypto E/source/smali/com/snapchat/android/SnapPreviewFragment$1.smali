.class Lcom/snapchat/android/SnapPreviewFragment$1;
.super Lcom/snapchat/android/ui/dialog/TwoButtonDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/SnapPreviewFragment;->e()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapPreviewFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapPreviewFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment$1;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 542
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$1;->a:Lcom/snapchat/android/SnapPreviewFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/SnapPreviewFragment;->a(Lcom/snapchat/android/SnapPreviewFragment;Z)Z

    .line 547
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$1;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 549
    :cond_0
    return-void
.end method
