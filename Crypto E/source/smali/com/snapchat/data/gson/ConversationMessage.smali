.class public Lcom/snapchat/data/gson/ConversationMessage;
.super Lcom/snapchat/data/gson/Message;
.source "SourceFile"


# instance fields
.field private header:Lcom/snapchat/data/gson/Header;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Ljavax/validation/Valid;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/snapchat/data/gson/Message;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 66
    if-ne p1, p0, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    .line 69
    :cond_0
    instance-of v0, p1, Lcom/snapchat/data/gson/ConversationMessage;

    if-nez v0, :cond_1

    .line 70
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_1
    check-cast p1, Lcom/snapchat/data/gson/ConversationMessage;

    .line 73
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/gson/ConversationMessage;->header:Lcom/snapchat/data/gson/Header;

    iget-object v2, p1, Lcom/snapchat/data/gson/ConversationMessage;->header:Lcom/snapchat/data/gson/Header;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/gson/ConversationMessage;->header:Lcom/snapchat/data/gson/Header;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
