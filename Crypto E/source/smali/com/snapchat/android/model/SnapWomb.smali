.class public Lcom/snapchat/android/model/SnapWomb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/SnapWomb$1;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/snapchat/android/model/SnapWomb;


# instance fields
.field private mFailedChatMediaSnapbryos:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;"
        }
    .end annotation
.end field

.field protected mFailedPostSnapbryoMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFailedSendSnapbryos:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;"
        }
    .end annotation
.end field

.field private mPostingSnapbryoMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSendingSnapbryos:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mSendingSnapbryos:Ljava/util/LinkedHashMap;

    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedSendSnapbryos:Ljava/util/LinkedHashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mPostingSnapbryoMaps:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedPostSnapbryoMaps:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedChatMediaSnapbryos:Ljava/util/LinkedHashMap;

    .line 45
    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/model/SnapWomb;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/snapchat/android/model/SnapWomb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/model/SnapWomb;->sInstance:Lcom/snapchat/android/model/SnapWomb;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/snapchat/android/model/SnapWomb;

    invoke-direct {v0}, Lcom/snapchat/android/model/SnapWomb;-><init>()V

    sput-object v0, Lcom/snapchat/android/model/SnapWomb;->sInstance:Lcom/snapchat/android/model/SnapWomb;

    .line 51
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/SnapWomb;->sInstance:Lcom/snapchat/android/model/SnapWomb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 134
    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 136
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    invoke-virtual {p3}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 147
    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {v0, p3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 55
    const-class v0, Lcom/snapchat/android/model/SnapWomb;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/snapchat/android/model/SnapWomb;->sInstance:Lcom/snapchat/android/model/SnapWomb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v0

    return-void

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Ljava/util/HashMap;Ljava/lang/String;Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p3}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/model/SnapWomb;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private e(Ljava/util/List;)Ljava/util/LinkedHashMap;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 255
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 256
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/AnnotatedMediabryo;

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->O()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    sget-object v3, Lcom/snapchat/android/util/cache/Caches;->a:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/snapchat/android/util/cache/Cache;->a(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 260
    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/SnapWomb;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    goto :goto_0

    .line 265
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Ljava/util/LinkedHashMap;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/AnnotatedMediabryo;

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->O()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 244
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 247
    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/SnapWomb;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    goto :goto_0

    .line 250
    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mPostingSnapbryoMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 157
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 158
    :cond_0
    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->J()Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/snapchat/android/model/SnapWomb$1;->$SwitchMap$com$snapchat$android$model$Mediabryo$UploadStatus:[I

    invoke-virtual {v0}, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 64
    :pswitch_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedChatMediaSnapbryos:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedChatMediaSnapbryos:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Lcom/snapchat/android/controller/SendSnapController;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedPostSnapbryoMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 173
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/AnnotatedMediabryo;

    .line 174
    if-eqz v0, :cond_0

    .line 176
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p2, v0, v2, v3}, Lcom/snapchat/android/controller/SendSnapController;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;ZZ)V
    :try_end_0
    .catch Lcom/snapchat/android/api/SendSnapWithMediaTask$SendSnapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$SendDSnapException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    :goto_1
    new-instance v2, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V

    goto :goto_0

    .line 177
    :catch_1
    move-exception v0

    goto :goto_1

    .line 182
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mPostingSnapbryoMaps:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, p2}, Lcom/snapchat/android/model/SnapWomb;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedPostSnapbryoMaps:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1, p2}, Lcom/snapchat/android/model/SnapWomb;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/snapchat/android/model/SnapWomb;->e(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 194
    iget-object v1, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedPostSnapbryoMaps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/AnnotatedMediabryo;

    .line 197
    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->l()Ljava/util/ArrayList;

    move-result-object v1

    .line 198
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/PostToStory;

    .line 199
    invoke-virtual {v1}, Lcom/snapchat/android/model/PostToStory;->c()Ljava/lang/String;

    move-result-object v4

    .line 200
    iget-object v1, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedPostSnapbryoMaps:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 201
    if-nez v1, :cond_1

    .line 202
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 203
    iget-object v5, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedPostSnapbryoMaps:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 208
    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedPostSnapbryoMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 167
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 168
    :cond_0
    return-object v0
.end method

.method public b(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->K()Lcom/snapchat/android/model/Mediabryo$SendStatus;

    move-result-object v0

    .line 79
    invoke-static {p1}, Lcom/snapchat/android/chat/ConversationUtils;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 80
    sget-object v1, Lcom/snapchat/android/model/SnapWomb$1;->$SwitchMap$com$snapchat$android$model$Mediabryo$SendStatus:[I

    invoke-virtual {v0}, Lcom/snapchat/android/model/Mediabryo$SendStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mSendingSnapbryos:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mSendingSnapbryos:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedSendSnapbryos:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedSendSnapbryos:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mSendingSnapbryos:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/SnapWomb;->e(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedSendSnapbryos:Ljava/util/LinkedHashMap;

    .line 224
    return-void
.end method

.method public c()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mPostingSnapbryoMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method public c(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 7
    .parameter

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->l()Ljava/util/ArrayList;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->L()Lcom/snapchat/android/model/Mediabryo$PostStatus;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/PostToStory;

    .line 100
    invoke-virtual {v0}, Lcom/snapchat/android/model/PostToStory;->c()Ljava/lang/String;

    move-result-object v3

    .line 101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->e()Lcom/snapchat/android/model/AnnotatedMediabryo;

    move-result-object v5

    .line 107
    invoke-virtual {v5, v4}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Ljava/util/ArrayList;)V

    .line 109
    sget-object v4, Lcom/snapchat/android/model/SnapWomb$1;->$SwitchMap$com$snapchat$android$model$Mediabryo$PostStatus:[I

    invoke-virtual {v1}, Lcom/snapchat/android/model/Mediabryo$PostStatus;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 124
    :goto_1
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/StoryLibrary;->l()Ljava/util/Map;

    move-result-object v4

    .line 125
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 126
    new-instance v5, Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0}, Lcom/snapchat/android/model/PostToStory;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v3, v0}, Lcom/snapchat/android/model/StoryGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :pswitch_0
    iget-object v4, p0, Lcom/snapchat/android/model/SnapWomb;->mPostingSnapbryoMaps:Ljava/util/HashMap;

    invoke-direct {p0, v4, v3, v5}, Lcom/snapchat/android/model/SnapWomb;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    goto :goto_1

    .line 114
    :pswitch_1
    iget-object v4, p0, Lcom/snapchat/android/model/SnapWomb;->mPostingSnapbryoMaps:Ljava/util/HashMap;

    invoke-direct {p0, v4, v3, v5}, Lcom/snapchat/android/model/SnapWomb;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 115
    iget-object v4, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedPostSnapbryoMaps:Ljava/util/HashMap;

    invoke-direct {p0, v4, v3, v5}, Lcom/snapchat/android/model/SnapWomb;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    goto :goto_1

    .line 120
    :pswitch_2
    iget-object v4, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedPostSnapbryoMaps:Ljava/util/HashMap;

    invoke-direct {p0, v4, v3, v5}, Lcom/snapchat/android/model/SnapWomb;->b(Ljava/util/HashMap;Ljava/lang/String;Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 121
    iget-object v4, p0, Lcom/snapchat/android/model/SnapWomb;->mPostingSnapbryoMaps:Ljava/util/HashMap;

    invoke-direct {p0, v4, v3, v5}, Lcom/snapchat/android/model/SnapWomb;->a(Ljava/util/HashMap;Ljava/lang/String;Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    goto :goto_1

    .line 130
    :cond_1
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mSendingSnapbryos:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/AnnotatedMediabryo;

    .line 270
    if-eqz v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedSendSnapbryos:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/SnapWomb;->e(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedChatMediaSnapbryos:Ljava/util/LinkedHashMap;

    .line 232
    return-void
.end method

.method public d()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedPostSnapbryoMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method public d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 3
    .parameter

    .prologue
    .line 281
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v1

    .line 282
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mSendingSnapbryos:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedSendSnapbryos:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->l()Ljava/util/ArrayList;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/PostToStory;

    .line 288
    invoke-virtual {v0}, Lcom/snapchat/android/model/PostToStory;->c()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/model/SnapWomb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_0
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/SnapWomb;->e(Ljava/util/List;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mSendingSnapbryos:Ljava/util/LinkedHashMap;

    .line 295
    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedPostSnapbryoMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 187
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0, v1}, Lcom/snapchat/android/model/SnapWomb;->a(Ljava/util/LinkedHashMap;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 1
    .parameter

    .prologue
    .line 303
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$PostStatus;)V

    .line 304
    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/SnapWomb;->c(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 305
    return-void
.end method

.method public f()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mSendingSnapbryos:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public g()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedSendSnapbryos:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedSendSnapbryos:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/SnapWomb;->a(Ljava/util/LinkedHashMap;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedChatMediaSnapbryos:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public j()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mFailedChatMediaSnapbryos:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/SnapWomb;->a(Ljava/util/LinkedHashMap;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/snapchat/android/model/SnapWomb;->mSendingSnapbryos:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/SnapWomb;->a(Ljava/util/LinkedHashMap;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
