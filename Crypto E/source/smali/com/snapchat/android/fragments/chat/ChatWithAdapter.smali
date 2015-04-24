.class public Lcom/snapchat/android/fragments/chat/ChatWithAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;
.implements Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/chat/ChatWithAdapter$1;,
        Lcom/snapchat/android/fragments/chat/ChatWithAdapter$ChatWithSearchInterface;,
        Lcom/snapchat/android/fragments/chat/ChatWithAdapter$FriendViewHolder;,
        Lcom/snapchat/android/fragments/chat/ChatWithAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;",
        "Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;",
        "Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/snapchat/android/util/debug/ExceptionReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

.field private final g:Landroid/widget/Filter;

.field private final h:Lcom/snapchat/android/fragments/chat/ChatWithAdapter$ChatWithSearchInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/model/Friend$FriendListSectionizer;Lcom/snapchat/android/fragments/chat/ChatWithAdapter$ChatWithSearchInterface;)V
    .locals 3
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
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lcom/snapchat/android/model/Friend$FriendListSectionizer;",
            "Lcom/snapchat/android/fragments/chat/ChatWithAdapter$ChatWithSearchInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    const v0, 0x7f04002c

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 52
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 54
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->b:Landroid/content/Context;

    .line 55
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->c:Landroid/view/LayoutInflater;

    .line 56
    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->d:Ljava/util/List;

    .line 57
    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->e:Ljava/util/List;

    .line 58
    iput-object p3, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->f:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    .line 59
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatWithFilter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->a:Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-direct {v0, v1, v2, p0}, Lcom/snapchat/android/fragments/chat/ChatWithFilter;-><init>(Ljava/util/List;Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->g:Landroid/widget/Filter;

    .line 60
    iput-object p4, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->h:Lcom/snapchat/android/fragments/chat/ChatWithAdapter$ChatWithSearchInterface;

    .line 61
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->d:Ljava/util/List;

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->h:Lcom/snapchat/android/fragments/chat/ChatWithAdapter$ChatWithSearchInterface;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatWithAdapter$ChatWithSearchInterface;->a(Ljava/util/List;)V

    .line 130
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->notifyDataSetChanged()V

    .line 131
    return-void

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->d:Ljava/util/List;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->g:Landroid/widget/Filter;

    return-object v0
.end method

.method public getHeaderId(I)J
    .locals 4
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 89
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->f:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->f:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    invoke-virtual {v2, v0, p1}, Lcom/snapchat/android/model/Friend$FriendListSectionizer;->a(Lcom/snapchat/android/model/Friend;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, v3}, Lcom/snapchat/android/model/Friend$FriendListSectionizer;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    if-nez p2, :cond_1

    .line 67
    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatWithAdapter$HeaderViewHolder;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/snapchat/android/fragments/chat/ChatWithAdapter$HeaderViewHolder;-><init>(Lcom/snapchat/android/fragments/chat/ChatWithAdapter$1;)V

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f040008

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 69
    if-nez p2, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 72
    :cond_0
    const v0, 0x7f0a006d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/snapchat/android/fragments/chat/ChatWithAdapter$HeaderViewHolder;->a:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 79
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->f:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    invoke-virtual {v2, v0, p1}, Lcom/snapchat/android/model/Friend$FriendListSectionizer;->a(Lcom/snapchat/android/model/Friend;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v2

    .line 80
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->f:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->b:Landroid/content/Context;

    invoke-virtual {v3, v2, v0, v4}, Lcom/snapchat/android/model/Friend$FriendListSectionizer;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, v1, Lcom/snapchat/android/fragments/chat/ChatWithAdapter$HeaderViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-object p2

    .line 75
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter$HeaderViewHolder;

    move-object v1, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    if-nez p2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f04002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 99
    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatWithAdapter$FriendViewHolder;

    invoke-direct {v1}, Lcom/snapchat/android/fragments/chat/ChatWithAdapter$FriendViewHolder;-><init>()V

    .line 100
    const v0, 0x7f0a004c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/snapchat/android/fragments/chat/ChatWithAdapter$FriendViewHolder;->a:Landroid/widget/TextView;

    .line 101
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 107
    iget-object v2, v1, Lcom/snapchat/android/fragments/chat/ChatWithAdapter$FriendViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iput-object v0, v1, Lcom/snapchat/android/fragments/chat/ChatWithAdapter$FriendViewHolder;->b:Lcom/snapchat/android/model/Friend;

    .line 109
    return-object p2

    .line 103
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatWithAdapter$FriendViewHolder;

    move-object v1, v0

    goto :goto_0
.end method
