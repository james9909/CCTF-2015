.class public Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;
.implements Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$3;,
        Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$HeaderViewHolder;,
        Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;,
        Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;
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
.field private A:Z

.field private B:Z

.field protected a:Lcom/snapchat/android/util/debug/ExceptionReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private final c:I

.field private final d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/view/LayoutInflater;

.field private h:Lcom/snapchat/android/util/FriendSectionizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/util/FriendSectionizer",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;

.field private j:Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;

.field private k:Lcom/snapchat/android/model/Friend;

.field private l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroid/content/res/Resources;

.field private final n:I

.field private final o:I

.field private p:Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;

.field private final q:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;

.field private final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/util/FriendSectionizer;Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;ZLcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;Ljavax/inject/Provider;)V
    .locals 2
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
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lcom/snapchat/android/util/FriendSectionizer",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;",
            "Z",
            "Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 153
    const v0, 0x7f040001

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->k:Lcom/snapchat/android/model/Friend;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->l:Ljava/util/HashSet;

    .line 99
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->r:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->s:Ljava/util/Set;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->t:Ljava/util/Set;

    .line 124
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->y:Z

    .line 126
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->z:Z

    .line 128
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->A:Z

    .line 138
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->B:Z

    .line 154
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 155
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->d:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->f:Ljava/util/List;

    .line 157
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->e:Ljava/util/List;

    .line 158
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->g:Landroid/view/LayoutInflater;

    .line 159
    iput-object p3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->h:Lcom/snapchat/android/util/FriendSectionizer;

    .line 160
    iput-object p4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->i:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;

    .line 162
    if-eqz p5, :cond_0

    const v0, 0x7f020072

    :goto_0
    iput v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->c:I

    .line 165
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->m:Landroid/content/res/Resources;

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->m:Landroid/content/res/Resources;

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->n:I

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->m:Landroid/content/res/Resources;

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->o:I

    .line 169
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->b:Landroid/os/Handler;

    .line 191
    iput-object p6, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->p:Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;

    .line 192
    iput-object p7, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->q:Ljavax/inject/Provider;

    .line 193
    return-void

    .line 162
    :cond_0
    const v0, 0x7f020073

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/Friend;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->h:Lcom/snapchat/android/util/FriendSectionizer;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/util/FriendSectionizer;->a(Ljava/lang/Object;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->h:Lcom/snapchat/android/util/FriendSectionizer;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->d:Landroid/content/Context;

    invoke-virtual {v1, v0, p1, v2}, Lcom/snapchat/android/util/FriendSectionizer;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->s:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->t:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 379
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 380
    if-eqz v0, :cond_0

    .line 381
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->r:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;->b(Lcom/snapchat/android/model/Friend;)V

    .line 382
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->notifyDataSetChanged()V

    .line 385
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    if-eqz p3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->k:Lcom/snapchat/android/model/Friend;

    .line 361
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 362
    instance-of v1, v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    if-eqz v1, :cond_0

    .line 363
    check-cast v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    .line 364
    if-nez p3, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->b(Z)V

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->notifyDataSetChanged()V

    .line 367
    return-void

    .line 359
    :cond_1
    invoke-virtual {p0, p2}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    goto :goto_0

    .line 364
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->p:Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;

    .line 197
    return-void
.end method

.method public a(Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 389
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;)V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->b()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$2;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)Lcom/snapchat/android/api/FriendActionTask;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api/FriendActionTask;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;)Lcom/snapchat/android/api/FriendActionTask;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/FriendActionTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 462
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Friend;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 470
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->r:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->r:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;->b(Lcom/snapchat/android/model/Friend;)V

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->notifyDataSetChanged()V

    .line 474
    return-void
.end method

