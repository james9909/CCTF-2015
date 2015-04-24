.class public Lcom/snapchat/data/gson/analytics/CommonParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private city:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private country:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private friendCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friend_count"
    .end annotation
.end field

.field private latlon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private region:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private scUserAgent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sc_user_agent"
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session_id"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "Unimplemented"

    iput-object v0, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->city:Ljava/lang/String;

    .line 21
    const-string v0, "Unimplemented"

    iput-object v0, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->country:Ljava/lang/String;

    .line 26
    const-string v0, "Unimplemented"

    iput-object v0, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->latlon:Ljava/lang/String;

    .line 28
    const-string v0, "Unimplemented"

    iput-object v0, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->region:Ljava/lang/String;

    .line 36
    const-string v0, "00000000-0000-0000-0000-000000000000"

    iput-object v0, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->sessionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Lcom/snapchat/data/gson/analytics/CommonParams;
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->friendCount:Ljava/lang/Integer;

    .line 106
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/data/gson/analytics/CommonParams;
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->scUserAgent:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/snapchat/data/gson/analytics/CommonParams;
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->userId:Ljava/lang/String;

    .line 198
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 236
    if-ne p1, p0, :cond_0

    .line 237
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    .line 239
    :cond_0
    instance-of v0, p1, Lcom/snapchat/data/gson/analytics/CommonParams;

    if-nez v0, :cond_1

    .line 240
    const/4 v0, 0x0

    goto :goto_0

    .line 242
    :cond_1
    check-cast p1, Lcom/snapchat/data/gson/analytics/CommonParams;

    .line 243
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->city:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/data/gson/analytics/CommonParams;->city:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->country:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/data/gson/analytics/CommonParams;->country:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->friendCount:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/snapchat/data/gson/analytics/CommonParams;->friendCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->latlon:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/data/gson/analytics/CommonParams;->latlon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->region:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/data/gson/analytics/CommonParams;->region:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->scUserAgent:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/data/gson/analytics/CommonParams;->scUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->userId:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/data/gson/analytics/CommonParams;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->sessionId:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/data/gson/analytics/CommonParams;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 231
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->friendCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->latlon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->scUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/CommonParams;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
