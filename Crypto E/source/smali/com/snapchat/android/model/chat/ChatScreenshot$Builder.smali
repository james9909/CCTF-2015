.class public Lcom/snapchat/android/model/chat/ChatScreenshot$Builder;
.super Lcom/snapchat/android/model/chat/Chat$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/chat/ChatScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/model/chat/Chat$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/model/chat/ChatScreenshot;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/snapchat/android/model/chat/ChatScreenshot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/model/chat/ChatScreenshot;-><init>(Lcom/snapchat/android/model/chat/ChatScreenshot$Builder;Lcom/snapchat/android/model/chat/ChatScreenshot$1;)V

    return-object v0
.end method
