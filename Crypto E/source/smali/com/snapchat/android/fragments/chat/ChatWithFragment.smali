.class public Lcom/snapchat/android/fragments/chat/ChatWithFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/chat/ChatWithAdapter$ChatWithSearchInterface;


# instance fields
.field protected final a:Landroid/widget/AdapterView$OnItemClickListener;

.field protected final b:Landroid/widget/AbsListView$OnScrollListener;

.field protected final c:Landroid/text/TextWatcher;

.field private d:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field private e:Lcom/snapchat/android/fragments/chat/ChatWithAdapter;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private final i:Ljavax/inject/Provider;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;-><init>(Ljavax/inject/Provider;)V

    .line 46
    return-void
.end method

.method protected constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 124
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment$3;-><init>(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->a:Landroid/widget/AdapterView$OnItemClickListener;

    .line 138
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment$4;-><init>(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->b:Landroid/widget/AbsListView$OnScrollListener;

    .line 152
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatWithFragment$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment$5;-><init>(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->c:Landroid/text/TextWatcher;

    .line 50
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->i:Ljavax/inject/Provider;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->k()Ljava/util/List;

    move-result-object v0

    .line 86
    :goto_0
    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    invoke-direct {v3}, Lcom/snapchat/android/model/Friend$FriendListSectionizer;-><init>()V

    invoke-direct {v1, v2, v0, v3, p0}, Lcom/snapchat/android/fragments/chat/ChatWithAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/model/Friend$FriendListSectionizer;Lcom/snapchat/android/fragments/chat/ChatWithAdapter$ChatWithSearchInterface;)V

    iput-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->e:Lcom/snapchat/android/fragments/chat/ChatWithAdapter;

    .line 88
    const v0, 0x7f0a0125

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 89
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->e:Lcom/snapchat/android/fragments/chat/ChatWithAdapter;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollAlwaysVisible(Z)V

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setTextFilterEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->a:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->b:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 95
    const v0, 0x7f0a0124

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->f:Landroid/widget/EditText;

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 97
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->g:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->g:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatWithFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v0, 0x7f0a0126

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->h:Landroid/view/View;

    .line 107
    const v0, 0x7f0a0122

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatWithFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment$2;-><init>(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Lcom/snapchat/android/fragments/chat/ChatWithAdapter;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->e:Lcom/snapchat/android/fragments/chat/ChatWithAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->d:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/chat/ChatWithFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->g:Landroid/view/View;

    return-object v0
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
    .line 117
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->x:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    const v0, 0x7f04002b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->x:Landroid/view/View;

    .line 57
    invoke-direct {p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->b()V

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public s_()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->s_()V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(ZLandroid/view/Window;)V

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 68
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatWithFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->f(Landroid/content/Context;)V

    .line 69
    return-void
.end method
