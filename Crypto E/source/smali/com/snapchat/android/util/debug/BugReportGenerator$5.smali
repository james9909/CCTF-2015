.class Lcom/snapchat/android/util/debug/BugReportGenerator$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/debug/BugReportGenerator;->a(Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/snapchat/android/util/debug/BugReportGenerator;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportGenerator;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$5;->c:Lcom/snapchat/android/util/debug/BugReportGenerator;

    iput-object p2, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$5;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$5;->a:Landroid/app/Activity;

    const-class v2, Lcom/snapchat/android/util/debug/BugReportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const-string v1, "screenshots"

    iget-object v2, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "logs"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "snapchat_shake2report.txt"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "snapchat_shake2report_timber.txt"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$5;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method
