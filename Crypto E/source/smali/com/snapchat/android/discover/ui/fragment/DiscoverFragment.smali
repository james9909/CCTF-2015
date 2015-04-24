.class public Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/snapchat/android/discover/ui/OpenChannelAnimator;
.implements Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$ChannelViewCallback;
.implements Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$ConfigurationListener;
.implements Lcom/snapchat/android/networkmanager/NetworkStatusListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/fragment/SnapchatFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/snapchat/android/discover/ui/OpenChannelAnimator;",
        "Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$ChannelViewCallback;",
        "Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$ConfigurationListener;",
        "Lcom/snapchat/android/networkmanager/NetworkStatusListener;"
    }
.end annotation


# instance fields
.field protected a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

.field protected b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

.field private final c:Lcom/squareup/otto/Bus;

.field private final d:Lcom/snapchat/android/service/SnapchatServiceManager;

.field private final e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

.field private final f:Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;

.field private final g:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

.field private final h:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

.field private final i:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

.field private final j:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

.field private k:Lcom/snapchat/android/discover/ui/ChannelGroupView;

.field private l:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

.field private m:Z

.field private n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/snapchat/android/service/SnapchatServiceListener;

.field private final p:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 127
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;->a()Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->a()Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    move-result-object v5

    new-instance v6, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    invoke-direct {v6}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;-><init>()V

    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a()Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v7

    invoke-static {}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a()Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;-><init>(Lcom/squareup/otto/Bus;Lcom/snapchat/android/service/SnapchatServiceManager;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;Lcom/snapchat/android/networkmanager/NetworkStatusManager;Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/controller/DiscoverMediaManager;)V

    .line 131
    return-void
.end method

.method constructor <init>(Lcom/squareup/otto/Bus;Lcom/snapchat/android/service/SnapchatServiceManager;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;Lcom/snapchat/android/networkmanager/NetworkStatusManager;Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Lcom/snapchat/android/discover/controller/DiscoverMediaManager;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    .line 86
    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->l:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->m:Z

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->n:Ljava/util/Set;

    .line 90
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$1;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->o:Lcom/snapchat/android/service/SnapchatServiceListener;

    .line 116
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$2;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->p:Landroid/view/View$OnClickListener;

    .line 139
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c:Lcom/squareup/otto/Bus;

    .line 140
    iput-object p2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d:Lcom/snapchat/android/service/SnapchatServiceManager;

    .line 141
    iput-object p3, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    .line 142
    iput-object p4, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f:Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;

    .line 143
    iput-object p5, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->g:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    .line 144
    iput-object p6, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    .line 145
    iput-object p7, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    .line 146
    iput-object p8, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    .line 147
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;)Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->l:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->n:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->l:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)Lcom/squareup/otto/Bus;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 248
    and-int/lit8 v0, v0, 0xf

    .line 250
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 254
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const v0, 0x3fd33333

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    .line 256
    :cond_0
    const v0, 0x7f0a0190

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020102

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    :cond_1
    return-void
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->l:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->g:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->c()V

    .line 293
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 383
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    .line 384
    const-string v2, "DiscoverFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadFinished - loaderId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    packed-switch v0, :pswitch_data_0

    .line 400
    :goto_0
    return-void

    .line 387
    :pswitch_0
    if-nez p2, :cond_1

    move v0, v1

    .line 388
    :goto_1
    if-lez v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->b:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    .line 396
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    .line 387
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_1

    .line 390
    :cond_2
    iget-boolean v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->m:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->n:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 391
    const-string v0, "DiscoverFragment"

    const-string v2, "onLoadFinished - No Channels."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->e:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    .line 393
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h()Z

    goto :goto_2

    .line 385
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/snapchat/android/discover/ui/ChannelView;)V
    .locals 3
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    new-instance v1, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$4;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;Lcom/snapchat/android/discover/ui/ChannelView;)V

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(Lcom/snapchat/android/discover/ui/ChannelView;Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;)V

    .line 281
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->d()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;)V

    .line 346
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h()Z

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;)V

    .line 353
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h()Z

    move-result v1

    .line 354
    if-nez v1, :cond_0

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    if-ne v0, v1, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f()V

    goto :goto_0
.end method

