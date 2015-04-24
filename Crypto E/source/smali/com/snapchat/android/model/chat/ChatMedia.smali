.class public Lcom/snapchat/android/model/chat/ChatMedia;
.super Lcom/snapchat/android/model/chat/Chat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/chat/ChatMedia$Builder;,
        Lcom/snapchat/android/model/chat/ChatMedia$MediaType;
    }
.end annotation


# static fields
.field public static final CHAT_MEDIA_PATH:Ljava/lang/String; = "/bq/chat_media"

.field public static final TYPE:Ljava/lang/String; = "media"


# instance fields
.field private mIv:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mMediaId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->O()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/model/chat/Chat;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mId:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 40
    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 41
    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 42
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 43
    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 44
    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mKey:Ljava/lang/String;

    .line 45
    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIv:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/chat/ChatMedia$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/Chat;-><init>(Lcom/snapchat/android/model/chat/Chat$Builder;)V

    .line 50
    invoke-static {p1}, Lcom/snapchat/android/model/chat/ChatMedia$Builder;->a(Lcom/snapchat/android/model/chat/ChatMedia$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mMediaId:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/snapchat/android/model/chat/ChatMedia$Builder;->b(Lcom/snapchat/android/model/chat/ChatMedia$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mKey:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/snapchat/android/model/chat/ChatMedia$Builder;->c(Lcom/snapchat/android/model/chat/ChatMedia$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIv:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/chat/Chat;-><init>(Lcom/snapchat/android/model/server/chat/ChatMessage;)V

    .line 31
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getMedia()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;->getMediaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mMediaId:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getMedia()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mKey:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/snapchat/android/model/server/chat/ChatMessage;->getBody()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody;->getMedia()Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/ChatMessage$MessageBody$Media;->getIv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIv:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIv:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatMedia;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mKey:Ljava/lang/String;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIv:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatMedia;->F()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIv:Ljava/lang/String;

    .line 91
    :cond_1
    return-void
.end method

.method public ar()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "media"

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mMediaId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mKey:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIv:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatMedia{mMediaId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIv=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/chat/ChatMedia;->mIv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
