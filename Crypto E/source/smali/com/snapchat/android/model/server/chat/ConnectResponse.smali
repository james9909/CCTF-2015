.class public Lcom/snapchat/android/model/server/chat/ConnectResponse;
.super Lcom/snapchat/android/model/server/chat/SCMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/server/chat/ConnectResponse$Server;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "connect_response"


# instance fields
.field private alternative_server:Lcom/snapchat/android/model/server/chat/ConnectResponse$Server;

.field private failure_reason:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "connect_response"

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/server/chat/SCMessage;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getAlternativeServer()Lcom/snapchat/android/model/server/chat/ConnectResponse$Server;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ConnectResponse;->alternative_server:Lcom/snapchat/android/model/server/chat/ConnectResponse$Server;

    return-object v0
.end method

.method public getFailureReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/ConnectResponse;->failure_reason:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/snapchat/android/model/server/chat/ConnectResponse;->success:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectResponse{success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/model/server/chat/ConnectResponse;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failure_reason=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ConnectResponse;->failure_reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alternative_server="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ConnectResponse;->alternative_server:Lcom/snapchat/android/model/server/chat/ConnectResponse$Server;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
