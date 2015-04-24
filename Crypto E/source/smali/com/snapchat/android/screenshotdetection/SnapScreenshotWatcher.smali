.class public Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;
.super Lcom/snapchat/android/screenshotdetection/ScreenshotWatcher;
.source "SourceFile"


# static fields
.field private static b:Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/snapchat/android/screenshotdetection/ScreenshotWatcher;-><init>()V

    return-void
.end method

.method public static a()Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;->b:Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;

    invoke-direct {v0}, Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;-><init>()V

    sput-object v0, Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;->b:Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;

    .line 18
    :cond_0
    sget-object v0, Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;->b:Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;

    return-object v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;->b:Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v0, Lcom/snapchat/android/screenshotdetection/SnapViewingSession;

    invoke-direct {v0, p1, p2}, Lcom/snapchat/android/screenshotdetection/SnapViewingSession;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;->a:Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;

    .line 28
    invoke-static {}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->a()Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/screenshotdetection/SnapScreenshotWatcher;->a:Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->a(Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;)V

    .line 29
    return-void
.end method
