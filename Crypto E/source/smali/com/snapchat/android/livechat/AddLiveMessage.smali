.class Lcom/snapchat/android/livechat/AddLiveMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/snapchat/android/livechat/AddLiveMessage;->a:Ljava/lang/String;

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/livechat/AddLiveMessage;->b:Lorg/json/JSONObject;

    .line 31
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AddLiveMessage;
    .locals 3
    .parameter

    .prologue
    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v1, Lcom/snapchat/android/livechat/AddLiveMessage;

    const-string v2, "messageType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/livechat/AddLiveMessage;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v2, "meta"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    const-string v2, "meta"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/snapchat/android/livechat/AddLiveMessage;->b:Lorg/json/JSONObject;

    .line 25
    :cond_0
    return-object v1
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    const-string v1, "messageType"

    iget-object v2, p0, Lcom/snapchat/android/livechat/AddLiveMessage;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    iget-object v1, p0, Lcom/snapchat/android/livechat/AddLiveMessage;->b:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 37
    const-string v1, "meta"

    iget-object v2, p0, Lcom/snapchat/android/livechat/AddLiveMessage;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snapchat/android/livechat/AddLiveMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method c()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/snapchat/android/livechat/AddLiveMessage;->b:Lorg/json/JSONObject;

    return-object v0
.end method
