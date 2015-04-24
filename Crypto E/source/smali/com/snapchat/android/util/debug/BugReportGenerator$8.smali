.class Lcom/snapchat/android/util/debug/BugReportGenerator$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/debug/BugReportGenerator;->b(Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/snapchat/android/util/debug/ShakeReporter;

.field final synthetic c:Landroid/graphics/Bitmap;

.field final synthetic d:Lcom/snapchat/android/util/debug/BugReportGenerator;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportGenerator;Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$8;->d:Lcom/snapchat/android/util/debug/BugReportGenerator;

    iput-object p2, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$8;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$8;->b:Lcom/snapchat/android/util/debug/ShakeReporter;

    iput-object p4, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$8;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$8;->d:Lcom/snapchat/android/util/debug/BugReportGenerator;

    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$8;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$8;->b:Lcom/snapchat/android/util/debug/ShakeReporter;

    iget-object v3, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$8;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/util/debug/BugReportGenerator;->a(Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;Landroid/graphics/Bitmap;)V

    .line 263
    return-void
.end method
