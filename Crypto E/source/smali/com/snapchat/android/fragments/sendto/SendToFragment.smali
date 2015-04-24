.class public Lcom/snapchat/android/fragments/sendto/SendToFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;


# static fields
.field private static b:Lcom/snapchat/android/model/Mediabryo;


# instance fields
.field protected a:Lcom/snapchat/android/database/HasSeenPostToOurStoryDialogLog;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lcom/snapchat/android/fragments/sendto/SendToAdapter;

.field private f:Landroid/os/Handler;

.field private g:Landroid/view/inputmethod/InputMethodManager;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/view/View;

.field private j:Z

.field private k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field private l:Lcom/snapchat/android/model/User;

.field private m:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/PostToStory;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/snapchat/android/ui/SendToBottomPanelView;

.field private final p:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

.field private final q:Lcom/snapchat/android/analytics/NetworkAnalytics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->f:Landroid/os/Handler;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->j:Z

    .line 97
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/LinkedHashSet;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Ljava/util/ArrayList;

    .line 101
    invoke-static {}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->a()Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->p:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    .line 102
    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->q:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 120
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/analytics/SnapCaptureAnalytics;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->p:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    return-object v0
.end method

.method public static a(Lcom/snapchat/android/model/Mediabryo;)Lcom/snapchat/android/fragments/sendto/SendToFragment;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 113
    sput-object p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Lcom/snapchat/android/model/Mediabryo;

    .line 114
    new-instance v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;-><init>()V

    return-object v0
.end method

.method private a(Lcom/snapchat/android/model/Friend;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->p:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    iget-boolean v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->j:Z

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->a(Lcom/snapchat/android/model/Friend;Z)V

    .line 382
    if-eqz p2, :cond_1

    .line 383
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 391
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->a:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c003e

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/PostToStory;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->p:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->g()V

    .line 395
    if-eqz p2, :cond_0

    .line 396
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/PostToStory;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 409
    instance-of v1, p1, Lcom/snapchat/android/model/MyPostToStory;

    if-eqz v1, :cond_1

    .line 410
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->C()Z

    move-result v1

    if-nez v1, :cond_2

    .line 419
    :cond_0
    :goto_0
    return v0

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a:Lcom/snapchat/android/database/HasSeenPostToOurStoryDialogLog;

    invoke-virtual {p1}, Lcom/snapchat/android/model/PostToStory;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/database/HasSeenPostToOurStoryDialogLog;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->v()V

    return-void
.end method

.method private b(Lcom/snapchat/android/model/PostToStory;)V
    .locals 3
    .parameter

    .prologue
    .line 423
    instance-of v0, p1, Lcom/snapchat/android/model/MyPostToStory;

    if-eqz v0, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o()V

    .line 435
    :goto_0
    return-void

    .line 426
    :cond_0
    new-instance v0, Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/sendto/SendToFragment$9;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/fragments/sendto/SendToFragment$9;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;Lcom/snapchat/android/model/PostToStory;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/PostToStory;Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog$PostToStoryDialogCallback;)V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog;->show()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/LinkedHashSet;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/model/User;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Lcom/snapchat/android/model/User;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/analytics/NetworkAnalytics;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->q:Lcom/snapchat/android/analytics/NetworkAnalytics;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h()Lcom/snapchat/android/model/Mediabryo;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Lcom/snapchat/android/model/Mediabryo;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->j:Z

    return v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 155
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 157
    return-void
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->s()V

    return-void
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->t()V

    return-void
.end method

