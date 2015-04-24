.class public Lcom/snapchat/android/util/FriendSectionizer$AddFriendsSearchSectionizer;
.super Lcom/snapchat/android/util/FriendSectionizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/FriendSectionizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddFriendsSearchSectionizer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/FriendSectionizer",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/snapchat/android/util/FriendSectionizer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/Friend;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 127
    if-nez p2, :cond_0

    .line 128
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->USERNAME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 137
    :goto_0
    return-object v0

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->P()Lcom/snapchat/android/model/Friend$Direction;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/Friend$Direction;->INCOMING:Lcom/snapchat/android/model/Friend$Direction;

    if-ne v0, v1, :cond_1

    .line 130
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->FRIENDS_WHO_ADDED_ME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->Q()Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    if-ne v0, v1, :cond_2

    .line 132
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->P()Lcom/snapchat/android/model/Friend$Direction;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/Friend$Direction;->OUTGOING:Lcom/snapchat/android/model/Friend$Direction;

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->P()Lcom/snapchat/android/model/Friend$Direction;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/Friend$Direction;->BOTH:Lcom/snapchat/android/model/Friend$Direction;

    if-ne v0, v1, :cond_4

    .line 135
    :cond_3
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_FRIENDS:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 137
    :cond_4
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->NONE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    check-cast p1, Lcom/snapchat/android/model/Friend;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/util/FriendSectionizer$AddFriendsSearchSectionizer;->a(Lcom/snapchat/android/model/Friend;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v0

    return-object v0
.end method
