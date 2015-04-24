.class public abstract Lcom/snapchat/android/screenshotdetection/ScreenshotWatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotWatcher;->a:Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotWatcher;->a:Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;

    invoke-virtual {v0}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotWatcher;->a:Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;

    invoke-virtual {v0}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->c()V

    .line 14
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/screenshotdetection/ScreenshotWatcher;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public c()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotWatcher;->a:Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotWatcher;->a:Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;

    invoke-virtual {v0}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->c()V

    .line 23
    :cond_0
    return-void
.end method
