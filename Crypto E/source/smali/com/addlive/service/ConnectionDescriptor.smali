.class public Lcom/addlive/service/ConnectionDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private authDetails:Lcom/addlive/service/AuthDetails;

.field private autopublishAudio:Z

.field private autopublishVideo:Z

.field private scopeId:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private videoStream:Lcom/addlive/service/VideoStreamDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishVideo:Z

    .line 24
    iput-boolean v0, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishAudio:Z

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->url:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->scopeId:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/addlive/service/VideoStreamDescriptor;

    invoke-direct {v0}, Lcom/addlive/service/VideoStreamDescriptor;-><init>()V

    iput-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->videoStream:Lcom/addlive/service/VideoStreamDescriptor;

    .line 28
    new-instance v0, Lcom/addlive/service/AuthDetails;

    invoke-direct {v0}, Lcom/addlive/service/AuthDetails;-><init>()V

    iput-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->authDetails:Lcom/addlive/service/AuthDetails;

    .line 34
    return-void
.end method


# virtual methods
.method public getAuthDetails()Lcom/addlive/service/AuthDetails;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->authDetails:Lcom/addlive/service/AuthDetails;

    return-object v0
.end method

.method public getScopeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->scopeId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoStream()Lcom/addlive/service/VideoStreamDescriptor;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/addlive/service/ConnectionDescriptor;->videoStream:Lcom/addlive/service/VideoStreamDescriptor;

    return-object v0
.end method

.method public isAutopublishAudio()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishAudio:Z

    return v0
.end method

.method public isAutopublishVideo()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishVideo:Z

    return v0
.end method

.method public setAuthDetails(Lcom/addlive/service/AuthDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/addlive/service/ConnectionDescriptor;->authDetails:Lcom/addlive/service/AuthDetails;

    .line 190
    return-void
.end method

.method public setAutopublishAudio(Z)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishAudio:Z

    .line 117
    return-void
.end method

.method public setAutopublishVideo(Z)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishVideo:Z

    .line 104
    return-void
.end method

.method public setScopeId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/addlive/service/ConnectionDescriptor;->scopeId:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/addlive/service/ConnectionDescriptor;->url:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setVideoStream(Lcom/addlive/service/VideoStreamDescriptor;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/addlive/service/ConnectionDescriptor;->videoStream:Lcom/addlive/service/VideoStreamDescriptor;

    .line 166
    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 193
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 194
    const-string v1, "scopeId"

    iget-object v2, p0, Lcom/addlive/service/ConnectionDescriptor;->scopeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v1, "autopublishAudio"

    iget-boolean v2, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishAudio:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 196
    const-string v1, "autopublishVideo"

    iget-boolean v2, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishVideo:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 197
    const-string v1, "url"

    iget-object v2, p0, Lcom/addlive/service/ConnectionDescriptor;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v1, "videoStream"

    iget-object v2, p0, Lcom/addlive/service/ConnectionDescriptor;->videoStream:Lcom/addlive/service/VideoStreamDescriptor;

    invoke-virtual {v2}, Lcom/addlive/service/VideoStreamDescriptor;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v1, "authDetails"

    iget-object v2, p0, Lcom/addlive/service/ConnectionDescriptor;->authDetails:Lcom/addlive/service/AuthDetails;

    invoke-virtual {v2}, Lcom/addlive/service/AuthDetails;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectionDescriptor{autopublishVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autopublishAudio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/addlive/service/ConnectionDescriptor;->autopublishAudio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/ConnectionDescriptor;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scopeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/ConnectionDescriptor;->scopeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoStream=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/ConnectionDescriptor;->videoStream:Lcom/addlive/service/VideoStreamDescriptor;

    invoke-virtual {v1}, Lcom/addlive/service/VideoStreamDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/addlive/service/ConnectionDescriptor;->authDetails:Lcom/addlive/service/AuthDetails;

    invoke-virtual {v1}, Lcom/addlive/service/AuthDetails;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
