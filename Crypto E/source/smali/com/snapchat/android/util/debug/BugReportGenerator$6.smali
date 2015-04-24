.class Lcom/snapchat/android/util/debug/BugReportGenerator$6;
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
    .line 131
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$6;->e:Lcom/snapchat/android/util/debug/BugReportGenerator;

    iput-object p2, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$6;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$6;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$6;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$6;->d:Lcom/snapchat/android/util/debug/ShakeReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$6;->e:Lcom/snapchat/android/util/debug/BugReportGenerator;

    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$6;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/debug/BugReportGenerator;->a(Lcom/snapchat/android/util/debug/BugReportGenerator;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$6;->e:Lcom/snapchat/android/util/debug/BugReportGenerator;

    iget-object v2, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$6;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$6;->b:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/util/debug/BugReportGenerator;->b(Landroid/view/View;Ljava/util/Map;)V

    .line 136
    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$6;->e:Lcom/snapchat/android/util/debug/BugReportGenerator;

    iget-object v2, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$6;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/snapchat/android/util/debug/BugReportGenerator$6;->d:Lcom/snapchat/android/util/debug/ShakeReporter;

    invoke-virtual {v1, v2, v3, v0}, Lcom/snapchat/android/util/debug/BugReportGenerator;->b(Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;Landroid/graphics/Bitmap;)V

    .line 137
    return-void
.end method