.method protected d_()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->g:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->b(Lcom/snapchat/android/networkmanager/NetworkStatusListener;)V

    .line 182
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f:Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;->d()V

    .line 183
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->d_()V

    .line 184
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b()Z

    move-result v0

    return v0
.end method

.method protected f()V
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->d()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v1, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->a:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    .line 423
    :cond_0
    const-string v0, "DiscoverFragment"

    const-string v1, "Fetching discover channel list"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->n:Ljava/util/Set;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->f(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_1
    return-void
.end method

.method protected h()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 435
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->g:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v2}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->b()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 436
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    .line 437
    const-string v2, "DiscoverFragment"

    const-string v3, "No external storage available error."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v2, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->d:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    .line 446
    :goto_0
    return v0

    .line 441
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 442
    :cond_1
    const-string v2, "DiscoverFragment"

    const-string v3, "Network error."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    sget-object v2, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;->c:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;

    invoke-virtual {v1, v2}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter$LoadingState;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 446
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 151
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 152
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    new-instance v0, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p0, v2}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;-><init>(Landroid/content/Context;Lcom/snapchat/android/discover/ui/OpenChannelAnimator;Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter$ChannelViewCallback;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    .line 156
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->p_()V

    .line 158
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$ConfigurationListener;)V

    .line 159
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 160
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 367
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 375
    :goto_0
    return-object v0

    .line 369
    :pswitch_0
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/content/SnapchatProvider;->b:Landroid/net/Uri;

    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 223
    const v0, 0x7f040040

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->x:Landroid/view/View;

    .line 224
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 226
    const v0, 0x7f0a0191

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$3;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const v0, 0x7f0a0193

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/ChannelGroupView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->k:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    .line 234
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->k:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 236
    const v0, 0x7f0a019d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    .line 238
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->x:Landroid/view/View;

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    iget-object v3, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Landroid/view/View;Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;Landroid/view/View$OnClickListener;)V

    .line 240
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i()V

    .line 242
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 243
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroy()V

    .line 165
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$ConfigurationListener;)V

    .line 166
    return-void
.end method

.method public onEditionClose(Lcom/snapchat/android/discover/util/eventbus/EditionClosedEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->l:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    .line 298
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    new-instance v1, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$5;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;)V

    .line 319
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->i:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->e()V

    .line 320
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 204
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 206
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a()V

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->a()V

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->l:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;->f()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->l:Lcom/snapchat/android/discover/ui/fragment/EditionViewerFragment;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/SoftNavigationBarEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SoftNavigationBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d:Lcom/snapchat/android/service/SnapchatServiceManager;

    const/16 v1, 0x3ef

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->o:Lcom/snapchat/android/service/SnapchatServiceListener;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->b(ILcom/snapchat/android/service/SnapchatServiceListener;)V

    .line 216
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 217
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 188
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 189
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 191
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->c:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->d:Lcom/snapchat/android/service/SnapchatServiceManager;

    const/16 v1, 0x3ef

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->o:Lcom/snapchat/android/service/SnapchatServiceListener;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(ILcom/snapchat/android/service/SnapchatServiceListener;)V

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h:Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->d()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverLoadingStatePresenter;->a(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;)V

    .line 194
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->b()V

    .line 196
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f()V

    .line 199
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 200
    return-void
.end method

.method public onSnapSendInitiated(Lcom/snapchat/android/util/eventbus/SnapSendInitiatedEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->a:Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/fragment/ChannelCursorAdapter;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->b:Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;

    new-instance v1, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment$6;-><init>(Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$AnimationEndCall;)V

    .line 333
    :cond_0
    return-void
.end method

.method public onSyncAllCompletedEvent(Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->m:Z

    .line 410
    return-void
.end method

.method protected p_()V
    .locals 3

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 362
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 363
    return-void
.end method

.method protected s_()V
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 171
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->s_()V

    .line 172
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 173
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->f:Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;->d()V

    .line 174
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->j:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    sget-object v1, Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;->a:Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a(Lcom/snapchat/android/discover/controller/DiscoverMediaCategory;)V

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/fragment/DiscoverFragment;->g:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->a(Lcom/snapchat/android/networkmanager/NetworkStatusListener;)V

    .line 176
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 177
    return-void
.end method