.method static synthetic k(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/fragments/sendto/SendToAdapter;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lcom/snapchat/android/fragments/sendto/SendToAdapter;

    return-object v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 214
    const v0, 0x7f0a0277

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lcom/snapchat/android/ui/SendToBottomPanelView;

    .line 215
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lcom/snapchat/android/ui/SendToBottomPanelView;

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$1;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setSendButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lcom/snapchat/android/ui/SendToBottomPanelView;

    new-instance v1, Lcom/snapchat/android/util/BouncyToucher;

    iget-object v2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SendToBottomPanelView;->getSendButton()Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/BouncyToucher;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setSendButtonOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->p()V

    .line 253
    return-void
.end method

.method static synthetic l(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n()V

    .line 258
    const v0, 0x7f0a0274

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c:Landroid/view/View;

    .line 259
    const v0, 0x7f0a0271

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d:Landroid/view/View;

    .line 260
    const v0, 0x7f0a0272

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    .line 261
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->i:Landroid/view/View;

    .line 263
    const v0, 0x7f0a0273

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$2;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$3;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$4;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 299
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->i:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$5;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$6;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 317
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k()V

    .line 319
    const v0, 0x7f0a026f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$7;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    return-void
.end method

.method static synthetic m(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic n(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method private n()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 330
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 331
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Lcom/snapchat/android/model/Mediabryo;

    instance-of v0, v0, Lcom/snapchat/android/discover/model/DSnapbryo;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 336
    :goto_0
    new-instance v0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f040063

    new-instance v4, Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    invoke-direct {v4}, Lcom/snapchat/android/model/Friend$FriendListSectionizer;-><init>()V

    new-instance v6, Lcom/snapchat/android/ui/sendto/SendToItemCheckboxResourceProvider;

    invoke-direct {v6}, Lcom/snapchat/android/ui/sendto/SendToItemCheckboxResourceProvider;-><init>()V

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/fragments/sendto/SendToAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/snapchat/android/model/Friend$FriendListSectionizer;Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;Lcom/snapchat/android/ui/sendto/SendToItemCheckboxResourceProvider;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lcom/snapchat/android/fragments/sendto/SendToAdapter;

    .line 340
    const v0, 0x7f0a0168

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 341
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lcom/snapchat/android/fragments/sendto/SendToAdapter;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 342
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v7}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollAlwaysVisible(Z)V

    .line 343
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v7}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setTextFilterEnabled(Z)V

    .line 344
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->k:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$8;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 354
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private o()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 441
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 442
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 443
    const v1, 0x7f04006c

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 444
    const v0, 0x7f0a0250

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v2

    .line 445
    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 446
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 448
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c001e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c003d

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 452
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 453
    return-void
.end method

.method static synthetic o(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->u()V

    return-void
.end method

.method static synthetic p(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->g:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 492
    new-instance v0, Lcom/snapchat/android/fragments/sendto/SendToFragment$10;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment$10;-><init>(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V

    .line 506
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 507
    return-void
.end method

.method static synthetic q(Lcom/snapchat/android/fragments/sendto/SendToFragment;)Lcom/snapchat/android/ui/SendToBottomPanelView;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lcom/snapchat/android/ui/SendToBottomPanelView;

    return-object v0
.end method

.method private q()V
    .locals 4

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 511
    if-nez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 514
    :cond_0
    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 515
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 516
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private r()V
    .locals 4

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 521
    if-nez v0, :cond_0

    .line 527
    :goto_0
    return-void

    .line 524
    :cond_0
    const v1, 0x7f050002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 525
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 526
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic r(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->r()V

    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 530
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 534
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->g:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 535
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 536
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->j:Z

    .line 537
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->v()V

    .line 538
    return-void
.end method

.method static synthetic s(Lcom/snapchat/android/fragments/sendto/SendToFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->q()V

    return-void
.end method

.method private t()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 541
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 545
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->g:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->j:Z

    .line 547
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->u()V

    .line 548
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->G()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 552
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->x:Landroid/view/View;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;)V

    .line 553
    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 557
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->G()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 558
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/fragments/sendto/SendToItem;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 368
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_1

    .line 369
    check-cast p1, Lcom/snapchat/android/model/Friend;

    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Lcom/snapchat/android/model/Friend;Z)V

    .line 376
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lcom/snapchat/android/fragments/sendto/SendToAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->notifyDataSetChanged()V

    .line 377
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b()V

    .line 378
    return-void

    .line 370
    :cond_1
    instance-of v0, p1, Lcom/snapchat/android/model/PostToStory;

    if-eqz v0, :cond_0

    .line 371
    if-eqz p2, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/snapchat/android/model/PostToStory;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Lcom/snapchat/android/model/PostToStory;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 372
    check-cast v0, Lcom/snapchat/android/model/PostToStory;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b(Lcom/snapchat/android/model/PostToStory;)V

    .line 374
    :cond_2
    check-cast p1, Lcom/snapchat/android/model/PostToStory;

    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->a(Lcom/snapchat/android/model/PostToStory;Z)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/fragments/sendto/SendToItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 358
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 363
    :goto_0
    return v0

    .line 360
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/PostToStory;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 363
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 5

    .prologue
    .line 477
    const-string v1, ""

    .line 478
    const-string v0, ""

    .line 479
    iget-object v2, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/PostToStory;

    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/PostToStory;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 481
    const-string v0, ", "

    move-object v2, v1

    move-object v1, v0

    .line 482
    goto :goto_0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    const-string v1, ", "

    goto :goto_1

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->o:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setText(Ljava/lang/String;)V

    .line 488
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->p()V

    .line 489
    return-void
.end method

.method public d_()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->d_()V

    .line 170
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->j:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->s()V

    .line 201
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->p:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->e()V

    .line 204
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 133
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->i()V

    .line 135
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->g:Landroid/view/inputmethod/InputMethodManager;

    .line 137
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Lcom/snapchat/android/model/User;

    .line 140
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Lcom/snapchat/android/model/Mediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Mediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/LinkedHashSet;

    .line 141
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Lcom/snapchat/android/model/Mediabryo;

    instance-of v0, v0, Lcom/snapchat/android/model/Snapbryo;

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Lcom/snapchat/android/model/Mediabryo;

    check-cast v0, Lcom/snapchat/android/model/Snapbryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snapbryo;->l()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Ljava/util/ArrayList;

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l()V

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 146
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Lcom/snapchat/android/model/User;

    invoke-static {v2, v3}, Lcom/snapchat/android/util/FriendUtils;->e(Ljava/lang/String;Lcom/snapchat/android/model/User;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    sget-object v2, Lcom/snapchat/android/model/Friend$SuggestState;->PENDING:Lcom/snapchat/android/model/Friend$SuggestState;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$SuggestState;)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b()V

    .line 152
    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->setRetainInstance(Z)V

    .line 110
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    const v0, 0x7f040075

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->x:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 183
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroyView()V

    .line 189
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->l:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->s()Ljava/util/List;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 191
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->F()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/Friend;->f(Z)V

    goto :goto_0

    .line 195
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 175
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Lcom/snapchat/android/model/Mediabryo;

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->m:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Mediabryo;->a(Ljava/util/LinkedHashSet;)V

    .line 176
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Lcom/snapchat/android/model/Mediabryo;

    instance-of v0, v0, Lcom/snapchat/android/model/Snapbryo;

    if-eqz v0, :cond_0

    .line 177
    sget-object v0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->b:Lcom/snapchat/android/model/Mediabryo;

    check-cast v0, Lcom/snapchat/android/model/Snapbryo;

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo;->a(Ljava/util/ArrayList;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onRefreshFriendExistsTask(Lcom/snapchat/android/util/eventbus/RefreshOnFriendExistsTask;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lcom/snapchat/android/fragments/sendto/SendToAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->notifyDataSetChanged()V

    .line 473
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 457
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->a()Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 458
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->b()Lcom/snapchat/android/model/FriendAction;

    move-result-object v1

    .line 459
    if-eqz v0, :cond_1

    .line 460
    sget-object v2, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    if-ne v2, v1, :cond_2

    .line 461
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->f(Z)V

    .line 462
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lcom/snapchat/android/fragments/sendto/SendToAdapter;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->a(Lcom/snapchat/android/model/Friend;)V

    .line 466
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lcom/snapchat/android/fragments/sendto/SendToAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 468
    :cond_1
    return-void

    .line 463
    :cond_2
    sget-object v2, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    if-ne v2, v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->e:Lcom/snapchat/android/fragments/sendto/SendToAdapter;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->b(Lcom/snapchat/android/model/Friend;)V

    goto :goto_0
.end method

.method public s_()V
    .locals 3

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/snapchat/android/fragments/sendto/SendToFragment;->i()V

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToFragment;->p:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->c()V

    .line 164
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public t_()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method
