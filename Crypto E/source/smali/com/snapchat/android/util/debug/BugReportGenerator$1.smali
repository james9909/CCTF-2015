.class Lcom/snapchat/android/util/debug/BugReportGenerator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/debug/BugReportGenerator;->a(Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/snapchat/android/util/debug/ShakeReporter;

.field final synthetic c:Lcom/snapchat/android/util/debug/BugReportGenerator;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportGenerator;Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$1;->c:Lcom/snapchat/android/util/debug/BugReportGenerator;

    iput-object p2, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$1;->b:Lcom/snapchat/android/util/debug/ShakeReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$1;->c:Lcom/snapchat/android/util/debug/BugReportGenerator;

    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$1;->b:Lcom/snapchat/android/util/debug/ShakeReporter;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/debug/BugReportGenerator;->b(Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;)V

    .line 48
    return-void
.end method
