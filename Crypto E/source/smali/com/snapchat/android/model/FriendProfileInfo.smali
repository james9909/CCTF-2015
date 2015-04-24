.class public Lcom/snapchat/android/model/FriendProfileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/FriendProfileInfo$FriendProfileInfoListener;
    }
.end annotation


# static fields
.field public static sUsernamesToProfileInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/FriendProfileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBestFriends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScore:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/snapchat/android/model/FriendProfileInfo;->sUsernamesToProfileInfo:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/FriendProfileInfo;->mBestFriends:Ljava/util/ArrayList;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/model/FriendProfileInfo;->mScore:I

    .line 32
    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/FriendProfileInfo;->a(Ljava/util/List;)V

    .line 33
    iput p2, p0, Lcom/snapchat/android/model/FriendProfileInfo;->mScore:I

    .line 34
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendProfileInfo$FriendProfileInfoListener;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 59
    sget-object v0, Lcom/snapchat/android/model/FriendProfileInfo;->sUsernamesToProfileInfo:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/FriendProfileInfo;

    .line 60
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/snapchat/android/model/FriendProfileInfo$1;

    invoke-direct {v0, p0, p1, p0}, Lcom/snapchat/android/model/FriendProfileInfo$1;-><init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendProfileInfo$FriendProfileInfoListener;Lcom/snapchat/android/model/Friend;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/model/FriendProfileInfo$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-interface {p1, v0}, Lcom/snapchat/android/model/FriendProfileInfo$FriendProfileInfoListener;->a(Lcom/snapchat/android/model/FriendProfileInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/model/FriendProfileInfo;->mBestFriends:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/snapchat/android/model/FriendProfileInfo;->mScore:I

    .line 51
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snapchat/android/model/FriendProfileInfo;->mBestFriends:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 38
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v1

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    iget-object v3, p0, Lcom/snapchat/android/model/FriendProfileInfo;->mBestFriends:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FriendUtils;->d(Ljava/lang/String;Lcom/snapchat/android/model/User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/snapchat/android/model/FriendProfileInfo;->mScore:I

    return v0
.end method
