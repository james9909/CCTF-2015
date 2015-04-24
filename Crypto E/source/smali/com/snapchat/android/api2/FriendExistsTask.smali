.class public Lcom/snapchat/android/api2/FriendExistsTask;
.super Lcom/snapchat/android/api2/framework/BasicScRequestTask;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/FriendExistsTask$ResponsePayload;,
        Lcom/snapchat/android/api2/FriendExistsTask$RequestPayload;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/framework/BasicScRequestTask;",
        "Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback",
        "<",
        "Lcom/snapchat/android/api2/FriendExistsTask$ResponsePayload;",
        ">;"
    }
.end annotation


# static fields
.field public static final MIN_USERNAME_LENGTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FriendExistsTask"


# instance fields
.field private mBus:Lcom/squareup/otto/Bus;

.field private final mFriend:Lcom/snapchat/android/model/Friend;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/Friend;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/api2/FriendExistsTask;-><init>(Lcom/snapchat/android/model/Friend;Lcom/squareup/otto/Bus;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/Friend;Lcom/squareup/otto/Bus;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/snapchat/android/api2/FriendExistsTask;->mFriend:Lcom/snapchat/android/model/Friend;

    .line 36
    iput-object p2, p0, Lcom/snapchat/android/api2/FriendExistsTask;->mBus:Lcom/squareup/otto/Bus;

    .line 37
    const-class v0, Lcom/snapchat/android/api2/FriendExistsTask$ResponsePayload;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/FriendExistsTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/FriendExistsTask;)Lcom/snapchat/android/model/Friend;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/snapchat/android/api2/FriendExistsTask;->mFriend:Lcom/snapchat/android/model/Friend;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/api2/FriendExistsTask$ResponsePayload;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->DOES_NOT_EXIST:Lcom/snapchat/android/model/Friend$SuggestState;

    .line 82
    iget-boolean v1, p1, Lcom/snapchat/android/api2/FriendExistsTask$ResponsePayload;->exists:Z

    if-eqz v1, :cond_1

    .line 83
    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->EXISTS:Lcom/snapchat/android/model/Friend$SuggestState;

    .line 88
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/api2/FriendExistsTask;->mFriend:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$SuggestState;)V

    .line 89
    iget-object v0, p0, Lcom/snapchat/android/api2/FriendExistsTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/RefreshOnFriendExistsTask;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/RefreshOnFriendExistsTask;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 90
    return-void

    .line 84
    :cond_1
    iget-boolean v1, p1, Lcom/snapchat/android/api2/FriendExistsTask$ResponsePayload;->throttled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/snapchat/android/api2/FriendExistsTask$ResponsePayload;->logged:Z

    if-nez v1, :cond_0

    .line 85
    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->FAILED:Lcom/snapchat/android/model/Friend$SuggestState;

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/api2/FriendExistsTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V
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
    .line 73
    invoke-virtual {p2}, Lcom/snapchat/android/api2/framework/NetworkResult;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/snapchat/android/api2/FriendExistsTask;->a(Lcom/snapchat/android/api2/FriendExistsTask$ResponsePayload;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0, p2}, Lcom/snapchat/android/api2/FriendExistsTask;->b(Lcom/snapchat/android/api2/framework/NetworkResult;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/snapchat/android/api2/FriendExistsTask$ResponsePayload;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/FriendExistsTask;->a(Lcom/snapchat/android/api2/FriendExistsTask$ResponsePayload;Lcom/snapchat/android/api2/framework/NetworkResult;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/snapchat/android/api2/FriendExistsTask;->g_()Lcom/snapchat/android/api2/FriendExistsTask$RequestPayload;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/api2/FriendExistsTask;->mFriend:Lcom/snapchat/android/model/Friend;

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestState;->FAILED:Lcom/snapchat/android/model/Friend$SuggestState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$SuggestState;)V

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/api2/FriendExistsTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/RefreshOnFriendExistsTask;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/RefreshOnFriendExistsTask;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 97
    if-eqz p1, :cond_0

    .line 98
    const-string v0, "FriendExistsTask"

    const-string v1, "Request failed: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/FriendExistsTask;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c0171

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "/bq/user_exists"

    return-object v0
.end method

.method public e()Lcom/snapchat/android/model/Friend;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/snapchat/android/api2/FriendExistsTask;->mFriend:Lcom/snapchat/android/model/Friend;

    return-object v0
.end method

.method public g_()Lcom/snapchat/android/api2/FriendExistsTask$RequestPayload;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/snapchat/android/api2/FriendExistsTask$RequestPayload;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/FriendExistsTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/FriendExistsTask;)V

    return-object v0
.end method
