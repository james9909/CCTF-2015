.class public Lcom/snapchat/android/discover/api/SendDSnapTask;
.super Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Ljava/util/HashMap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/snapchat/android/model/User;

.field private c:Lcom/snapchat/android/discover/model/DSnapbryo;

.field private d:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

.field private e:Lcom/snapchat/android/notification/AndroidNotificationManager;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/model/DSnapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BaseRetriableScRequestTask;-><init>()V

    .line 66
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->a:Landroid/content/Context;

    .line 67
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->b:Lcom/snapchat/android/model/User;

    .line 68
    iput-object p1, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    .line 69
    iput-object p2, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->d:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

    .line 70
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->e:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 71
    const-class v0, Ljava/util/HashMap;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/discover/api/SendDSnapTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 72
    return-void
.end method

.method private a([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 90
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 91
    iput-boolean v1, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->f:Z

    .line 93
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_5

    aget-object v4, p1, v0

    .line 94
    invoke-static {v4}, Lcom/snapchat/android/chat/ConversationUtils;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v5

    .line 95
    if-eqz v5, :cond_4

    .line 96
    invoke-virtual {v5}, Lcom/snapchat/android/model/chat/ChatConversation;->aC()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 97
    invoke-virtual {v5, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->n(Z)V

    .line 100
    :cond_0
    iget-object v6, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-virtual {v6, v4}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    move-result-object v6

    .line 106
    sget-object v7, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->d:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    if-eq v6, v7, :cond_1

    sget-object v7, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->e:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    if-eq v6, v7, :cond_1

    sget-object v7, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->f:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->mCurrentRetryAttempt:I

    if-lez v6, :cond_3

    .line 110
    :cond_1
    iget-object v5, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-virtual {v5, v4}, Lcom/snapchat/android/discover/model/DSnapbryo;->d(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 111
    if-eqz v5, :cond_2

    .line 112
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_2
    iput-boolean v8, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->f:Z

    goto :goto_1

    .line 117
    :cond_3
    invoke-virtual {v5}, Lcom/snapchat/android/model/chat/ChatConversation;->n()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 118
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v6, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-virtual {v6, v4, v5}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 123
    :cond_4
    iput-boolean v8, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->f:Z

    goto :goto_1

    .line 127
    :cond_5
    return-object v2
.end method

.method private a(Ljava/lang/String;Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 152
    sget-object v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->b:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->c:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    if-ne p2, v0, :cond_1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->b(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/discover/model/DSnapbryo;->c(Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Ljava/lang/String;Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;)V

    goto :goto_0
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    iget-object v6, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->mGsonWrapper:Lcom/snapchat/android/util/GsonWrapper;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v7, Lcom/snapchat/android/discover/api/SendDSnapTask$1;

    invoke-direct {v7, p0}, Lcom/snapchat/android/discover/api/SendDSnapTask$1;-><init>(Lcom/snapchat/android/discover/api/SendDSnapTask;)V

    invoke-virtual {v7}, Lcom/snapchat/android/discover/api/SendDSnapTask$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    .line 167
    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/discover/api/SendDSnapTask;->a(Ljava/lang/String;Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;)V

    .line 170
    sget-object v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->b:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    if-eq v1, v0, :cond_3

    sget-object v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->c:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    if-eq v1, v0, :cond_3

    move v0, v4

    :goto_1
    move v2, v0

    .line 173
    goto :goto_0

    .line 175
    :cond_0
    if-eqz v2, :cond_2

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->d:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

    iget-object v1, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;->c(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 178
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->b:Lcom/snapchat/android/model/User;

    iget-object v1, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/AnnotatedMediabryo;)Lcom/snapchat/android/model/SentSnap;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapbryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 183
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_1

    .line 185
    iget-object v1, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapbryo;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v1

    .line 188
    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->c(Ljava/lang/String;)V

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->e:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iget-object v1, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    .line 195
    invoke-static {v4}, Lcom/snapchat/android/model/UserPrefs;->u(Z)V

    .line 199
    :goto_2
    return-void

    .line 197
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/discover/api/SendDSnapTask;->e()V

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private e()V
    .locals 3

    .prologue
    .line 202
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->an()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->d:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

    iget-object v1, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;->d(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 205
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->e:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iget-object v1, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 215
    :try_start_0
    new-instance v0, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;

    iget-object v1, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    iget-object v2, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->d:Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;-><init>(Lcom/snapchat/android/discover/model/DSnapbryo;Lcom/snapchat/android/api/SendSnapTask$SendSnapCallback;)V

    invoke-virtual {v0}, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask;->g()V
    :try_end_0
    .catch Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$SendDSnapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/api/SendDSnapWithMediaTask$SendDSnapException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/discover/api/SendDSnapTask;->a(Ljava/util/HashMap;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public a(Ljava/util/HashMap;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->f:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->b:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->b:Lcom/snapchat/android/model/User;

    invoke-static {v0}, Lcom/snapchat/android/api/SyncAllTask;->b(Lcom/snapchat/android/model/User;)V

    .line 138
    :cond_0
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 139
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/api/SendDSnapTask;->a(Ljava/util/HashMap;)V

    .line 149
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_2

    .line 141
    invoke-direct {p0}, Lcom/snapchat/android/discover/api/SendDSnapTask;->l()V

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v0

    if-nez v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    sget-object v1, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->f:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/DSnapbryo;->a(Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;)V

    .line 147
    :cond_3
    invoke-direct {p0}, Lcom/snapchat/android/discover/api/SendDSnapTask;->e()V

    goto :goto_0
.end method

.method protected d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapbryo;->f()[Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v2, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "media_id"

    iget-object v3, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapbryo;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "recipients"

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, ","

    invoke-static {v3, v4}, Lcom/snapchat/android/util/StringUtils;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "media_type"

    const-string v3, "DISCOVER_SHARE"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "media_enc_key"

    iget-object v3, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapbryo;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "media_enc_iv"

    iget-object v3, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->c:Lcom/snapchat/android/discover/model/DSnapbryo;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/DSnapbryo;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v2, "seq_nums"

    iget-object v3, p0, Lcom/snapchat/android/discover/api/SendDSnapTask;->mGsonWrapper:Lcom/snapchat/android/util/GsonWrapper;

    invoke-direct {p0, v1}, Lcom/snapchat/android/discover/api/SendDSnapTask;->a([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "/loq/conversation_share_media"

    invoke-static {v1, v0}, Lcom/snapchat/android/util/HttpUtils;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
