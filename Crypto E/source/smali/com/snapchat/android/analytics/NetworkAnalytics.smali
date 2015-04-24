.class public Lcom/snapchat/android/analytics/NetworkAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;,
        Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;
    }
.end annotation


# static fields
.field public static final CONTENT_READY_EVENT:Ljava/lang/String; = "CONTENT_READY"

.field public static final CONTEXT_PARAM:Ljava/lang/String; = "context"

.field public static final FIRST_ITEM_READY_EVENT:Ljava/lang/String; = "FIRST_ITEM_READY"

.field public static final FROM_NOTIFICATION_PARAM:Ljava/lang/String; = "from_notification"

.field public static final IS_DOUBLE_POST_PARAM:Ljava/lang/String; = "is_double_post"

.field public static final IS_FULL_RESPONSE_PARAM:Ljava/lang/String; = "is_full_response"

.field public static final MEDIA_DURATION_PARAM:Ljava/lang/String; = "media_duration"

.field public static final MEDIA_SIZE_PARAM:Ljava/lang/String; = "media_size"

.field public static final REACHABILITY_PARAM:Ljava/lang/String; = "reachability"

.field public static final RECEIVED_BYTES_PARAM:Ljava/lang/String; = "return_size_bytes"

.field public static final SERVER_INFO_PARAM:Ljava/lang/String; = "server_info"

.field public static final SNAP_SENT_DELAY_EVENT:Ljava/lang/String; = "SNAP_SENT_DELAY"

.field public static final SNAP_SENT_FAILED_EVENT:Ljava/lang/String; = "SNAP_SENT_FAILED"

.field public static final SNAP_SENT_SUCCESS_EVENT:Ljava/lang/String; = "SNAP_SENT_SUCCESS"

.field public static final STATUS_CODE_PARAM:Ljava/lang/String; = "status_code"

.field public static final STORY_POST_DELAY_EVENT:Ljava/lang/String; = "STORY_POST_DELAY"

.field public static final SUCCESS_PARAM:Ljava/lang/String; = "success"

.field public static final TYPE_PARAM:Ljava/lang/String; = "type"

.field public static final WITH_MEDIA_PARAM:Ljava/lang/String; = "with_media"

