.class public Lcom/snapchat/android/model/server/chat/ConnectMessage;
.super Lcom/snapchat/android/model/server/chat/SCMessage;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "connect"


# instance fields
.field private app_version:Ljava/lang/String;

.field private auth:Lcom/snapchat/android/model/server/chat/SignedPayload;

.field private platform:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24
    const-string v0, "connect"

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/server/chat/SCMessage;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->username:Ljava/lang/String;

    .line 26
    const-string v0, "android"

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->platform:Ljava/lang/String;

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->version:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->app_version:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/snapchat/android/util/debug/ScApplicationInfo;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->app_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->app_version:Ljava/lang/String;

    .line 32
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/server/chat/SignedPayload;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    const-string v0, "connect"

    invoke-direct {p0, v0}, Lcom/snapchat/android/model/server/chat/SCMessage;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->username:Ljava/lang/String;

    .line 37
    const-string v0, "android"

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->platform:Ljava/lang/String;

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->version:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->app_version:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/snapchat/android/util/debug/ScApplicationInfo;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->app_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->app_version:Ljava/lang/String;

    .line 43
    :cond_0
    iput-object p2, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->auth:Lcom/snapchat/android/model/server/chat/SignedPayload;

    .line 44
    return-void
.end method


# virtual methods
.method public setAuth(Lcom/snapchat/android/model/server/chat/SignedPayload;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->auth:Lcom/snapchat/android/model/server/chat/SignedPayload;

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectMessage{username=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", platform=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->platform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->app_version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/chat/ConnectMessage;->auth:Lcom/snapchat/android/model/server/chat/SignedPayload;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
