.class Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/service/SnapchatServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/operation/Operation;)V
    .locals 3
    .parameter

    .prologue
    .line 134
    invoke-static {p1}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(Lcom/snapchat/android/operation/Operation;)I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->a(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->n()V

    .line 139
    :cond_0
    return-void
.end method
