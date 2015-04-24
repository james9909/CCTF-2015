.class public Lcom/snapchat/android/operation/FindFriendsOperation;
.super Lcom/snapchat/android/operation/BasicScRequestOperation;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/operation/FindFriendsOperation$ResponsePayload;,
        Lcom/snapchat/android/operation/FindFriendsOperation$RequestPayload;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/operation/BasicScRequestOperation;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/android/operation/FindFriendsOperation$ResponsePayload;",
        ">;"
    }
.end annotation


# instance fields
.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/String;

.field private e:Lcom/snapchat/android/model/User;

.field private f:Landroid/content/Context;

.field private g:Lcom/squareup/otto/Bus;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/snapchat/android/operation/BasicScRequestOperation;-><init>(Landroid/content/Intent;)V

    .line 50
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->J()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "User has not given access to contacts. This is a privacy violation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/FindFriendsOperation;->g:Lcom/squareup/otto/Bus;

    .line 55
    const-class v0, Lcom/snapchat/android/operation/FindFriendsOperation$ResponsePayload;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/operation/FindFriendsOperation;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 56
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-static {p1}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/FindFriendsOperation;->e:Lcom/snapchat/android/model/User;

    .line 62
    iput-object p1, p0, Lcom/snapchat/android/operation/FindFriendsOperation;->f:Landroid/content/Context;

    .line 63
    invoke-static {p1}, Lcom/snapchat/android/util/AddressBookUtils;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/FindFriendsOperation;->b:Ljava/util/Map;

    .line 65
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 66
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/FindFriendsOperation;->c:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/operation/FindFriendsOperation;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "us"

    iput-object v0, p0, Lcom/snapchat/android/operation/FindFriendsOperation;->c:Ljava/lang/String;

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/snapchat/android/operation/BasicScRequestOperation;->a(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method protected a(Lcom/snapchat/android/operation/FindFriendsOperation$ResponsePayload;)V
    .locals 4
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/snapchat/android/operation/FindFriendsOperation;->f:Landroid/content/Context;

    iget-object v1, p1, Lcom/snapchat/android/operation/FindFriendsOperation$ResponsePayload;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/operation/FindFriendsOperation;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/snapchat/android/operation/FindFriendsOperation;->e:Lcom/snapchat/android/model/User;

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/util/AddressBookUtils;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Lcom/snapchat/android/model/User;)V

    .line 112
    iget-wide v0, p1, Lcom/snapchat/android/operation/FindFriendsOperation$ResponsePayload;->b:J

    invoke-static {v0, v1}, Lcom/snapchat/android/model/UserPrefs;->b(J)V

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/operation/FindFriendsOperation;->g:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ContactsOnSnapchatUpdatedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/ContactsOnSnapchatUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public a(Lcom/snapchat/android/operation/FindFriendsOperation$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 103
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lcom/snapchat/android/operation/FindFriendsOperation;->a(Lcom/snapchat/android/operation/FindFriendsOperation$ResponsePayload;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0, p2}, Lcom/snapchat/android/operation/FindFriendsOperation;->b(Lcom/snapchat/android/api2/framework/NetworkResult;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    check-cast p1, Lcom/snapchat/android/operation/FindFriendsOperation$ResponsePayload;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/operation/FindFriendsOperation;->a(Lcom/snapchat/android/operation/FindFriendsOperation$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/snapchat/android/operation/FindFriendsOperation;->g()Lcom/snapchat/android/operation/FindFriendsOperation$RequestPayload;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/snapchat/android/operation/FindFriendsOperation;->e:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/operation/FindFriendsOperation;->e:Lcom/snapchat/android/model/User;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v2, 0x0

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->a:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->b:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/User;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 129
    :cond_0
    return-void
.end method

.method protected b(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/snapchat/android/operation/FindFriendsOperation;->g:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ContactsOnSnapchatUpdatedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/ContactsOnSnapchatUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 119
    const-string v0, "FindFriendsOperation"

    const-string v1, "Request failed: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/operation/FindFriendsOperation;->g:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c0171

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "/ph/find_friends"

    return-object v0
.end method

.method public g()Lcom/snapchat/android/operation/FindFriendsOperation$RequestPayload;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/snapchat/android/operation/FindFriendsOperation$RequestPayload;

    invoke-direct {v0, p0}, Lcom/snapchat/android/operation/FindFriendsOperation$RequestPayload;-><init>(Lcom/snapchat/android/operation/FindFriendsOperation;)V

    return-object v0
.end method
