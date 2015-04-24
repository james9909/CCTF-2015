.class public Lcom/snapchat/android/model/server/chat/PresenceMessage;
.super Lcom/snapchat/android/model/server/chat/ConversationMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/server/chat/PresenceMessage$1;,
        Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;,
        Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "presence"


# instance fields
.field private here_auth:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

.field private presences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private receiving_video:Z

.field private supports_here:Z


# direct methods
.method private constructor <init>(Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;-><init>(Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;)V

    .line 27
    #getter for: Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;->mPresences:Ljava/util/Map;
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;->access$000(Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage;->presences:Ljava/util/Map;

    .line 28
    #getter for: Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;->mSupportsHere:Z
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;->access$100(Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage;->supports_here:Z

    .line 29
    #getter for: Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;->mIsDisplayingVideo:Z
    invoke-static {p1}, Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;->access$200(Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage;->receiving_video:Z

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;Lcom/snapchat/android/model/server/chat/PresenceMessage$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/server/chat/PresenceMessage;-><init>(Lcom/snapchat/android/model/server/chat/PresenceMessage$Builder;)V

    return-void
.end method


# virtual methods
.method public canSendOverHTTP()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getHereAuth()Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage;->here_auth:Lcom/snapchat/android/model/server/chat/PresenceMessage$HereAuth;

    return-object v0
.end method

.method public getPresences()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage;->presences:Ljava/util/Map;

    return-object v0
.end method

.method public isReceivingVideo()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage;->receiving_video:Z

    return v0
.end method

.method public needsACK()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public supportsHere()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage;->supports_here:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 62
    const-string v1, "presences"

    iget-object v2, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage;->presences:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v1, "supports_here"

    iget-boolean v2, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage;->supports_here:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 64
    const-string v1, "receiving_video"

    iget-boolean v2, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage;->receiving_video:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 65
    const-string v1, "conversation_id"

    invoke-virtual {p0}, Lcom/snapchat/android/model/server/chat/PresenceMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConvId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/snapchat/android/model/server/chat/PresenceMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PresenceMessage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PresenceMessage{\"presences\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage;->presences:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", supports_here\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage;->supports_here:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", receiving_video\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/model/server/chat/PresenceMessage;->receiving_video:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", conversation_id\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/server/chat/PresenceMessage;->getHeader()Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Header;->getConvId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"id\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/server/chat/PresenceMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
