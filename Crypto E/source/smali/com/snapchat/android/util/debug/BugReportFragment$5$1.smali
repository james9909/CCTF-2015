.class Lcom/snapchat/android/util/debug/BugReportFragment$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/debug/BugReportFragment$5;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/debug/BugReportFragment$5;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportFragment$5;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$5$1;->a:Lcom/snapchat/android/util/debug/BugReportFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(J)V

    .line 232
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$5$1;->a:Lcom/snapchat/android/util/debug/BugReportFragment$5;

    iget-object v0, v0, Lcom/snapchat/android/util/debug/BugReportFragment$5;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z

    .line 233
    return-void
.end method
