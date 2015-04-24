.class public Lcom/snapchat/android/fragments/addfriends/TappableAddFriendsTextProvider;
.super Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/TappableAddFriendsTextProvider$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/Friend;Z)Ljava/lang/String;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 22
    if-nez p2, :cond_0

    .line 23
    const-string v0, ""

    .line 40
    :goto_0
    return-object v0

    .line 26
    :cond_0
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/TappableAddFriendsTextProvider$1;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->P()Lcom/snapchat/android/model/Friend$Direction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend$Direction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 37
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/TappableAddFriendsTextProvider;->c(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 29
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/TappableAddFriendsTextProvider;->d(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 33
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/TappableAddFriendsTextProvider;->e(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;->a(Lcom/snapchat/android/model/Friend;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected d(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->r_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const v0, 0x7f0c0008

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0c0007

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected e(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    sget-object v0, Lcom/snapchat/android/model/FriendProfileInfo;->sUsernamesToProfileInfo:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/FriendProfileInfo;

    .line 61
    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/snapchat/android/model/FriendProfileInfo;->b()I

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/util/NumberFormatUtils;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->r_()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const v1, 0x7f0c021f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    .line 67
    :cond_0
    const v1, 0x7f0c002e

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->r_()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_2
    const v0, 0x7f0c0115

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
