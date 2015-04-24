.class public Lcom/snapchat/android/api/FindFriendsTask;
.super Lcom/snapchat/android/api/RequestTask;
.source "SourceFile"


# static fields
.field private static final TASK_NAME:Ljava/lang/String; = "FindFriendsTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field mPhoneNumbersToNames:Ljava/util/Map;
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

.field private mUser:Lcom/snapchat/android/model/User;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/snapchat/android/api/RequestTask;-><init>()V

    .line 34
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/FindFriendsTask;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->J()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "User has not given access to contacts. This is a privacy violation."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/snapchat/android/model/server/ServerResponse;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/api/FindFriendsTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/FindFriendsTask;->mUser:Lcom/snapchat/android/model/User;

    .line 67
    invoke-super {p0, p1}, Lcom/snapchat/android/api/RequestTask;->a([Ljava/lang/String;)Lcom/snapchat/android/model/server/ServerResponse;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "/ph/find_friends"

    return-object v0
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 87
    const-string v0, "Finding friends failed"

    invoke-super {p0, v0, p2}, Lcom/snapchat/android/api/RequestTask;->a(Ljava/lang/String;I)V

    .line 88
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ContactsOnSnapchatUpdatedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/ContactsOnSnapchatUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method protected b()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 49
    const-string v0, "username"

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/api/FindFriendsTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/snapchat/android/util/AddressBookUtils;->a(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/FindFriendsTask;->mPhoneNumbersToNames:Ljava/util/Map;

    .line 52
    const-string v0, "numbers"

    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/api/FindFriendsTask;->mPhoneNumbersToNames:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/api/FindFriendsTask;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 55
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "us"

    .line 59
    :cond_0
    const-string v2, "countryCode"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-object v1
.end method

.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 4
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/snapchat/android/api/FindFriendsTask;->mUser:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/api/FindFriendsTask;->mUser:Lcom/snapchat/android/model/User;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const/4 v2, 0x0

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->a:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->b:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/User;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 82
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ContactsOnSnapchatUpdatedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/ContactsOnSnapchatUpdatedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "FindFriendsTask"

    return-object v0
.end method

.method protected c(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 4
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/api/FindFriendsTask;->mUser:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/api/FindFriendsTask;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->results:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/api/FindFriendsTask;->mPhoneNumbersToNames:Ljava/util/Map;

    iget-object v3, p0, Lcom/snapchat/android/api/FindFriendsTask;->mUser:Lcom/snapchat/android/model/User;

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/util/AddressBookUtils;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Lcom/snapchat/android/model/User;)V

    .line 75
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 25
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api/FindFriendsTask;->a([Ljava/lang/String;)Lcom/snapchat/android/model/server/ServerResponse;

    move-result-object v0

    return-object v0
.end method
