.class public Lcom/snapchat/android/model/Friend$FriendListSectionizer;
.super Lcom/snapchat/android/util/FriendSectionizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/Friend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendListSectionizer"
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
    .line 465
    invoke-direct {p0}, Lcom/snapchat/android/util/FriendSectionizer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/Friend;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 468
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->BEST_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 475
    :goto_0
    return-object v0

    .line 469
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->RECENT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 470
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 471
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->STORIES:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 472
    :cond_3
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->F()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->JUST_ADDED:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 473
    :cond_4
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->E()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->SUGGESTED:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 474
    :cond_5
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->BLOCKED:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 475
    :cond_6
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ALPHABETICAL:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 465
    check-cast p1, Lcom/snapchat/android/model/Friend;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/model/Friend$FriendListSectionizer;->a(Lcom/snapchat/android/model/Friend;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v0

    return-object v0
.end method