.field private static final mAllowedPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mAllowedPathsList:[Ljava/lang/String;

.field private static final sInstance:Lcom/snapchat/android/analytics/NetworkAnalytics;


# instance fields
.field private final mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private final mRequestTaskResponseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/snapchat/android/analytics/NetworkAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/NetworkAnalytics;-><init>()V

    sput-object v0, Lcom/snapchat/android/analytics/NetworkAnalytics;->sInstance:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/loq/send"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/bq/post_story"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/loq/all_updates"

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mAllowedPathsList:[Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics;->mAllowedPathsList:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mAllowedPaths:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/analytics/NetworkAnalytics;-><init>(Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;)V

    .line 91
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mRequestTaskResponseMap:Ljava/util/Map;

    .line 95
    iput-object p1, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 96
    return-void
.end method

.method public static a()Lcom/snapchat/android/analytics/NetworkAnalytics;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/snapchat/android/analytics/NetworkAnalytics;->sInstance:Lcom/snapchat/android/analytics/NetworkAnalytics;

    return-object v0
.end method

.method private a(Lcom/snapchat/android/model/AnnotatedMediabryo;ZLjava/util/UUID;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz p2, :cond_1

    const-string v0, "SNAP_SENT_SUCCESS"

    :goto_0
    invoke-direct {v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mRequestTaskResponseMap:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 369
    if-eqz v0, :cond_0

    .line 370
    const-string v2, "reachability"

    const-string v3, "reachability"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "status_code"

    const-string v4, "status_code"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 373
    :cond_0
    const-string v2, "type"

    invoke-static {p1}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "video"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 374
    return-void

    .line 367
    :cond_1
    const-string v0, "SNAP_SENT_FAILED"

    goto :goto_0

    .line 373
    :cond_2
    const-string v0, "image"

    goto :goto_1
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "with_media"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    const-string v1, "media_size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 342
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 198
    invoke-direct {p0, p1, p3}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/util/UUID;)V

    .line 200
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "from_notification"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 201
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "context"

    invoke-static {p2}, Lcom/snapchat/android/util/EnumUtils;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    invoke-virtual {v0, p1, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;Z)V

    .line 203
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "context"

    invoke-static {p2}, Lcom/snapchat/android/util/EnumUtils;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 331
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/snapchat/android/model/AnnotatedMediabryo;ZLjava/util/UUID;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 353
    invoke-direct {p0, p2, p3, p4}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;ZLjava/util/UUID;)V

    .line 355
    invoke-virtual {p2}, Lcom/snapchat/android/model/AnnotatedMediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Lcom/snapchat/android/model/AnnotatedMediabryo;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 356
    :goto_0
    invoke-direct {p0, p1, p4}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Ljava/util/UUID;)V

    .line 357
    iget-object v2, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v3, "is_double_post"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, p1, v3, v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v2

    const-string v3, "type"

    invoke-static {p2}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "video"

    :goto_1
    invoke-virtual {v2, p1, v3, v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    const-string v2, "media_duration"

    invoke-virtual {p2}, Lcom/snapchat/android/model/AnnotatedMediabryo;->m()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    const-string v2, "success"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    const-string v2, "with_media"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    const-string v2, "media_size"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 363
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c(Ljava/lang/String;)V

    .line 364
    return-void

    :cond_0
    move v0, v1

    .line 355
    goto :goto_0

    .line 357
    :cond_1
    const-string v0, "image"

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 206
    if-nez p2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mRequestTaskResponseMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 210
    if-eqz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "reachability"

    const-string v3, "reachability"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 212
    const-string v1, "status_code"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 213
    iget-object v2, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v3, "success"

    invoke-static {v1}, Lcom/snapchat/android/util/HttpUtils;->a(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, p1, v3, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 214
    iget-object v1, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "return_size_bytes"

    const-string v3, "return_size_bytes"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 215
    const-string v1, "server_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    const-string v1, "server_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 217
    const-string v1, "response_compare_result"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "equal"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 218
    :goto_1
    iget-object v2, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v3, "is_full_response"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, p1, v3, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 219
    iget-object v1, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    invoke-virtual {v1, p1, v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mRequestTaskResponseMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 217
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private g()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_ITEM_READY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CONTENT_READY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 188
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 276
    const-string v0, "STORY_POST_DELAY"

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;I)V

    .line 277
    return-void
.end method

.method public a(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 173
    return-void
.end method

.method public a(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 168
    const-string v0, "CONTENT_READY"

    invoke-direct {p0, v0, p1, p2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 169
    return-void
.end method

.method public a(Lcom/snapchat/android/model/AnnotatedMediabryo;Ljava/util/UUID;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 295
    const-string v0, "SNAP_SENT_DELAY"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Lcom/snapchat/android/model/AnnotatedMediabryo;ZLjava/util/UUID;)V

    .line 296
    return-void
.end method

.method public a(Ljava/util/UUID;Ljava/lang/String;IJLjava/lang/String;Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Lcom/google/gson/internal/LinkedTreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    if-eqz p1, :cond_0

    sget-object v0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mAllowedPaths:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    const-string v1, "status_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "reachability"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "return_size_bytes"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    if-eqz p7, :cond_2

    .line 123
    const-string v1, "server_info"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mRequestTaskResponseMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 232
    if-eqz p1, :cond_0

    .line 233
    const-string v0, "SNAP_SENT_DELAY"

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;->SEND_TO_SCREEN:Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;)V

    .line 235
    :cond_0
    if-eqz p2, :cond_1

    .line 236
    const-string v0, "STORY_POST_DELAY"

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;->SEND_TO_SCREEN:Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;)V

    .line 238
    :cond_1
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 139
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_ITEM_READY"

    const-string v2, "from_notification"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 140
    iget-object v0, p0, Lcom/snapchat/android/analytics/NetworkAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CONTENT_READY"

    const-string v2, "from_notification"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 141
    return-void
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 285
    const-string v0, "SNAP_SENT_DELAY"

    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;I)V

    .line 286
    return-void
.end method

.method public b(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 182
    const-string v0, "FIRST_ITEM_READY"

    invoke-direct {p0, v0, p1, p2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 183
    return-void
.end method

.method public b(Lcom/snapchat/android/model/AnnotatedMediabryo;Ljava/util/UUID;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 305
    const-string v0, "SNAP_SENT_DELAY"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Lcom/snapchat/android/model/AnnotatedMediabryo;ZLjava/util/UUID;)V

    .line 306
    return-void
.end method

.method public b(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 248
    if-eqz p1, :cond_0

    .line 249
    const-string v0, "SNAP_SENT_DELAY"

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;->RETRY_SEND_FAILED_SNAP:Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;)V

    .line 251
    :cond_0
    if-eqz p2, :cond_1

    .line 252
    const-string v0, "STORY_POST_DELAY"

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;->RETRY_POST_FAILED_STORY:Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;)V

    .line 254
    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/snapchat/android/analytics/NetworkAnalytics;->g()V

    .line 148
    return-void
.end method

.method public c(Lcom/snapchat/android/model/AnnotatedMediabryo;Ljava/util/UUID;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 315
    const-string v0, "STORY_POST_DELAY"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Lcom/snapchat/android/model/AnnotatedMediabryo;ZLjava/util/UUID;)V

    .line 316
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/snapchat/android/analytics/NetworkAnalytics;->g()V

    .line 155
    return-void
.end method

.method public d(Lcom/snapchat/android/model/AnnotatedMediabryo;Ljava/util/UUID;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 325
    const-string v0, "STORY_POST_DELAY"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Lcom/snapchat/android/model/AnnotatedMediabryo;ZLjava/util/UUID;)V

    .line 326
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 260
    const-string v0, "STORY_POST_DELAY"

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;->PREVIEW_SCREEN:Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;)V

    .line 261
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 267
    const-string v0, "SNAP_SENT_DELAY"

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;->PREVIEW_SCREEN:Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Ljava/lang/String;Lcom/snapchat/android/analytics/NetworkAnalytics$SnapSendContext;)V

    .line 268
    return-void
.end method
