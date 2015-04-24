.class public Lcom/snapchat/android/fragments/stories/StoriesSectionizer;
.super Lcom/snapchat/android/util/FriendSectionizer;
.source "SourceFile"


# annotations
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
    .line 11
    invoke-direct {p0}, Lcom/snapchat/android/util/FriendSectionizer;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/fragments/stories/StoriesListItem;IZ)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    instance-of v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    if-eqz v0, :cond_1

    .line 16
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 51
    :goto_0
    return-object v0

    .line 19
    :cond_1
    instance-of v0, p1, Lcom/snapchat/android/model/RecentStoryCollection;

    if-eqz v0, :cond_4

    .line 20
    check-cast p1, Lcom/snapchat/android/model/RecentStoryCollection;

    .line 21
    invoke-virtual {p1}, Lcom/snapchat/android/model/RecentStoryCollection;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->LOCAL:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/RecentStoryCollection;->N()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->LIVE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 26
    :cond_3
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->STORIES:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 30
    :cond_4
    invoke-interface {p1}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_6

    if-eqz p3, :cond_6

    .line 32
    check-cast p1, Lcom/snapchat/android/model/Friend;

    .line 33
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->J()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 34
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->LOCAL:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 35
    :cond_5
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->H()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->LIVE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 39
    :cond_6
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ALPHABETICAL:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 40
    :cond_7
    instance-of v0, p1, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    if-eqz v0, :cond_8

    .line 41
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->LIVE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 42
    :cond_8
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->B()Lcom/snapchat/android/model/Friend$SuggestType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestType;->USERNAME:Lcom/snapchat/android/model/Friend$SuggestType;

    if-ne v0, v1, :cond_9

    .line 44
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->USERNAME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 45
    :cond_9
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->B()Lcom/snapchat/android/model/Friend$SuggestType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestType;->ADDRESS_BOOK:Lcom/snapchat/android/model/Friend$SuggestType;

    if-ne v0, v1, :cond_a

    .line 47
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 48
    :cond_a
    invoke-interface {p1}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FriendUtils;->e(Ljava/lang/String;Lcom/snapchat/android/model/User;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 49
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_FRIENDS:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0

    .line 51
    :cond_b
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->NONE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/Friend;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11
    check-cast p1, Lcom/snapchat/android/model/Friend;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/fragments/stories/StoriesSectionizer;->a(Lcom/snapchat/android/model/Friend;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v0

    return-object v0
.end method
