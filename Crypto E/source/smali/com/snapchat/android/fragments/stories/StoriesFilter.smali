.class public Lcom/snapchat/android/fragments/stories/StoriesFilter;
.super Lcom/snapchat/android/util/listview/ScFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/listview/ScFilter",
        "<",
        "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;)V
    .locals 6
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
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
            ">;",
            "Lcom/snapchat/android/util/debug/ExceptionReporter;",
            "Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface",
            "<",
            "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
            ">;",
            "Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    sget-object v5, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/stories/StoriesFilter;-><init>(Ljava/util/List;Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;Ljavax/inject/Provider;)V

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;Ljavax/inject/Provider;)V
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
            "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
            ">;",
            "Lcom/snapchat/android/util/debug/ExceptionReporter;",
            "Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface",
            "<",
            "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
            ">;",
            "Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/util/listview/ScFilter;-><init>(Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;)V

    .line 46
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFilter;->c:Ljava/util/List;

    .line 47
    iput-object p4, p0, Lcom/snapchat/android/fragments/stories/StoriesFilter;->d:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    .line 48
    iput-object p5, p0, Lcom/snapchat/android/fragments/stories/StoriesFilter;->e:Ljavax/inject/Provider;

    .line 49
    return-void
.end method

.method protected static a(Lcom/snapchat/android/fragments/stories/StoriesListItem;Ljava/lang/String;)Z
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {p0}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-interface {p0}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->b()Ljava/lang/String;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_0

    .line 136
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    if-eqz v0, :cond_1

    invoke-static {v1, v0, p1}, Lcom/snapchat/android/util/ScTextUtils;->a(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 143
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFilter;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 55
    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFilter;->c:Ljava/util/List;

    .line 128
    :goto_0
    return-object v0

    .line 59
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFilter;->c:Ljava/util/List;

    goto :goto_0

    .line 64
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFilter;->c:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 69
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v2, v3

    move v5, v6

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 70
    if-ne v2, v3, :cond_d

    invoke-interface {v1}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->g()Z

    move-result v4

    if-nez v4, :cond_d

    .line 71
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    move v4, v2

    .line 74
    :goto_2
    const/4 v2, 0x0

    .line 82
    instance-of v8, v1, Lcom/snapchat/android/model/Friend;

    if-eqz v8, :cond_c

    move-object v2, v1

    .line 83
    check-cast v2, Lcom/snapchat/android/model/Friend;

    .line 84
    iget-object v8, p0, Lcom/snapchat/android/fragments/stories/StoriesFilter;->d:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    invoke-interface {v8, v2}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v8

    if-eqz v8, :cond_b

    move-object v8, v2

    move v2, v7

    .line 89
    :goto_3
    invoke-static {v1, p1}, Lcom/snapchat/android/fragments/stories/StoriesFilter;->a(Lcom/snapchat/android/fragments/stories/StoriesListItem;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 90
    if-nez v2, :cond_3

    .line 91
    if-eqz v8, :cond_2

    .line 92
    invoke-virtual {v8}, Lcom/snapchat/android/model/Friend;->s()Z

    move-result v2

    if-nez v2, :cond_4

    .line 93
    sget-object v2, Lcom/snapchat/android/model/Friend$SuggestState;->ADDRESS_BOOK:Lcom/snapchat/android/model/Friend$SuggestState;

    invoke-virtual {v8, v2}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$SuggestState;)V

    .line 94
    sget-object v2, Lcom/snapchat/android/model/Friend$SuggestType;->ADDRESS_BOOK:Lcom/snapchat/android/model/Friend$SuggestType;

    invoke-virtual {v8, v2}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$SuggestType;)V

    .line 100
    :cond_2
    :goto_4
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_3
    invoke-interface {v1}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/snapchat/android/util/ScTextUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v7

    :goto_5
    move v2, v4

    move v5, v1

    .line 107
    goto :goto_1

    .line 95
    :cond_4
    invoke-virtual {v8}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/snapchat/android/util/FriendUtils;->e(Ljava/lang/String;Lcom/snapchat/android/model/User;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 96
    sget-object v2, Lcom/snapchat/android/model/Friend$SuggestState;->EXISTS:Lcom/snapchat/android/model/Friend$SuggestState;

    invoke-virtual {v8, v2}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$SuggestState;)V

    .line 97
    sget-object v2, Lcom/snapchat/android/model/Friend$SuggestType;->ADDRESS_BOOK:Lcom/snapchat/android/model/Friend$SuggestType;

    invoke-virtual {v8, v2}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$SuggestType;)V

    goto :goto_4

    .line 113
    :cond_5
    if-nez v5, :cond_8

    .line 114
    new-instance v1, Lcom/snapchat/android/model/Friend;

    invoke-direct {v1, p1}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-static {p1, v0}, Lcom/snapchat/android/util/FriendUtils;->f(Ljava/lang/String;Lcom/snapchat/android/model/User;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFilter;->d:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;

    invoke-interface {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 117
    :cond_6
    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->EXISTS:Lcom/snapchat/android/model/Friend$SuggestState;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$SuggestState;)V

    .line 118
    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestType;->USERNAME:Lcom/snapchat/android/model/Friend$SuggestType;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$SuggestType;)V

    .line 121
    :cond_7
    if-ne v2, v3, :cond_9

    .line 122
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_6
    move-object v0, v9

    .line 128
    goto/16 :goto_0

    .line 124
    :cond_9
    invoke-interface {v9, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_6

    :cond_a
    move v1, v5

    goto :goto_5

    :cond_b
    move-object v8, v2

    move v2, v6

    goto :goto_3

    :cond_c
    move-object v8, v2

    move v2, v6

    goto :goto_3

    :cond_d
    move v4, v2

    goto/16 :goto_2
.end method
