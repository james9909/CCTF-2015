.class public Lcom/snapchat/android/screenshotdetection/ChatViewingSession;
.super Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/screenshotdetection/ChatViewingSession;-><init>(Ljava/lang/String;JJ)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;-><init>(Ljava/lang/String;JJ)V

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    return-object v0
.end method

.method public a(J)V
    .locals 5
    .parameter

    .prologue
    .line 36
    const-string v0, "ChatViewingSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenshotDetected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p0}, Lcom/snapchat/android/screenshotdetection/ChatViewingSession;->b()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v1

    .line 41
    if-nez v1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v2, Lcom/snapchat/android/model/chat/ChatScreenshot$Builder;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/snapchat/android/model/chat/ChatScreenshot$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatScreenshot$Builder;->a()Lcom/snapchat/android/model/chat/ChatScreenshot;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/model/chat/ChatScreenshot;->c(J)V

    .line 45
    invoke-static {}, Lcom/snapchat/android/chat/SendingMailman;->a()Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/ChatScreenshot;)V

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/screenshotdetection/ChatViewingSession;->a:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->c()I

    goto :goto_0
.end method
