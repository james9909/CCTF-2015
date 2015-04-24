.class public Lcom/snapchat/android/operation/UpdateSnapsOperation;
.super Lcom/snapchat/android/operation/BasicScRequestOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/operation/UpdateSnapsOperation$RequestPayload;
    }
.end annotation


# instance fields
.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/ReceivedSnap;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/server/AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/snapchat/android/operation/BasicScRequestOperation;-><init>(Landroid/content/Intent;)V

    .line 45
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/operation/UpdateSnapsOperation;->a:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->B()Ljava/util/Map;

    move-result-object v1

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/operation/UpdateSnapsOperation;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 114
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snapchat/android/chat/ConversationUtils;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v3

    .line 115
    if-eqz v3, :cond_0

    .line 116
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->d(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v3, :cond_0

    .line 118
    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/ReceivedSnap;->a(Z)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/operation/UpdateSnapsOperation;->a:Lcom/snapchat/android/model/User;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/User;->a(Z)V

    .line 123
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/snapchat/android/operation/UpdateSnapsOperation;->e:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;

    iget-object v1, p0, Lcom/snapchat/android/operation/UpdateSnapsOperation;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->a(Ljava/util/List;)V

    .line 128
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/operation/UpdateSnapsOperation;->a:Lcom/snapchat/android/model/User;

    if-nez v0, :cond_0

    .line 51
    const-string v0, "UpdateSnapOperation"

    const-string v1, "Load the user data in background because the User object is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-static {p1}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/UpdateSnapsOperation;->a:Lcom/snapchat/android/model/User;

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lcom/snapchat/android/operation/BasicScRequestOperation;->a(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public a(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/snapchat/android/operation/BasicScRequestOperation;->a(Lcom/snapchat/android/api2/framework/NetworkResult;)V

    .line 100
    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/snapchat/android/operation/UpdateSnapsOperation;->i()V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/operation/UpdateSnapsOperation;->k()V

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/snapchat/android/operation/UpdateSnapsOperation;->g()Lcom/snapchat/android/operation/UpdateSnapsOperation$RequestPayload;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "/bq/update_snaps"

    return-object v0
.end method

.method public g()Lcom/snapchat/android/operation/UpdateSnapsOperation$RequestPayload;
    .locals 5

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/snapchat/android/operation/UpdateSnapsOperation;->a:Lcom/snapchat/android/model/User;

    invoke-virtual {v1}, Lcom/snapchat/android/model/User;->B()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/snapchat/android/operation/UpdateSnapsOperation;->b:Ljava/util/Map;

    .line 66
    new-instance v1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/snapchat/android/operation/UpdateSnapsOperation;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/operation/UpdateSnapsOperation;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    .line 69
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->A()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/snapchat/android/operation/UpdateSnapsOperation;->a:Lcom/snapchat/android/model/User;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/snapchat/android/model/User;->a(Z)V

    .line 70
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/model/server/SnapUpdate;

    invoke-direct {v4, v0}, Lcom/snapchat/android/model/server/SnapUpdate;-><init>(Lcom/snapchat/android/model/ReceivedSnap;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/operation/UpdateSnapsOperation;->e:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/UpdateSnapsOperation;->c:Ljava/util/List;

    .line 74
    new-instance v0, Lcom/snapchat/android/operation/UpdateSnapsOperation$RequestPayload;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/operation/UpdateSnapsOperation$RequestPayload;-><init>(Lcom/snapchat/android/operation/UpdateSnapsOperation;Ljava/util/Map;)V

    return-object v0
.end method
