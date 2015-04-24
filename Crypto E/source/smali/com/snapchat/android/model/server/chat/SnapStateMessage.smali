.class public Lcom/snapchat/android/model/server/chat/SnapStateMessage;
.super Lcom/snapchat/android/model/server/chat/ConversationMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "snap_state"


# instance fields
.field private replayed:Z

.field private screenshot_count:J

.field private snap_id:Ljava/lang/String;

.field private timestamp:J

.field private viewed:Z


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;)V
    .locals 2
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;-><init>(Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;)V

    .line 20
    #getter for: Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->mTimestamp:J
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->access$000(Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->timestamp:J

    .line 21
    #getter for: Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->mSnapId:Ljava/lang/String;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->access$100(Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->snap_id:Ljava/lang/String;

    .line 22
    #getter for: Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->mViewed:Z
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->access$200(Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->viewed:Z

    .line 23
    #getter for: Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->mReplayed:Z
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->access$300(Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->replayed:Z

    .line 24
    #getter for: Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->mScreenshotCount:J
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;->access$400(Lcom/snapchat/android/model/server/chat/SnapStateMessage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->screenshot_count:J

    .line 25
    return-void
.end method


# virtual methods
.method public canSendOverHTTP()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getScreenshotCount()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->screenshot_count:J

    return-wide v0
.end method

.method public getSnapId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->snap_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->timestamp:J

    return-wide v0
.end method

.method public isReplayed()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->replayed:Z

    return v0
.end method

.method public isViewed()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->viewed:Z

    return v0
.end method

.method public needsACK()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SnapStateMessage{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", snap_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->snap_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->viewed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", replayed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->replayed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenshot_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->screenshot_count:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", conv_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/server/chat/SnapStateMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConvId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
