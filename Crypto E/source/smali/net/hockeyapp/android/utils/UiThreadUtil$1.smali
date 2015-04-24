.class Lnet/hockeyapp/android/utils/UiThreadUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/utils/UiThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:I


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lnet/hockeyapp/android/utils/UiThreadUtil$1;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/utils/UiThreadUtil$1;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lnet/hockeyapp/android/utils/UiThreadUtil$1;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 41
    :cond_0
    iget-object v0, p0, Lnet/hockeyapp/android/utils/UiThreadUtil$1;->b:Landroid/app/Activity;

    iget v1, p0, Lnet/hockeyapp/android/utils/UiThreadUtil$1;->c:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 42
    return-void
.end method
