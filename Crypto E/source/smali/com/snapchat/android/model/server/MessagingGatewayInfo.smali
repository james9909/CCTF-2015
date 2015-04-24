.class public Lcom/snapchat/android/model/server/MessagingGatewayInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mGatewayAuthToken:Lcom/snapchat/android/model/server/chat/SignedPayload;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gateway_auth_token"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mGatewayServer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gateway_server"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mHost:Ljava/lang/String;

.field private mPort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->mHost:Ljava/lang/String;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->mPort:I

    .line 20
    return-void
.end method

.method private parseServer()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->mGatewayServer:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 51
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->mHost:Ljava/lang/String;

    .line 52
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->mPort:I

    .line 53
    return-void
.end method


# virtual methods
.method public getGatewayAuthToken()Lcom/snapchat/android/model/server/chat/SignedPayload;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->mGatewayAuthToken:Lcom/snapchat/android/model/server/chat/SignedPayload;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->mHost:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->parseServer()V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 34
    iget v0, p0, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->mPort:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->parseServer()V

    .line 37
    :cond_0
    iget v0, p0, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->mPort:I

    return v0
.end method

.method public setGatewayAuthToken(Lcom/snapchat/android/model/server/chat/SignedPayload;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->mGatewayAuthToken:Lcom/snapchat/android/model/server/chat/SignedPayload;

    .line 42
    return-void
.end method

.method public setGatewayServer(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->mGatewayServer:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->parseServer()V

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessagingGatewayInfo{mGatewayAuthToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->mGatewayAuthToken:Lcom/snapchat/android/model/server/chat/SignedPayload;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGatewayServer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->mGatewayServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHost=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/model/server/MessagingGatewayInfo;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
