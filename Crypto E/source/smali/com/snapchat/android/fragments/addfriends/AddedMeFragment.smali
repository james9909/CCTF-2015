.class public Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;
.implements Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemWithClickInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/AddedMeFragment$2;
    }
.end annotation


# instance fields
.field protected a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

.field protected b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field protected c:Landroid/widget/TextView;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Lcom/snapchat/android/model/User;

.field private final f:Lcom/snapchat/android/model/UserPrefs;

.field private final g:Lcom/snapchat/android/service/SnapchatServiceManager;

.field private final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 67
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->a()Lcom/snapchat/android/model/UserPrefs;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;-><init>(Lcom/snapchat/android/model/UserPrefs;Lcom/snapchat/android/service/SnapchatServiceManager;Ljavax/inject/Provider;)V

    .line 68
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/model/UserPrefs;Lcom/snapchat/android/service/SnapchatServiceManager;Ljavax/inject/Provider;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/UserPrefs;",
            "Lcom/snapchat/android/service/SnapchatServiceManager;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->d:Ljava/util/List;

    .line 64
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADDED_ME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->j:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 72
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->f:Lcom/snapchat/android/model/UserPrefs;

    .line 73
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->g:Lcom/snapchat/android/service/SnapchatServiceManager;

    .line 74
    iput-object p3, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->h:Ljavax/inject/Provider;

    .line 75
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 117
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)F
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 146
    if-nez p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    const v1, 0x7f0a0044

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->a(I)V

    .line 176
    return-void
.end method

.method public a(Landroid/view/View;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->a(Landroid/view/View;IZ)V

    .line 171
    return-void
.end method

.method protected a(Lcom/snapchat/android/model/User;Z)V
    .locals 3
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 236
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 237
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->x()J

    move-result-wide v0

    .line 240
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->f:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/model/UserPrefs;->a(J)Z

    move-result v0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->g:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->c()I

    .line 247
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;FFFF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    .line 134
    :cond_0
    const v0, 0x7f0a0044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 138
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/Friend;)Z
    .locals 4
    .parameter

    .prologue
    .line 313
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->i()J

    move-result-wide v0

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->f:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v2}, Lcom/snapchat/android/model/UserPrefs;->j()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;)I
    .locals 2
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 157
    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 159
    :cond_1
    if-nez p1, :cond_2

    const/4 v1, 0x0

    .line 160
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 159
    :cond_2
    const v1, 0x7f0a003e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method protected b()V
    .locals 5

    .prologue
    .line 251
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->e:Lcom/snapchat/android/model/User;

    .line 252
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->e:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_3

    .line 253
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->d:Ljava/util/List;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 255
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->e:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->s()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 256
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->e:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 258
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b(Lcom/snapchat/android/model/Friend;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    :cond_1
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->d:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v4, 0xc8

    if-lt v0, v4, :cond_0

    .line 267
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    const-string v0, "AddedMeFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshFriendList - LastSeenAddedMeTimestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->f:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v2}, Lcom/snapchat/android/model/UserPrefs;->j()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Total # of FriendsWhoAddedMe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->e:Lcom/snapchat/android/model/User;

    invoke-virtual {v2}, Lcom/snapchat/android/model/User;->w()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " # of FriendsWhoAddedMe for display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    if-eqz v0, :cond_4

    .line 274
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->notifyDataSetChanged()V

    .line 277
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->e:Lcom/snapchat/android/model/User;

    if-nez v0, :cond_5

    .line 278
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->d()V

    .line 284
    :goto_0
    return-void

    .line 267
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 279
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 280
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->f()V

    goto :goto_0

    .line 282
    :cond_6
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->h()V

    goto :goto_0
.end method

.method protected b(Lcom/snapchat/android/model/Friend;)Z
    .locals 1
    .parameter

    .prologue
    .line 290
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->L()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->K()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 294
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->d(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    return-void
.end method

.method protected d_()V
    .locals 2

    .prologue
    .line 197
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->e:Lcom/snapchat/android/model/User;

    .line 198
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->e:Lcom/snapchat/android/model/User;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a(Lcom/snapchat/android/model/User;Z)V

    .line 199
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 300
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    return-void
.end method

.method public getAnalyticsContext()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->j:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-object v0
.end method

.method public getAnalyticsParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    .line 326
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method protected h()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 307
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    const v0, 0x7f0a006c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 310
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 79
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 81
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 83
    const v0, 0x7f040066

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->x:Landroid/view/View;

    .line 84
    const v0, 0x7f0a0235

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->c:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0c0014

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->c:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/snapchat/android/util/EmojiUtils;->a:[B

    invoke-static {v3}, Lcom/snapchat/android/util/EmojiUtils;->a([B)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->G()Landroid/view/Window;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;Landroid/view/Window;)V

    .line 91
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    invoke-direct {v2, v5}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 93
    const v0, 0x7f0a0155

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 95
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->d:Ljava/util/List;

    new-instance v3, Lcom/snapchat/android/util/FriendSectionizer$NoSectionizer;

    invoke-direct {v3}, Lcom/snapchat/android/util/FriendSectionizer$NoSectionizer;-><init>()V

    new-instance v6, Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;

    invoke-direct {v6}, Lcom/snapchat/android/fragments/addfriends/NonTappableAddFriendsTextProvider;-><init>()V

    iget-object v7, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->h:Ljavax/inject/Provider;

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/util/FriendSectionizer;Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;ZLcom/snapchat/android/fragments/addfriends/AddFriendsTextProvider;Ljavax/inject/Provider;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->g(Z)V

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 101
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b()V

    .line 103
    new-instance v0, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    sget-object v2, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->a:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    invoke-direct {v0, v1, v2, p0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;-><init>(Landroid/widget/ListView;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;)V

    .line 105
    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a(Z)V

    .line 106
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->a()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v5}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollAlwaysVisible(Z)V

    .line 110
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->i()V

    .line 112
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onRefreshOnFriendActionEvent(Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->a()Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    .line 213
    sget-object v1, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment$2;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->b()Lcom/snapchat/android/model/FriendAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b()V

    .line 221
    :goto_0
    return-void

    .line 216
    :pswitch_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter;->a(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 203
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 204
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 205
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 206
    return-void
.end method

.method public onUserLoadedEvent(Lcom/snapchat/android/util/eventbus/UserLoadedEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 225
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/UserLoadedEvent;->a:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->e:Lcom/snapchat/android/model/User;

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/UserLoadedEvent;->a:Lcom/snapchat/android/model/User;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->e:Lcom/snapchat/android/model/User;

    .line 228
    const-string v0, "AddedMeFragment"

    const-string v1, "Update snaps because this fragment has not updated snaps since it became visible."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->g:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->c()I

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->b()V

    .line 232
    return-void
.end method

.method protected s_()V
    .locals 3

    .prologue
    .line 180
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 182
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;Landroid/view/Window;)V

    .line 183
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 185
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->e:Lcom/snapchat/android/model/User;

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->e:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->g:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->c()I

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;->j:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V

    .line 192
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 193
    return-void

    .line 189
    :cond_0
    const-string v0, "AddedMeFragment"

    const-string v1, "User is not loaded yet. Need to update snaps when the user is loaded."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
