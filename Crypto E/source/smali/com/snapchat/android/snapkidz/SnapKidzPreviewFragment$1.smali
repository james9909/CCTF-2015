.class Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$1;
.super Lcom/snapchat/android/ui/dialog/TwoButtonDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->e()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$1;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$1;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;Z)Z

    .line 238
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$1;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    .line 239
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$1;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 240
    return-void
.end method
