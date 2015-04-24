.class Lcom/snapchat/android/util/debug/BugReportFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/debug/BugReportFragment;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/debug/BugReportFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$5;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 217
    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$5;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->g(Lcom/snapchat/android/util/debug/BugReportFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$5;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->f(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 238
    :goto_0
    return v0

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$5;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v1, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z

    .line 228
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/snapchat/android/util/debug/BugReportFragment$5$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$5$1;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment$5;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 238
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
