.class public Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/AnalyticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mEventName:Ljava/lang/String;

.field private mParams:Ljava/util/Map;
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

.field private mTimers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTimestamp:D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->mEventName:Ljava/lang/String;

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->mTimestamp:D

    .line 94
    return-void
.end method

.method private addTimer(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->mTimers:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->mTimers:Ljava/util/Map;

    .line 133
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->mTimers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-object p0
.end method


# virtual methods
.method public addParams(Ljava/util/Map;)Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;"
        }
    .end annotation

    .prologue
    .line 108
    if-eqz p1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->mParams:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->mParams:Ljava/util/Map;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 112
    :cond_1
    return-object p0
.end method

.method public addParamsFromString(Ljava/lang/String;)Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 102
    new-instance v0, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder$1;-><init>(Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;)V

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 104
    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->addParams(Ljava/util/Map;)Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addTimer(Ljava/lang/String;J)Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 128
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->addTimer(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addTimersFromString(Ljava/lang/String;)Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 116
    if-nez p1, :cond_1

    .line 124
    :cond_0
    return-object p0

    .line 119
    :cond_1
    new-instance v0, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder$2;-><init>(Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;)V

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 120
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 121
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->addTimer(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;

    goto :goto_0
.end method

.method public build()Lcom/snapchat/android/model/server/AnalyticsEvent;
    .locals 5

    .prologue
    .line 139
    new-instance v0, Lcom/snapchat/android/model/server/AnalyticsEvent;

    iget-object v1, p0, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->mEventName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->mTimestamp:D

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/model/server/AnalyticsEvent;-><init>(Ljava/lang/String;DLcom/snapchat/android/model/server/AnalyticsEvent$1;)V

    .line 140
    iget-object v1, p0, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->mParams:Ljava/util/Map;

    iput-object v1, v0, Lcom/snapchat/android/model/server/AnalyticsEvent;->mParams:Ljava/util/Map;

    .line 141
    iget-object v1, p0, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->mTimers:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 142
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Lcom/snapchat/android/model/server/AnalyticsEvent;->mMetrics:Ljava/util/Map;

    .line 143
    iget-object v1, v0, Lcom/snapchat/android/model/server/AnalyticsEvent;->mMetrics:Ljava/util/Map;

    const-string v2, "timers"

    iget-object v3, p0, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->mTimers:Ljava/util/Map;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    return-object v0
.end method

.method public setTimestampInSeconds(D)Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;
    .locals 1
    .parameter

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->mTimestamp:D

    .line 98
    return-object p0
.end method
