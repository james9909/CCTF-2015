.class Lcom/snapchat/android/util/debug/BugReportFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/debug/BugReportFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/snapchat/android/util/debug/BugReportFragment$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportFragment$1;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1$1;->b:Lcom/snapchat/android/util/debug/BugReportFragment$1;

    iput-object p2, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1$1;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1$1;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v1, "@snapchat.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1$1;->b:Lcom/snapchat/android/util/debug/BugReportFragment$1;

    iget-object v1, v1, Lcom/snapchat/android/util/debug/BugReportFragment$1;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->b(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1$1;->b:Lcom/snapchat/android/util/debug/BugReportFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/util/debug/BugReportFragment$1;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->a(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$1$1;->b:Lcom/snapchat/android/util/debug/BugReportFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/util/debug/BugReportFragment$1;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Please enter a valid @snapchat email!!"

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
