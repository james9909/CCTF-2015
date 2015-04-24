.class public Lcom/snapchat/android/service/SnapchatServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/service/SnapchatServiceManager;


# instance fields
.field private b:Ljava/lang/Integer;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/snapchat/android/service/IntentPool;

.field private e:Landroid/content/Context;

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Lcom/snapchat/android/service/SnapchatServiceListener;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->b:Ljava/lang/Integer;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->c:Ljava/util/Map;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->f:Landroid/util/SparseArray;

    .line 59
    invoke-direct {p0}, Lcom/snapchat/android/service/SnapchatServiceManager;->f()V

    .line 60
    return-void
.end method

.method public static a(Lcom/snapchat/android/operation/Operation;)I
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, -0x1

    .line 91
    if-eqz p0, :cond_0

    .line 92
    invoke-interface {p0}, Lcom/snapchat/android/operation/Operation;->a()Landroid/content/Intent;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_0

    .line 94
    const-string v2, "request_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 97
    :cond_0
    return v0
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/service/SnapchatServiceManager;
    .locals 2

    .prologue
    .line 63
    const-class v1, Lcom/snapchat/android/service/SnapchatServiceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/service/SnapchatServiceManager;->a:Lcom/snapchat/android/service/SnapchatServiceManager;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-direct {v0}, Lcom/snapchat/android/service/SnapchatServiceManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/service/SnapchatServiceManager;->a:Lcom/snapchat/android/service/SnapchatServiceManager;

    .line 66
    :cond_0
    sget-object v0, Lcom/snapchat/android/service/SnapchatServiceManager;->a:Lcom/snapchat/android/service/SnapchatServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 78
    const-class v1, Lcom/snapchat/android/service/SnapchatServiceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/service/SnapchatServiceManager;->a:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-direct {v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit v1

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(Lcom/snapchat/android/operation/Operation;)I
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, -0x1

    .line 421
    if-eqz p0, :cond_0

    .line 422
    invoke-interface {p0}, Lcom/snapchat/android/operation/Operation;->a()Landroid/content/Intent;

    move-result-object v1

    .line 423
    if-eqz v1, :cond_0

    .line 424
    const-string v2, "op_code"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 427
    :cond_0
    return v0
.end method

.method private d(Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 13
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 378
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 379
    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 382
    :cond_0
    iget-object v5, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->c:Ljava/util/Map;

    monitor-enter v5

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 384
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 385
    if-nez v7, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 386
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    move-result v1

    invoke-virtual {v7}, Landroid/os/Bundle;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 387
    const/4 v3, 0x1

    .line 388
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 389
    const-string v9, "request_id"

    invoke-static {v9, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 392
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    move v1, v2

    .line 411
    :goto_0
    if-eqz v1, :cond_1

    .line 412
    const-string v1, "request_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-exit v5

    .line 417
    :goto_1
    return-object v0

    .line 396
    :cond_4
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 397
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 398
    if-nez v9, :cond_5

    .line 399
    const-string v9, "SnapchatServiceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "pending request id key ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "] has value null!"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v1, v11}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    if-eqz v10, :cond_3

    move v1, v2

    .line 402
    goto :goto_0

    .line 404
    :cond_5
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 406
    goto :goto_0

    .line 416
    :cond_6
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->b:Ljava/lang/Integer;

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 72
    new-instance v0, Lcom/snapchat/android/service/IntentPool;

    invoke-direct {v0}, Lcom/snapchat/android/service/IntentPool;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->d:Lcom/snapchat/android/service/IntentPool;

    .line 73
    return-void
.end method

.method private g()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;I[B)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-virtual {p0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 213
    const-string v1, "op_code"

    const/16 v2, 0x3f1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const-string v1, "snapTagVersion"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string v1, "snapTag"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 217
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 192
    const-string v1, "op_code"

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    const-string v1, "content_values"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 106
    const-string v1, "op_code"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v1, "gcm_intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 162
    const-string v1, "op_code"

    const/16 v2, 0x3f4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-string v1, "action"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v1, "param"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 113
    const-string v1, "op_code"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    const-string v1, "clear"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    const-string v1, "notification_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;J)Landroid/app/PendingIntent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    const-string v1, "op_code"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v1, "conversationId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "latestSeenItemTimestamp"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 144
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public a(ILcom/snapchat/android/service/SnapchatServiceListener;)V
    .locals 3
    .parameter
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 270
    const-string v0, "SnapchatServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->f:Landroid/util/SparseArray;

    monitor-enter v1

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 273
    if-nez v0, :cond_0

    .line 274
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 276
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v2, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 278
    monitor-exit v1

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->e:Landroid/content/Context;

    .line 88
    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 336
    if-eqz p1, :cond_0

    const-string v0, "request_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 129
    const-string v1, "op_code"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string v1, "display_notifications"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v4, 0x0

    .line 247
    const-string v0, "SnapchatServiceManager"

    const-string v1, "startCommand"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    invoke-direct {p0}, Lcom/snapchat/android/service/SnapchatServiceManager;->g()I

    move-result v0

    .line 250
    const-string v1, "request_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    invoke-direct {p0, p2}, Lcom/snapchat/android/service/SnapchatServiceManager;->d(Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object v1

    .line 253
    if-nez v1, :cond_0

    .line 254
    const-string v1, "SnapchatServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start service with the new request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 261
    :goto_0
    return v0

    .line 259
    :cond_0
    const-string v0, "SnapchatServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not start service if there is a pending operation with the request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->d:Lcom/snapchat/android/service/IntentPool;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/service/IntentPool;->a(Landroid/content/Intent;)V

    .line 261
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 121
    const-string v1, "op_code"

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v1, "clear"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    const-string v1, "notification_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)I
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 343
    const-string v0, "request_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public b(ILcom/snapchat/android/service/SnapchatServiceListener;)V
    .locals 3
    .parameter
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 286
    const-string v0, "SnapchatServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->f:Landroid/util/SparseArray;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 289
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 292
    :cond_0
    monitor-exit v1

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/snapchat/android/operation/Operation;)V
    .locals 3
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 300
    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->f:Landroid/util/SparseArray;

    monitor-enter v1

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->f:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->c(Lcom/snapchat/android/operation/Operation;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 302
    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/service/SnapchatServiceListener;

    .line 304
    invoke-interface {v0, p1}, Lcom/snapchat/android/service/SnapchatServiceListener;->a(Lcom/snapchat/android/operation/Operation;)V

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    return-void
.end method

.method public c()I
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 230
    const-string v1, "op_code"

    const/16 v2, 0x3f5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->e:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public c(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 171
    const-string v1, "op_code"

    const/16 v2, 0x3f7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string v1, "email"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public c(Landroid/content/Intent;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 350
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/snapchat/android/service/IntentPool;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->d:Lcom/snapchat/android/service/IntentPool;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/service/IntentPool;->a(Landroid/content/Intent;)V

    .line 353
    :cond_0
    return-void
.end method

.method public d()I
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 236
    const-string v1, "op_code"

    const/16 v2, 0x3f6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->e:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public d(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 149
    const-string v1, "op_code"

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 178
    const-string v1, "op_code"

    const/16 v2, 0x3f8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public e(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 198
    invoke-virtual {p0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 199
    const-string v1, "op_code"

    const/16 v2, 0x3ed

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v1, "clear"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 185
    const-string v1, "op_code"

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 207
    const-string v1, "op_code"

    const/16 v2, 0x3ef

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->g(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 223
    const-string v1, "op_code"

    const/16 v2, 0x3f2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string v1, "ImageId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public g(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/snapchat/android/service/SnapchatServiceManager;->d:Lcom/snapchat/android/service/IntentPool;

    const-class v1, Lcom/snapchat/android/service/SnapchatService;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/service/IntentPool;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
