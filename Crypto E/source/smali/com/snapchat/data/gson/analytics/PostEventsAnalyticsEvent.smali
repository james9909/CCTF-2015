.class public Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private eventName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event_name"
    .end annotation
.end field

.field private eventParams:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event_params"
    .end annotation

    .annotation runtime Ljavax/validation/Valid;
    .end annotation
.end field

.field private eventTimestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event_timestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;->eventTimestamp:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;->eventTimestamp:Ljava/lang/Long;

    .line 98
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;->eventName:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;->eventParams:Ljava/util/Map;

    .line 75
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 113
    if-ne p1, p0, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    .line 116
    :cond_0
    instance-of v0, p1, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;

    if-nez v0, :cond_1

    .line 117
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :cond_1
    check-cast p1, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;

    .line 120
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;->eventName:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;->eventParams:Ljava/util/Map;

    iget-object v2, p1, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;->eventParams:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;->eventTimestamp:Ljava/lang/Long;

    iget-object v2, p1, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;->eventTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;->eventParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;->eventTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
