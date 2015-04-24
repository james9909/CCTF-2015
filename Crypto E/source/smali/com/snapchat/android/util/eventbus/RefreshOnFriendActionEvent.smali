.class public Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/model/Friend;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Lcom/snapchat/android/model/FriendAction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->NONE:Lcom/snapchat/android/model/FriendAction;

    iput-object v0, p0, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->b:Lcom/snapchat/android/model/FriendAction;

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->c:I

    .line 21
    iput p1, p0, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->c:I

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V
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
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->NONE:Lcom/snapchat/android/model/FriendAction;

    iput-object v0, p0, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->b:Lcom/snapchat/android/model/FriendAction;

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->c:I

    .line 16
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->a:Lcom/snapchat/android/model/Friend;

    .line 17
    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->b:Lcom/snapchat/android/model/FriendAction;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/model/Friend;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->a:Lcom/snapchat/android/model/Friend;

    return-object v0
.end method

.method public b()Lcom/snapchat/android/model/FriendAction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->b:Lcom/snapchat/android/model/FriendAction;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->c:I

    return v0
.end method
