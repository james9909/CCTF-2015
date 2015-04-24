.class public Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;
.super Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;
.source "SourceFile"


# instance fields
.field private final A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final B:Z

.field private final C:Z

.field private final D:Z

.field private final E:Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;

.field private final F:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;

.field private final G:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field final i:Landroid/widget/RelativeLayout;

.field final j:Landroid/widget/CheckBox;

.field final k:Landroid/widget/TextView;

.field final l:Landroid/widget/Button;

.field final m:Landroid/view/View;

.field final n:Landroid/widget/Button;

.field final o:Landroid/view/View;

.field final p:Landroid/widget/Button;

.field final q:Landroid/widget/Button;

.field final r:Landroid/widget/Button;

.field final s:Landroid/view/View;

.field final t:Landroid/view/View;

.field u:I

.field private final v:Landroid/view/LayoutInflater;

.field private final w:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

.field private final x:Landroid/view/View;

.field private final y:Landroid/content/Context;

.field private final z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;Landroid/view/View;Landroid/view/LayoutInflater;Ljava/util/Set;Ljava/util/Set;ZZZLcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;Ljavax/inject/Provider;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;",
            "Landroid/view/View;",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;ZZZ",
            "Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;",
            "Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p2}, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;-><init>(Landroid/view/View;)V

    .line 91
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->w:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    .line 92
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->x:Landroid/view/View;

    .line 93
    iput-object p3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->v:Landroid/view/LayoutInflater;

    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->y:Landroid/content/Context;

    .line 95
    iput-object p4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->z:Ljava/util/Set;

    .line 96
    iput-object p5, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->A:Ljava/util/Set;

    .line 97
    iput-boolean p6, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->D:Z

    .line 98
    iput-boolean p7, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->B:Z

    .line 99
    iput-boolean p8, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->C:Z

    .line 100
    iput-object p9, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->E:Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;

    .line 101
    iput-object p10, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->F:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;

    .line 102
    iput-object p11, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->G:Ljavax/inject/Provider;

    .line 105
    const v0, 0x7f0a0044

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->i:Landroid/widget/RelativeLayout;

    .line 106
    const v0, 0x7f0a0047

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->l:Landroid/widget/Button;

    .line 107
    const v0, 0x7f0a0049

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->j:Landroid/widget/CheckBox;

    .line 108
    const v0, 0x7f0a004d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->k:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0a0046

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->m:Landroid/view/View;

    .line 110
    const v0, 0x7f0a004b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->n:Landroid/widget/Button;

    .line 113
    const v0, 0x7f0a003e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->o:Landroid/view/View;

    .line 114
    const v0, 0x7f0a003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->p:Landroid/widget/Button;

    .line 115
    const v0, 0x7f0a0041

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->q:Landroid/widget/Button;

    .line 116
    const v0, 0x7f0a0042

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->r:Landroid/widget/Button;

    .line 117
    const v0, 0x7f0a0040

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->s:Landroid/view/View;

    .line 118
    const v0, 0x7f0a0043

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->t:Landroid/view/View;

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->x:Landroid/view/View;

    return-object v0
.end method

.method private a(Lcom/snapchat/android/model/Friend;ILcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/Friend;",
            "I",
            "Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->z()V

    .line 340
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->A()V

    .line 341
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->j:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 343
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->j:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 344
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->j:Landroid/widget/CheckBox;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$6;

    invoke-direct {v1, p0, p1, p4, p3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$6;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;Lcom/snapchat/android/model/Friend;Ljava/util/Set;Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    return-void
.end method

.method private a(Lcom/snapchat/android/model/Friend;Landroid/os/Message;)V
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->n:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$4;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;Lcom/snapchat/android/model/Friend;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    return-void
.end method

.method private a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;ILjava/util/List;Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/Friend;",
            "Lcom/snapchat/android/model/Friend;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->j:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 375
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Lcom/snapchat/android/model/Friend;)V

    .line 376
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->b(Lcom/snapchat/android/model/Friend;)V

    .line 378
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->p:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$7;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$7;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->q:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$8;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$8;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->r:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$9;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$9;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    invoke-virtual {p1, p2}, Lcom/snapchat/android/model/Friend;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 400
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->b(Z)V

    .line 401
    if-nez v0, :cond_0

    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Ljava/lang/Runnable;)V

    .line 404
    :cond_0
    invoke-interface {p5}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;->getAnalyticsContext()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->d(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    move-result-object v3

    invoke-interface {p5}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;->getAnalyticsParent()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(ILcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V

    .line 406
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;)Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->F:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;)Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->w:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    return-object v0
.end method

