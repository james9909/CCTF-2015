.class public Lcom/snapchat/android/api/ServerSideFeatures;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;,
        Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/snapchat/android/api/ServerSideFeatures;


# instance fields
.field private mFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStudySettings:Lcom/snapchat/android/model/StudySettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/snapchat/android/api/ServerSideFeatures;

    invoke-static {}, Lcom/snapchat/android/model/StudySettings;->a()Lcom/snapchat/android/model/StudySettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/api/ServerSideFeatures;-><init>(Lcom/snapchat/android/model/StudySettings;)V

    sput-object v0, Lcom/snapchat/android/api/ServerSideFeatures;->sInstance:Lcom/snapchat/android/api/ServerSideFeatures;

    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/StudySettings;)V
    .locals 7
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/snapchat/android/api/ServerSideFeatures;->mStudySettings:Lcom/snapchat/android/model/StudySettings;

    .line 35
    new-instance v0, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;

    const-string v1, "stories_delta_response"

    new-instance v2, Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;

    const-string v3, "DELTA_RESPONSE"

    const-string v4, "FRIENDS_STORY_DELTA"

    const-string v5, "on"

    invoke-direct {v2, v3, v4, v5}, Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;-><init>(Ljava/lang/String;Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;)V

    .line 40
    new-instance v1, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;

    const-string v2, "conversations_delta_response"

    new-instance v3, Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;

    const-string v4, "DELTA_RESPONSE"

    const-string v5, "CONVERSATIONS_DELTA"

    const-string v6, "on"

    invoke-direct {v3, v4, v5, v6}, Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;-><init>(Ljava/lang/String;Lcom/snapchat/android/api/ServerSideFeatures$ABTestForFeature;)V

    .line 45
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/snapchat/android/api/ServerSideFeatures;->mFeatures:Ljava/util/Map;

    .line 46
    iget-object v2, p0, Lcom/snapchat/android/api/ServerSideFeatures;->mFeatures:Ljava/util/Map;

    const-string v3, "/loq/all_updates"

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public static a()Lcom/snapchat/android/api/ServerSideFeatures;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/snapchat/android/api/ServerSideFeatures;->sInstance:Lcom/snapchat/android/api/ServerSideFeatures;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/api/ServerSideFeatures;->mFeatures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 105
    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;

    .line 107
    iget-object v3, p0, Lcom/snapchat/android/api/ServerSideFeatures;->mStudySettings:Lcom/snapchat/android/model/StudySettings;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;->a(Lcom/snapchat/android/model/StudySettings;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/api/ServerSideFeatures$ServerSideFeature;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/snapchat/android/api/ServerSideFeatures;->mFeatures:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method
