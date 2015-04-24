.class Lcom/snapchat/android/util/debug/BugReportFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 242
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$6;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 248
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$6;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->h(Lcom/snapchat/android/util/debug/BugReportFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$6;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0, v2}, Lcom/snapchat/android/util/debug/BugReportFragment;->d(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z

    .line 250
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$6;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->i(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-gt v0, v3, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$6;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->h(Lcom/snapchat/android/util/debug/BugReportFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$6;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->d(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z

    .line 253
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$6;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->i(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    return-void
.end method
