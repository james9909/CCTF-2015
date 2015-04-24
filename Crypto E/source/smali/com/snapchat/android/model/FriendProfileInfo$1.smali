.class final Lcom/snapchat/android/model/FriendProfileInfo$1;
.super Lcom/snapchat/android/api/GetProfileInfoTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/model/FriendProfileInfo;->a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendProfileInfo$FriendProfileInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$friend:Lcom/snapchat/android/model/Friend;

.field final synthetic val$listener:Lcom/snapchat/android/model/FriendProfileInfo$FriendProfileInfoListener;


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendProfileInfo$FriendProfileInfoListener;Lcom/snapchat/android/model/Friend;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p2, p0, Lcom/snapchat/android/model/FriendProfileInfo$1;->val$listener:Lcom/snapchat/android/model/FriendProfileInfo$FriendProfileInfoListener;

    iput-object p3, p0, Lcom/snapchat/android/model/FriendProfileInfo$1;->val$friend:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0, p1}, Lcom/snapchat/android/api/GetProfileInfoTask;-><init>(Lcom/snapchat/android/model/Friend;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 3
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/snapchat/android/api/GetProfileInfoTask;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 65
    iget-object v1, p0, Lcom/snapchat/android/model/FriendProfileInfo$1;->val$listener:Lcom/snapchat/android/model/FriendProfileInfo$FriendProfileInfoListener;

    sget-object v0, Lcom/snapchat/android/model/FriendProfileInfo;->sUsernamesToProfileInfo:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/snapchat/android/model/FriendProfileInfo$1;->val$friend:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v2}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/FriendProfileInfo;

    invoke-interface {v1, v0}, Lcom/snapchat/android/model/FriendProfileInfo$FriendProfileInfoListener;->a(Lcom/snapchat/android/model/FriendProfileInfo;)V

    .line 66
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    check-cast p1, Lcom/snapchat/android/model/server/ServerResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/FriendProfileInfo$1;->a(Lcom/snapchat/android/model/server/ServerResponse;)V

    return-void
.end method
