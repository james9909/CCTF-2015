.class Lcom/snapchat/android/util/debug/BugReportFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/debug/BugReportFragment;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/snapchat/android/util/debug/BugReportFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$7;->b:Lcom/snapchat/android/util/debug/BugReportFragment;

    iput p2, p0, Lcom/snapchat/android/util/debug/BugReportFragment$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$7;->b:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->j(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$7;->b:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$7;->b:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 269
    iget v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$7;->a:I

    new-instance v2, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;

    invoke-direct {v2}, Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "BugReportRemoteLogListFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 273
    const-string v1, "BugReportFragment"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$7;->b:Lcom/snapchat/android/util/debug/BugReportFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->a(Lcom/snapchat/android/util/debug/BugReportFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$7;->b:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->k(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "Remote Log"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
