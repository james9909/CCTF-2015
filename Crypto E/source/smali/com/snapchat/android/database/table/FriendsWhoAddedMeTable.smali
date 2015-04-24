.class public Lcom/snapchat/android/database/table/FriendsWhoAddedMeTable;
.super Lcom/snapchat/android/database/table/FriendTable;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/database/table/FriendsWhoAddedMeTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/snapchat/android/database/table/FriendsWhoAddedMeTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/FriendsWhoAddedMeTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/FriendsWhoAddedMeTable;->a:Lcom/snapchat/android/database/table/FriendsWhoAddedMeTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/snapchat/android/database/table/FriendTable;-><init>()V

    return-void
.end method

.method public static b()Lcom/snapchat/android/database/table/FriendsWhoAddedMeTable;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/snapchat/android/database/table/FriendsWhoAddedMeTable;->a:Lcom/snapchat/android/database/table/FriendsWhoAddedMeTable;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "FriendsWhoAddedMe"

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/database/table/FriendsWhoAddedMeTable;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/database/table/FriendsWhoAddedMeTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/User;->e(Ljava/util/List;)V

    .line 34
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
    .line 28
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->w()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
