.class public Lcom/snapchat/android/screenshotdetection/SnapViewingSession;
.super Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/screenshotdetection/SnapViewingSession;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;-><init>(Ljava/lang/String;JJ)V

    .line 26
    iput-object p2, p0, Lcom/snapchat/android/screenshotdetection/SnapViewingSession;->b:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snapchat/android/screenshotdetection/SnapViewingSession;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 42
    invoke-virtual {p0}, Lcom/snapchat/android/screenshotdetection/SnapViewingSession;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/screenshotdetection/SnapViewingSession;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/chat/ConversationUtils;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/model/Snap;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    .line 43
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->B()V

    .line 46
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/ReceivedSnap;Z)V

    .line 56
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/screenshotdetection/SnapViewingSession;->a:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->c()I

    .line 57
    return-void

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/screenshotdetection/SnapViewingSession;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/SnapUtils;->a(Ljava/lang/String;)Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    new-instance v1, Lcom/snapchat/android/model/StoryViewRecord;

    iget-object v2, p0, Lcom/snapchat/android/screenshotdetection/SnapViewingSession;->b:Ljava/lang/String;

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/snapchat/android/model/StoryViewRecord;-><init>(Ljava/lang/String;JI)V

    invoke-static {v1}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/StoryViewRecord;)V

    .line 52
    invoke-static {v0, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/ReceivedSnap;Z)V

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/screenshotdetection/SnapViewingSession;->b:Ljava/lang/String;

    return-object v0
.end method
