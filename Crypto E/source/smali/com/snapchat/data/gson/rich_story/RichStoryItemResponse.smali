.class public Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private properties:Lcom/snapchat/data/gson/rich_story/RichStoryItemPropertiesResponse;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Ljavax/validation/Valid;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/snapchat/data/gson/rich_story/RichStoryItemPropertiesResponse;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;->properties:Lcom/snapchat/data/gson/rich_story/RichStoryItemPropertiesResponse;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 139
    if-ne p1, p0, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    .line 142
    :cond_0
    instance-of v0, p1, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;

    if-nez v0, :cond_1

    .line 143
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :cond_1
    check-cast p1, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;

    .line 146
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;->type:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;->properties:Lcom/snapchat/data/gson/rich_story/RichStoryItemPropertiesResponse;

    iget-object v2, p1, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;->properties:Lcom/snapchat/data/gson/rich_story/RichStoryItemPropertiesResponse;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;->properties:Lcom/snapchat/data/gson/rich_story/RichStoryItemPropertiesResponse;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
