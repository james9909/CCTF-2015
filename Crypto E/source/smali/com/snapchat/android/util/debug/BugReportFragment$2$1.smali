.class Lcom/snapchat/android/util/debug/BugReportFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/debug/BugReportFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/debug/BugReportFragment$2;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$2$1;->a:Lcom/snapchat/android/util/debug/BugReportFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$2$1;->a:Lcom/snapchat/android/util/debug/BugReportFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/util/debug/BugReportFragment$2;->b:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->d(Lcom/snapchat/android/util/debug/BugReportFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$2$1;->a:Lcom/snapchat/android/util/debug/BugReportFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/util/debug/BugReportFragment$2;->b:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->b(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z

    .line 174
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$2$1;->a:Lcom/snapchat/android/util/debug/BugReportFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/util/debug/BugReportFragment$2;->b:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->e(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    :cond_0
    return-void
.end method
