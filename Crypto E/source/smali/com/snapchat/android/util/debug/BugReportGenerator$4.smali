.class Lcom/snapchat/android/util/debug/BugReportGenerator$4;
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
.field final synthetic a:Lcom/snapchat/android/util/debug/ShakeReporter;

.field final synthetic b:Lcom/snapchat/android/util/debug/BugReportGenerator;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportGenerator;Lcom/snapchat/android/util/debug/ShakeReporter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$4;->b:Lcom/snapchat/android/util/debug/BugReportGenerator;

    iput-object p2, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$4;->a:Lcom/snapchat/android/util/debug/ShakeReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$4;->a:Lcom/snapchat/android/util/debug/ShakeReporter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/debug/ShakeReporter;->a(Z)V

    .line 109
    return-void
.end method
