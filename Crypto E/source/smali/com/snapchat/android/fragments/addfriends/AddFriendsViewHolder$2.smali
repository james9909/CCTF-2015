.class Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/model/FriendProfileInfo$FriendProfileInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Lcom/snapchat/android/model/Friend;ILandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;Lcom/snapchat/android/model/Friend;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$2;->b:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$2;->a:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/FriendProfileInfo;)V
    .locals 2
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->c()V

    .line 218
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$2;->b:Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$2;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->c(Lcom/snapchat/android/model/Friend;)V

    .line 220
    :cond_0
    return-void
.end method
