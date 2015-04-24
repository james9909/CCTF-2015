.class public Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->a:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->b:Ljava/util/List;

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->a:Landroid/content/Context;

    const v1, 0x7f0c00c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->c:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;Lcom/snapchat/android/model/Friend;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-virtual {p1}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;->t()V

    .line 96
    new-instance v0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$2;

    sget-object v3, Lcom/snapchat/android/model/FriendAction;->UNBLOCK:Lcom/snapchat/android/model/FriendAction;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$2;-><init>(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;Lcom/snapchat/android/model/Friend;)V

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->SETTINGS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$2;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)Lcom/snapchat/android/api/FriendActionTask;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/FriendActionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;Lcom/snapchat/android/model/Friend;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->a(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;Lcom/snapchat/android/model/Friend;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->c(Landroid/view/ViewGroup;I)Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    check-cast p1, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->a(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;I)V

    return-void
.end method

.method public a(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 72
    iget-object v1, p1, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p1, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;->j:Landroid/view/View;

    new-instance v2, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$1;-><init>(Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method protected d(I)V
    .locals 1
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 124
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 126
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->c(I)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/BlockedUsersAdapter;->c()V

    goto :goto_0
.end method
