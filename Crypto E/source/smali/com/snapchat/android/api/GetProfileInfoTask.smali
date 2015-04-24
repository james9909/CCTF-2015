.class public Lcom/snapchat/android/api/GetProfileInfoTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_NUM_TO_FETCH:I = 0x14

.field private static final FRIEND_USERNAMES_PARAM:Ljava/lang/String; = "friend_usernames"

.field private static final TASK_NAME:Ljava/lang/String; = "GetProfileInfoTask"

.field private static final USERNAME_PARAM:Ljava/lang/String; = "username"


# instance fields
.field private mUser:Lcom/snapchat/android/model/User;

.field private mUsernamesToGet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/Friend;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 43
    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/api/GetProfileInfoTask;-><init>(Lcom/snapchat/android/model/Friend;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/Friend;I)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/api/GetProfileInfoTask;->mUsernamesToGet:Ljava/util/ArrayList;

    .line 51
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/GetProfileInfoTask;->mUser:Lcom/snapchat/android/model/User;

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/api/GetProfileInfoTask;->mUser:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_0

    if-gtz p2, :cond_1

    .line 76
    :cond_0
    return-void

    .line 56
    :cond_1
    div-int/lit8 v0, p2, 0x2

    .line 57
    iget-object v1, p0, Lcom/snapchat/android/api/GetProfileInfoTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-virtual {v1}, Lcom/snapchat/android/model/User;->s()Ljava/util/List;

    move-result-object v3

    .line 58
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 59
    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 60
    const/4 v1, -0x1

    if-eq v2, v1, :cond_0

    .line 62
    sub-int v1, v2, v0

    .line 63
    add-int/2addr v0, v2

    .line 65
    if-gez v1, :cond_2

    .line 66
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    const/4 v1, 0x0

    .line 70
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 72
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, p2, :cond_3

    :goto_1
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/api/GetProfileInfoTask;->mUsernamesToGet:Ljava/util/ArrayList;

    .line 73
    :goto_2
    if-gt v1, v2, :cond_0

    .line 74
    iget-object v4, p0, Lcom/snapchat/android/api/GetProfileInfoTask;->mUsernamesToGet:Ljava/util/ArrayList;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 72
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/api/GetProfileInfoTask;->mUsernamesToGet:Ljava/util/ArrayList;

    .line 79
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/GetProfileInfoTask;->mUser:Lcom/snapchat/android/model/User;

    .line 80
    iput-object p1, p0, Lcom/snapchat/android/api/GetProfileInfoTask;->mUsernamesToGet:Ljava/util/ArrayList;

    .line 81
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "/bq/bests"

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 102
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 104
    iget-object v1, p0, Lcom/snapchat/android/api/GetProfileInfoTask;->mUsernamesToGet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 106
    if-eqz v2, :cond_0

    .line 107
    const-string v3, "best_friends"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 108
    const-string v5, "score"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    .line 109
    sget-object v5, Lcom/snapchat/android/model/FriendProfileInfo;->sUsernamesToProfileInfo:Ljava/util/HashMap;

    new-instance v6, Lcom/snapchat/android/model/FriendProfileInfo;

    invoke-direct {v6, v3, v2}, Lcom/snapchat/android/model/FriendProfileInfo;-><init>(Ljava/util/List;I)V

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/FriendProfileUpdateComplete;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/FriendProfileUpdateComplete;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/FriendProfileUpdateComplete;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/FriendProfileUpdateComplete;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method protected b()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    const-string v1, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/api/GetProfileInfoTask;->mUsernamesToGet:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string v2, "friend_usernames"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-object v0
.end method

.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "GetProfileInfoTask"

    return-object v0
.end method

.method protected c(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    return-void
.end method
