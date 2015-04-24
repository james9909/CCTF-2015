.class public Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field protected a:Lcom/snapchat/android/model/User;

.field private final b:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private g:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 29
    new-instance v0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->b:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->c:Ljava/util/List;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->h()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 84
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->g:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 113
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method private k()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->a:Lcom/snapchat/android/model/User;

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->a:Lcom/snapchat/android/model/User;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->a:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->a:Lcom/snapchat/android/model/User;

    invoke-virtual {v1}, Lcom/snapchat/android/model/User;->y()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->g:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->c()V

    .line 132
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    const v0, 0x7f040006

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->x:Landroid/view/View;

    .line 66
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->i()V

    .line 67
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->b()V

    .line 69
    const v0, 0x7f0a0068

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->d:Landroid/view/View;

    .line 72
    const v0, 0x7f0a0069

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->e:Landroid/support/v7/widget/RecyclerView;

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->e:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 74
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 76
    new-instance v0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->g:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->g:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 79
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStart()V

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->g:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->b:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->a(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 91
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStop()V

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->g:Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->b:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->b(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 97
    return-void
.end method

.method public onUserLoadedEvent(Lcom/snapchat/android/util/eventbus/UserLoadedEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 142
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/UserLoadedEvent;->a:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->a:Lcom/snapchat/android/model/User;

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/UserLoadedEvent;->a:Lcom/snapchat/android/model/User;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->a:Lcom/snapchat/android/model/User;

    .line 144
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->k()V

    .line 146
    :cond_0
    return-void
.end method

.method protected s_()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->b()V

    .line 137
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersFragment;->k()V

    .line 138
    return-void
.end method