.method private c(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 130
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->n:Landroid/widget/Button;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->m:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    return-void

    :cond_0
    move v0, v2

    .line 130
    goto :goto_0

    :cond_1
    move v2, v1

    .line 131
    goto :goto_1
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->y:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->C:Z

    return v0
.end method

.method private e(Lcom/snapchat/android/model/Friend;)Z
    .locals 2
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FriendUtils;->e(Ljava/lang/String;Lcom/snapchat/android/model/User;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 141
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->n:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;ILjava/util/List;)V
    .locals 6
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;",
            "Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 276
    invoke-virtual {p2}, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->l:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$5;

    invoke-direct {v1, p0, p2}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$5;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->l:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 296
    invoke-interface {p3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;->getAnalyticsContext()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v2

    invoke-virtual {p0, p2}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->d(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    move-result-object v3

    invoke-interface {p3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;->getAnalyticsParent()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(ILcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V

    .line 298
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Friend;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->z:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 136
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->s:Landroid/view/View;

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->p:Landroid/widget/Button;

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 138
    return-void

    :cond_0
    move v0, v2

    .line 136
    goto :goto_0

    :cond_1
    move v2, v1

    .line 137
    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/model/Friend;ILandroid/os/Message;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 208
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    const v1, 0x7f020072

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->w:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->b()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(ILcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V

    .line 240
    :goto_0
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->B:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->E()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->e(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 243
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->i:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$3;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$3;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->B:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->C:Z

    if-eqz v0, :cond_2

    .line 256
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Lcom/snapchat/android/model/Friend;Landroid/os/Message;)V

    .line 258
    :cond_2
    return-void

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->F:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->s()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$2;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;Lcom/snapchat/android/model/Friend;)V

    invoke-static {p1, v0}, Lcom/snapchat/android/model/FriendProfileInfo;->a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendProfileInfo$FriendProfileInfoListener;)V

    .line 223
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->H()Z

    move-result v0

    if-nez v0, :cond_4

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Lcom/snapchat/android/model/Friend;Z)V

    .line 231
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->H()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 232
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->l:Landroid/widget/Button;

    const v1, 0x7f0201c4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 233
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->l:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->y:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->b(I)V

    goto :goto_0

    .line 228
    :cond_5
    invoke-virtual {p0, p1, v2}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Lcom/snapchat/android/model/Friend;Z)V

    goto :goto_2

    .line 236
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->y:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->b(I)V

    goto :goto_0

    .line 251
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;IIILjava/util/List;Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;Ljava/util/Set;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/Friend;",
            "Lcom/snapchat/android/model/Friend;",
            "III",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x0

    .line 308
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->c(Lcom/snapchat/android/model/Friend;)V

    .line 314
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->o:Landroid/view/View;

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->D:Z

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->D:Z

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 324
    :goto_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->s()Z

    move-result v0

    if-nez v0, :cond_3

    .line 326
    invoke-direct {p0, p1, p5, p7, p8}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Lcom/snapchat/android/model/Friend;ILcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;Ljava/util/Set;)V

    .line 332
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->l:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 333
    return-void

    :cond_0
    move v0, v1

    .line 314
    goto :goto_0

    .line 318
    :cond_1
    invoke-interface {p7, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_1

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 328
    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;ILjava/util/List;Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;)V

    goto :goto_2
.end method

.method public a(Lcom/snapchat/android/model/Friend;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->u()V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->c(Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 4
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 193
    return-void
.end method

.method public b(Lcom/snapchat/android/model/Friend;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 157
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->A:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->q:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->r:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->e(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->r:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->q:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->r:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->p:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 147
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->q:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 148
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->r:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 149
    return-void
.end method

.method public c(Lcom/snapchat/android/model/Friend;)V
    .locals 2
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->E:Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;->a(Lcom/snapchat/android/model/Friend;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->E:Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->F:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;

    invoke-virtual {v1, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;->a(Lcom/snapchat/android/model/Friend;Z)Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->k:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;
    .locals 2
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->w:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->b()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADDED_ME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ADDED_ME_BACK:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    .line 421
    :goto_0
    return-object v0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->G:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 414
    if-eqz v0, :cond_2

    .line 415
    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->CONTACTS:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/User;->b(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->ADDED_ME_BACK:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    goto :goto_0

    .line 421
    :cond_2
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    goto :goto_0
.end method
