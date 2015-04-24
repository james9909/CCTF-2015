.class public Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/chat/ClearFeedTask$ClearFeedTaskCallback;


# instance fields
.field private a:Lcom/snapchat/android/util/ListViewAdapterList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/util/ListViewAdapterList",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/BaseAdapter;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 100
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Lcom/snapchat/android/util/ListViewAdapterList;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Lcom/snapchat/android/util/ListViewAdapterList;

    invoke-virtual {v0}, Lcom/snapchat/android/util/ListViewAdapterList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 102
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 104
    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/chat/ChatConversation;->m(Z)V

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->b:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)Lcom/snapchat/android/util/ListViewAdapterList;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Lcom/snapchat/android/util/ListViewAdapterList;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 52
    const v0, 0x7f0a012d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 53
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    const v0, 0x7f0a012a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f0a012c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->d:Landroid/widget/ProgressBar;

    .line 63
    const v0, 0x7f0a012e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->e:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0a012b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Lcom/snapchat/android/util/ListViewAdapterList;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Lcom/snapchat/android/util/ListViewAdapterList;

    invoke-virtual {v0}, Lcom/snapchat/android/util/ListViewAdapterList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    :cond_0
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Lcom/snapchat/android/util/ListViewAdapterList;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Lcom/snapchat/android/util/ListViewAdapterList;

    invoke-virtual {v0}, Lcom/snapchat/android/util/ListViewAdapterList;->clear()V

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Lcom/snapchat/android/util/ListViewAdapterList;

    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/ListViewAdapterList;->addAll(Ljava/util/Collection;)Z

    .line 113
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 115
    return-void

    .line 113
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->i()V

    .line 134
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 144
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 161
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    const v0, 0x7f04002e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->x:Landroid/view/View;

    .line 41
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 43
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->e()Lcom/snapchat/android/util/ListViewAdapterList;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Lcom/snapchat/android/util/ListViewAdapterList;

    .line 44
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Lcom/snapchat/android/util/ListViewAdapterList;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;->a(Landroid/content/Context;Lcom/snapchat/android/util/ListViewAdapterList;)Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->b:Landroid/widget/BaseAdapter;

    .line 46
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->h()V

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onUpdateFeedEvent(Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 119
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Lcom/snapchat/android/util/ListViewAdapterList;

    monitor-enter v1

    .line 120
    :try_start_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->i()V

    .line 121
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->a:Lcom/snapchat/android/util/ListViewAdapterList;

    invoke-virtual {v0}, Lcom/snapchat/android/util/ListViewAdapterList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    :goto_0
    monitor-exit v1

    .line 129
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsFragment;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
