.class public Lcom/snapchat/android/database/table/ContactOnSnapchatTable;
.super Lcom/snapchat/android/database/table/FriendTable;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/database/table/ContactOnSnapchatTable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/snapchat/android/database/table/FriendTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/ContactOnSnapchatTable;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lcom/snapchat/android/database/table/ContactOnSnapchatTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/ContactOnSnapchatTable;->a:Lcom/snapchat/android/database/table/ContactOnSnapchatTable;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/snapchat/android/database/table/ContactOnSnapchatTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ContactOnSnapchatTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/ContactOnSnapchatTable;->a:Lcom/snapchat/android/database/table/ContactOnSnapchatTable;

    .line 22
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/ContactOnSnapchatTable;->a:Lcom/snapchat/android/database/table/ContactOnSnapchatTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "ContactsOnSnapchat"

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/ContactOnSnapchatTable;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/database/table/ContactOnSnapchatTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/User;->c(Ljava/util/List;)V

    .line 39
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->p()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 40
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->p()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->q()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 41
    return-void
.end method

.method protected b(Lcom/snapchat/android/model/User;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/User;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->r()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
