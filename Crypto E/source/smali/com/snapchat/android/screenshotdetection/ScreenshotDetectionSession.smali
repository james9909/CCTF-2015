.class public abstract Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/snapchat/android/service/SnapchatServiceManager;

.field private final b:Ljava/lang/String;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;-><init>(Ljava/lang/String;JJLcom/snapchat/android/service/SnapchatServiceManager;)V

    .line 21
    return-void
.end method

.method constructor <init>(Ljava/lang/String;JJLcom/snapchat/android/service/SnapchatServiceManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->b:Ljava/lang/String;

    .line 26
    iput-wide p2, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->c:J

    .line 27
    iput-wide p4, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->d:J

    .line 28
    iput-object p6, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->a:Lcom/snapchat/android/service/SnapchatServiceManager;

    .line 29
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(J)V
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 3
    .parameter

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->c:J

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->d:J

    .line 38
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->d:J

    .line 45
    return-void
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->c:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->d:J

    return-wide v0
.end method
