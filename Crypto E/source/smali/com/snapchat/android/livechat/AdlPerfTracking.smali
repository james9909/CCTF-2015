.class Lcom/snapchat/android/livechat/AdlPerfTracking;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/addlive/service/AddLiveService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://cnc.addlive.io/events.store"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/livechat/AdlPerfTracking;->a:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/addlive/service/AddLiveService;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlPerfTracking;->b:Lcom/addlive/service/AddLiveService;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/livechat/AdlPerfTracking;)Lcom/addlive/service/AddLiveService;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlPerfTracking;->b:Lcom/addlive/service/AddLiveService;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/livechat/AdlPerfTracking;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/livechat/AdlPerfTracking;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 83
    const-string v0, "|"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/Serializable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "HmacSHA256"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 85
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "Ir3boG9oahw6bo9Xzei9Phei"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "HmacSHA256"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 88
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 89
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    .line 48
    const-string v0, "livechat"

    const-string v1, "Setting up the AddLive performance gathering metrics"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/snapchat/android/livechat/AdlPerfTracking;->a:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v1, Lcom/snapchat/android/livechat/AdlPerfTracking;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v4, v1

    rem-long/2addr v2, v4

    long-to-int v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlPerfTracking;->b:Lcom/addlive/service/AddLiveService;

    const-string v2, "setProperty"

    invoke-static {v2}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;

    move-result-object v2

    const-string v3, "global.service.eventsTrackingEndpoint"

    invoke-interface {v1, v2, v3, v0}, Lcom/addlive/service/AddLiveService;->setProperty(Lcom/addlive/service/Responder;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlPerfTracking;->b:Lcom/addlive/service/AddLiveService;

    const-string v1, "startEventsTracking"

    invoke-static {v1}, Lcom/snapchat/android/livechat/AdlHelper;->a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$ErrorHandlingResponder;

    move-result-object v1

    const-string v2, "ADL_Performance.log"

    invoke-interface {v0, v1, v2}, Lcom/addlive/service/AddLiveService;->startEventsTracking(Lcom/addlive/service/Responder;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    .line 58
    const-string v0, "livechat"

    const-string v1, "Flushing the AddLive performance metrics"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    new-instance v0, Lcom/snapchat/android/livechat/AdlPerfTracking$1;

    const-string v1, "getEventsChecksum"

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/livechat/AdlPerfTracking$1;-><init>(Lcom/snapchat/android/livechat/AdlPerfTracking;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlPerfTracking;->b:Lcom/addlive/service/AddLiveService;

    invoke-interface {v1, v0}, Lcom/addlive/service/AddLiveService;->getEventsChecksum(Lcom/addlive/service/Responder;)V

    .line 76
    return-void
.end method
