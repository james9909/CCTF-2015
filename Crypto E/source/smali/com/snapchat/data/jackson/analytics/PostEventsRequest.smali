.class public Lcom/snapchat/data/jackson/analytics/PostEventsRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;
    value = {
        "batch_id",
        "common_params",
        "events"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "batch_id"
    .end annotation
.end field

.field private b:Lcom/snapchat/data/jackson/analytics/CommonParams;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "common_params"
    .end annotation

    .annotation runtime Ljavax/validation/Valid;
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "events"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/data/jackson/analytics/PostEventsAnalyticsEvent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/validation/Valid;
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/data/jackson/analytics/PostEventsRequest;->c:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/data/jackson/analytics/PostEventsRequest;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 153
    if-ne p1, p0, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    .line 156
    :cond_0
    instance-of v0, p1, Lcom/snapchat/data/jackson/analytics/PostEventsRequest;

    if-nez v0, :cond_1

    .line 157
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_1
    check-cast p1, Lcom/snapchat/data/jackson/analytics/PostEventsRequest;

    .line 160
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/jackson/analytics/PostEventsRequest;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/data/jackson/analytics/PostEventsRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/jackson/analytics/PostEventsRequest;->b:Lcom/snapchat/data/jackson/analytics/CommonParams;

    iget-object v2, p1, Lcom/snapchat/data/jackson/analytics/PostEventsRequest;->b:Lcom/snapchat/data/jackson/analytics/CommonParams;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/jackson/analytics/PostEventsRequest;->c:Ljava/util/List;

    iget-object v2, p1, Lcom/snapchat/data/jackson/analytics/PostEventsRequest;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/jackson/analytics/PostEventsRequest;->d:Ljava/util/Map;

    iget-object v2, p1, Lcom/snapchat/data/jackson/analytics/PostEventsRequest;->d:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/jackson/analytics/PostEventsRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/jackson/analytics/PostEventsRequest;->b:Lcom/snapchat/data/jackson/analytics/CommonParams;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/jackson/analytics/PostEventsRequest;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/jackson/analytics/PostEventsRequest;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
