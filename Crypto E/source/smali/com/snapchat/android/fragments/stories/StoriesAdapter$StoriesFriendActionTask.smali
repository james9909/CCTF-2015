.class Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;
.super Lcom/snapchat/android/api/FriendActionTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoriesFriendActionTask"
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

.field final synthetic c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V
    .locals 7
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    .line 1042
    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/api/FriendActionTask;-><init>(Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 1043
    iput-object p8, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;->a:Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    .line 1044
    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1036
    invoke-direct/range {p0 .. p8}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 1056
    invoke-super {p0, p1}, Lcom/snapchat/android/api/FriendActionTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 1057
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->NONE:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/FriendAction;)V

    .line 1060
    :cond_0
    return-void
.end method

.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 1064
    invoke-super {p0, p1}, Lcom/snapchat/android/api/FriendActionTask;->b(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 1065
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a()V

    .line 1066
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1036
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1048
    invoke-super {p0}, Lcom/snapchat/android/api/FriendActionTask;->onPreExecute()V

    .line 1049
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;->mFriend:Lcom/snapchat/android/model/Friend;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;->mAction:Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/FriendAction;)V

    .line 1052
    :cond_0
    return-void
.end method
