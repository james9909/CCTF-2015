.class public Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;
.super Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/SnapStateMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mReplayed:Z

.field private mScreenshotCount:J

.field private mSnapId:Ljava/lang/String;

.field private mTimestamp:J

.field private mViewed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/snapchat/android/model/server/chat/SignedPayload;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    const-string v0, "snap_state"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;)J
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->mTimestamp:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->mSnapId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->mViewed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->mReplayed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;)J
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->mScreenshotCount:J

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/snapchat/android/model/server/chat/SCMessage;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->build()Lcom/snapchat/android/model/server/chat/SnapStateMessage;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/snapchat/android/model/server/chat/SnapStateMessage;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/snapchat/android/model/server/chat/SnapStateMessage;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/server/chat/SnapStateMessage;-><init>(Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;)V

    return-object v0
.end method

.method public setReplayed(Z)Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->mReplayed:Z

    .line 97
    return-object p0
.end method

.method public setScreenshotCount(J)Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->mScreenshotCount:J

    .line 102
    return-object p0
.end method

.method public setSnapId(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->mSnapId:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public setTimestamp(J)Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->mTimestamp:J

    .line 82
    return-object p0
.end method

.method public setViewed(Z)Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->mViewed:Z

    .line 92
    return-object p0
.end method
