.class public Lcom/snapchat/android/api2/PostEventsTask;
.super Lcom/snapchat/android/api2/framework/HyperRequestTask;
.source "SourceFile"


# static fields
.field public static PATH:Ljava/lang/String;

.field public static POST_EVENTS_ENDPOINT:Ljava/lang/String;


# instance fields
.field private final mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "https://sc-analytics.appspot.com"

    sput-object v0, Lcom/snapchat/android/api2/PostEventsTask;->POST_EVENTS_ENDPOINT:Ljava/lang/String;

    .line 30
    const-string v0, "/post_events"

    sput-object v0, Lcom/snapchat/android/api2/PostEventsTask;->PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/data/gson/analytics/PostEventsAnalyticsEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/HyperRequestTask;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/snapchat/android/api2/PostEventsTask;->mEvents:Ljava/util/List;

    .line 36
    return-void
.end method

.method protected static e()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lcom/snapchat/android/util/network/HttpHeaderUtils;->a()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/snapchat/android/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static f()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/crypto/SecureHash;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static i_()I
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 82
    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->t()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/snapchat/data/gson/analytics/CommonParams;

    invoke-direct {v0}, Lcom/snapchat/data/gson/analytics/CommonParams;-><init>()V

    invoke-static {}, Lcom/snapchat/android/api2/PostEventsTask;->i_()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/data/gson/analytics/CommonParams;->a(Ljava/lang/Integer;)Lcom/snapchat/data/gson/analytics/CommonParams;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/util/network/HttpHeaderUtils;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/data/gson/analytics/CommonParams;->a(Ljava/lang/String;)Lcom/snapchat/data/gson/analytics/CommonParams;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/api2/PostEventsTask;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/data/gson/analytics/CommonParams;->b(Ljava/lang/String;)Lcom/snapchat/data/gson/analytics/CommonParams;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/snapchat/data/gson/analytics/PostEventsRequest;

    invoke-direct {v1}, Lcom/snapchat/data/gson/analytics/PostEventsRequest;-><init>()V

    invoke-static {}, Lcom/snapchat/android/api2/PostEventsTask;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/data/gson/analytics/PostEventsRequest;->a(Ljava/lang/String;)Lcom/snapchat/data/gson/analytics/PostEventsRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/api2/PostEventsTask;->mEvents:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/snapchat/data/gson/analytics/PostEventsRequest;->a(Ljava/util/List;)Lcom/snapchat/data/gson/analytics/PostEventsRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/data/gson/analytics/PostEventsRequest;->a(Lcom/snapchat/data/gson/analytics/CommonParams;)Lcom/snapchat/data/gson/analytics/PostEventsRequest;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/snapchat/android/api2/framework/RequestBodyWrapper;

    sget-object v2, Lcom/snapchat/android/api2/framework/RequestBodyType;->JSON_ENCODED:Lcom/snapchat/android/api2/framework/RequestBodyType;

    invoke-direct {v1, v0, v2}, Lcom/snapchat/android/api2/framework/RequestBodyWrapper;-><init>(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/RequestBodyType;)V

    return-object v1
.end method

.method public m_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/api2/PostEventsTask;->POST_EVENTS_ENDPOINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/api2/PostEventsTask;->PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
