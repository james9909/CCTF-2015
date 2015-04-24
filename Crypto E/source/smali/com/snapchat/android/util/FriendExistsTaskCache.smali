.class public Lcom/snapchat/android/util/FriendExistsTaskCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/api2/FriendExistsTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/FriendExistsTaskCache;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;
    .locals 3
    .parameter

    .prologue
    .line 19
    sget-object v0, Lcom/snapchat/android/util/FriendExistsTaskCache;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/FriendExistsTask;

    .line 20
    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/snapchat/android/api2/FriendExistsTask;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/FriendExistsTask;-><init>(Lcom/snapchat/android/model/Friend;)V

    .line 22
    sget-object v1, Lcom/snapchat/android/util/FriendExistsTaskCache;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v0}, Lcom/snapchat/android/api2/FriendExistsTask;->g()V

    .line 26
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/api2/FriendExistsTask;->e()Lcom/snapchat/android/model/Friend;

    move-result-object p0

    goto :goto_0
.end method

.method public static b(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 32
    invoke-static {p0}, Lcom/snapchat/android/util/FriendExistsTaskCache;->a(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;

    move-result-object p0

    .line 35
    :goto_0
    return-object p0

    .line 34
    :cond_0
    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->DOES_NOT_EXIST:Lcom/snapchat/android/model/Friend$SuggestState;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$SuggestState;)V

    goto :goto_0
.end method
