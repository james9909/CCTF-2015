.class public Lcom/snapchat/data/gson/analytics/PostEventsRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private batchId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "batch_id"
    .end annotation
.end field

.field private commonParams:Lcom/snapchat/data/gson/analytics/CommonParams;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "common_params"
    .end annotation

    .annotation runtime Ljavax/validation/Valid;
    .end annotation
.end field

.field private events:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/validation/Valid;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/data/gson/analytics/PostEventsRequest;->events:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/data/gson/analytics/CommonParams;)Lcom/snapchat/data/gson/analytics/PostEventsRequest;
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/snapchat/data/gson/analytics/PostEventsRequest;->commonParams:Lcom/snapchat/data/gson/analytics/CommonParams;

    .line 82
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/data/gson/analytics/PostEventsRequest;
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/snapchat/data/gson/analytics/PostEventsRequest;->batchId:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/snapchat/data/gson/analytics/PostEventsRequest;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;",
            ">;)",
            "Lcom/snapchat/data/gson/analytics/PostEventsRequest;"
        }
    .end annotation

    .prologue
    .line 104
    iput-object p1, p0, Lcom/snapchat/data/gson/analytics/PostEventsRequest;->events:Ljava/util/List;

    .line 105
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 120
    if-ne p1, p0, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    .line 123
    :cond_0
    instance-of v0, p1, Lcom/snapchat/data/gson/analytics/PostEventsRequest;

    if-nez v0, :cond_1

    .line 124
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_1
    check-cast p1, Lcom/snapchat/data/gson/analytics/PostEventsRequest;

    .line 127
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/PostEventsRequest;->batchId:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/data/gson/analytics/PostEventsRequest;->batchId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/PostEventsRequest;->commonParams:Lcom/snapchat/data/gson/analytics/CommonParams;

    iget-object v2, p1, Lcom/snapchat/data/gson/analytics/PostEventsRequest;->commonParams:Lcom/snapchat/data/gson/analytics/CommonParams;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/PostEventsRequest;->events:Ljava/util/List;

    iget-object v2, p1, Lcom/snapchat/data/gson/analytics/PostEventsRequest;->events:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/PostEventsRequest;->batchId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/PostEventsRequest;->commonParams:Lcom/snapchat/data/gson/analytics/CommonParams;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/PostEventsRequest;->events:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
