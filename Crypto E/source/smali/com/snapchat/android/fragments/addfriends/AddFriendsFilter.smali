.class public Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;
.super Lcom/snapchat/android/util/listview/ScFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/listview/ScFilter",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lcom/snapchat/android/util/debug/ExceptionReporter;",
            "Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/util/listview/ScFilter;-><init>(Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;)V

    .line 53
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->c:Ljava/util/List;

    .line 54
    return-void
.end method

.method private a(Lcom/snapchat/android/model/Friend;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 172
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->e:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lcom/snapchat/android/util/ScTextUtils;->b(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 183
    :goto_0
    return v0

    .line 175
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 178
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    invoke-static {v1, v0, p2}, Lcom/snapchat/android/util/ScTextUtils;->a(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 180
    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Lcom/snapchat/android/util/ScTextUtils;->b(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 88
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->d:Ljava/lang/String;

    .line 89
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->c:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    if-nez p1, :cond_0

    .line 167
    :goto_0
    return-object v2

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->h:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_1
    move v4, v5

    move v3, v5

    .line 102
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_9

    .line 103
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 107
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->A()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v3

    .line 102
    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v3, v0

    goto :goto_1

    .line 111
    :cond_2
    instance-of v1, v0, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    if-eqz v1, :cond_7

    move-object v1, v0

    .line 112
    check-cast v1, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    .line 113
    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->a(Lcom/snapchat/android/model/Friend;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    .line 115
    goto :goto_2

    .line 117
    :cond_3
    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    invoke-static {v10, v0, p1}, Lcom/snapchat/android/util/ScTextUtils;->b(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v10, p1, v0}, Lcom/snapchat/android/util/ScTextUtils;->b(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    :cond_5
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move v0, v3

    .line 124
    goto :goto_2

    .line 126
    :cond_7
    iget-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->f:Z

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 130
    iget-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->g:Z

    if-nez v1, :cond_10

    move-object v2, v0

    move v0, v3

    .line 131
    goto :goto_2

    :cond_8
    move-object v1, v2

    .line 134
    :goto_3
    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->a(Lcom/snapchat/android/model/Friend;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 135
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->Q()Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    if-ne v0, v2, :cond_f

    .line 137
    add-int/lit8 v0, v3, 0x1

    move-object v2, v1

    goto :goto_2

    .line 143
    :cond_9
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->f:Z

    if-nez v0, :cond_a

    .line 145
    if-nez v2, :cond_e

    .line 146
    new-instance v0, Lcom/snapchat/android/model/Friend;

    invoke-direct {v0, p1}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;)V

    .line 147
    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestState;->PENDING:Lcom/snapchat/android/model/Friend$SuggestState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$SuggestState;)V

    .line 148
    sget-object v1, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->USERNAME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;)V

    .line 150
    iget-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->g:Z

    if-nez v1, :cond_b

    .line 152
    invoke-interface {v6, v5, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_a
    :goto_4
    move-object v2, v6

    .line 167
    goto/16 :goto_0

    .line 153
    :cond_b
    if-eqz v3, :cond_c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lt v3, v1, :cond_d

    .line 155
    :cond_c
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 158
    :cond_d
    invoke-interface {v6, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 160
    :cond_e
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->g:Z

    if-nez v0, :cond_a

    .line 162
    invoke-interface {v6, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_f
    move v0, v3

    move-object v2, v1

    goto/16 :goto_2

    :cond_10
    move-object v1, v0

    goto :goto_3
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->a:Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/debug/ExceptionReporter;->b(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->e:Z

    .line 72
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->f:Z

    .line 76
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->h:Z

    .line 80
    return-void
.end method

.method public d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->g:Z

    .line 84
    return-void
.end method