.method public a(Lcom/snapchat/android/util/FriendSectionizer;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/util/FriendSectionizer",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->h:Lcom/snapchat/android/util/FriendSectionizer;

    .line 269
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
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
    .line 350
    if-nez p1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->f:Ljava/util/List;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->e:Ljava/util/List;

    .line 355
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->notifyDataSetChanged()V

    .line 356
    return-void

    .line 353
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->e:Ljava/util/List;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->u:Z

    .line 201
    return-void
.end method

.method public b()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->i:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;->getAnalyticsContext()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->v:Z

    .line 205
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->j:Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->j:Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->w:Z

    .line 209
    return-void
.end method

.method public d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->A:Z

    .line 216
    return-void
.end method

.method public e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->x:Z

    .line 220
    return-void
.end method

.method public f(Z)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->y:Z

    .line 224
    return-void
.end method

.method public g(Z)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->z:Z

    .line 228
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->e:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->j:Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->a:Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-direct {v0, v1, v2, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;-><init>(Ljava/util/List;Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->j:Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->j:Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->u:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->a(Z)V

    .line 342
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->j:Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->v:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->b(Z)V

    .line 343
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->j:Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->w:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->c(Z)V

    .line 344
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->j:Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->x:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;->d(Z)V

    .line 345
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->j:Lcom/snapchat/android/fragments/addfriends/AddFriendsFilter;

    return-object v0
.end method

.method public getHeaderId(I)J
    .locals 2
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 275
    instance-of v1, v0, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    if-eqz v1, :cond_0

    .line 276
    const-string v0, "shared story"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    .line 278
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->a(Lcom/snapchat/android/model/Friend;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 237
    if-nez p2, :cond_1

    .line 238
    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$HeaderViewHolder;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$HeaderViewHolder;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;)V

    .line 239
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->g:Landroid/view/LayoutInflater;

    const v2, 0x7f040070

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 240
    const v0, 0x7f0a006d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$HeaderViewHolder;->a:Landroid/widget/TextView;

    .line 241
    const v0, 0x7f0a006e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$HeaderViewHolder;->b:Landroid/view/View;

    .line 242
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 248
    invoke-direct {p0, v0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->a(Lcom/snapchat/android/model/Friend;I)Ljava/lang/String;

    move-result-object v2

    .line 250
    instance-of v0, v0, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    :cond_0
    iget-object v0, v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$HeaderViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    iget-object v0, v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$HeaderViewHolder;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :goto_1
    return-object p2

    .line 244
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$HeaderViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 254
    :cond_2
    iget-object v0, v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$HeaderViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$HeaderViewHolder;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$HeaderViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 291
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/snapchat/android/model/Friend;

    .line 292
    if-nez v13, :cond_0

    .line 320
    :goto_0
    return-object p2

    .line 295
    :cond_0
    if-nez p2, :cond_2

    .line 296
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->g:Landroid/view/LayoutInflater;

    const v2, 0x7f040001

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 297
    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to inflate add_friends_item"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_1
    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->g:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->s:Ljava/util/Set;

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->t:Ljava/util/Set;

    iget-boolean v7, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->B:Z

    iget-boolean v8, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->y:Z

    iget-boolean v9, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->z:Z

    iget-object v10, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->p:Lcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;

    iget-object v11, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->r:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;

    iget-object v12, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->q:Ljavax/inject/Provider;

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;-><init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;Landroid/view/View;Landroid/view/LayoutInflater;Ljava/util/Set;Ljava/util/Set;ZZZLcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$SelectionStatus;Ljavax/inject/Provider;)V

    .line 301
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v3

    .line 306
    :goto_1
    iget-boolean v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->A:Z

    invoke-virtual {v1, v3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->e(Z)V

    .line 307
    iput p1, v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->u:I

    .line 309
    instance-of v3, v13, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    if-eqz v3, :cond_3

    move-object v3, v13

    .line 310
    check-cast v3, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->i:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;

    iget v5, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->c:I

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->f:Ljava/util/List;

    invoke-virtual/range {v1 .. v6}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Landroid/view/View;Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;ILjava/util/List;)V

    .line 318
    :goto_2
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->b:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v13, p1, v3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Lcom/snapchat/android/model/Friend;ILandroid/os/Message;)V

    move-object/from16 p2, v2

    .line 320
    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;

    move-object/from16 v2, p2

    goto :goto_1

    .line 313
    :cond_3
    iget-object v5, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->k:Lcom/snapchat/android/model/Friend;

    iget v6, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->o:I

    iget v7, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->n:I

    iget v8, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->c:I

    iget-object v9, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->f:Ljava/util/List;

    iget-object v10, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->i:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;

    iget-object v11, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->l:Ljava/util/HashSet;

    move-object v3, v1

    move-object v4, v13

    invoke-virtual/range {v3 .. v11}, Lcom/snapchat/android/fragments/addfriends/AddFriendsViewHolder;->a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;IIILjava/util/List;Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;Ljava/util/Set;)V

    goto :goto_2
.end method

.method public h(Z)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->B:Z

    .line 232
    return-void
.end method
