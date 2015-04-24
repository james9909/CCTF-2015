.class Lcom/snapchat/android/util/debug/BugReportGenerator$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/debug/BugReportGenerator;->b(Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/snapchat/android/util/debug/ShakeReporter;

.field final synthetic e:Lcom/snapchat/android/util/debug/BugReportGenerator;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportGenerator;Landroid/view/View;Ljava/util/Map;Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$7;->e:Lcom/snapchat/android/util/debug/BugReportGenerator;

    iput-object p2, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$7;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$7;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$7;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$7;->d:Lcom/snapchat/android/util/debug/ShakeReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 144
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$7;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$7;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$7;->a:Landroid/view/View;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/DrawingUtils;->a(II[Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$7;->e:Lcom/snapchat/android/util/debug/BugReportGenerator;

    iget-object v2, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$7;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$7;->b:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/util/debug/BugReportGenerator;->b(Landroid/view/View;Ljava/util/Map;)V

    .line 147
    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$7;->e:Lcom/snapchat/android/util/debug/BugReportGenerator;

    iget-object v2, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$7;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$7;->d:Lcom/snapchat/android/util/debug/ShakeReporter;

    invoke-virtual {v1, v2, v3, v0}, Lcom/snapchat/android/util/debug/BugReportGenerator;->b(Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;Landroid/graphics/Bitmap;)V

    .line 148
    return-void
.end method
