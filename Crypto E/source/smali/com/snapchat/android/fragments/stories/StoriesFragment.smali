.class public Lcom/snapchat/android/fragments/stories/StoriesFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api/SharedStorySearchTask$SharedStorySearchTaskCallback;
.implements Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;


# instance fields
.field private B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

.field private C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

.field private final D:Lcom/snapchat/android/controller/SendSnapController;

.field private final E:Lcom/snapchat/android/model/SnapWomb;

.field private F:Ljava/lang/String;

.field private G:I

.field private final H:Lcom/snapchat/android/location/LocationProvider;

.field private I:Z

.field private final J:Lcom/snapchat/android/analytics/CameraEventAnalytics;

.field private final K:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private final L:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private final M:Lcom/snapchat/android/analytics/MediaViewAnalytics;

.field private final N:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final O:Lcom/squareup/otto/Bus;

.field private final P:Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;

.field private Q:Lcom/snapchat/android/util/fragment/FragmentPageChangeCallback;

.field private R:Lcom/snapchat/android/fragments/stories/StoriesListItem;

.field private S:Landroid/view/View;

.field private T:Landroid/view/View;

.field private U:Landroid/view/View;

.field private V:Landroid/widget/ImageView;

.field private W:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

.field protected a:Lcom/snapchat/android/model/RecentStoryCollection;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/RecentStoryCollection;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/snapchat/android/model/StoryLibrary;

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

.field protected e:Lcom/snapchat/android/deeplink/DeepLinkParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

.field protected final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Z

.field i:Z

.field protected j:Landroid/widget/EditText;

.field protected k:Landroid/view/View;

.field protected l:Landroid/view/View;

.field protected m:Landroid/widget/Button;

.field protected n:Landroid/view/View;

.field protected o:Landroid/widget/TextView;

.field protected p:Z

.field private final q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/model/StoryGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    .line 217
    new-instance v1, Lcom/snapchat/android/controller/SendSnapController;

    invoke-direct {v1}, Lcom/snapchat/android/controller/SendSnapController;-><init>()V

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;->a()Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->a()Lcom/snapchat/android/analytics/MediaViewAnalytics;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v6

    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v7

    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v8

    invoke-static {}, Lcom/snapchat/android/location/LocationProvider;->a()Lcom/snapchat/android/location/LocationProvider;

    move-result-object v9

    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v10

    sget-object v11, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/snapchat/android/fragments/stories/StoriesFragment;-><init>(Lcom/snapchat/android/controller/SendSnapController;Lcom/snapchat/android/analytics/NetworkAnalytics;Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lcom/snapchat/android/analytics/MediaViewAnalytics;Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/model/StoryLibrary;Lcom/squareup/otto/Bus;Lcom/snapchat/android/location/LocationProvider;Lcom/snapchat/android/analytics/CameraEventAnalytics;Ljavax/inject/Provider;)V

    .line 221
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/controller/SendSnapController;Lcom/snapchat/android/analytics/NetworkAnalytics;Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lcom/snapchat/android/analytics/MediaViewAnalytics;Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/model/StoryLibrary;Lcom/squareup/otto/Bus;Lcom/snapchat/android/location/LocationProvider;Lcom/snapchat/android/analytics/CameraEventAnalytics;Ljavax/inject/Provider;)V
    .locals 2
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
            "Lcom/snapchat/android/controller/SendSnapController;",
            "Lcom/snapchat/android/analytics/NetworkAnalytics;",
            "Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;",
            "Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;",
            "Lcom/snapchat/android/analytics/MediaViewAnalytics;",
            "Lcom/snapchat/android/model/SnapWomb;",
            "Lcom/snapchat/android/model/StoryLibrary;",
            "Lcom/squareup/otto/Bus;",
            "Lcom/snapchat/android/location/LocationProvider;",
            "Lcom/snapchat/android/analytics/CameraEventAnalytics;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 229
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q:Ljava/util/HashMap;

    .line 151
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r:Ljava/util/HashSet;

    .line 152
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljava/util/Set;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u:Ljava/util/List;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->F:Ljava/lang/String;

    .line 184
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->I:Z

    .line 191
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Z

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    .line 214
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p:Z

    .line 230
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 231
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->D:Lcom/snapchat/android/controller/SendSnapController;

    .line 232
    iput-object p2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->K:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 233
    iput-object p3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;

    .line 234
    iput-object p4, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->L:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 235
    iput-object p5, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->M:Lcom/snapchat/android/analytics/MediaViewAnalytics;

    .line 236
    iput-object p6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->E:Lcom/snapchat/android/model/SnapWomb;

    .line 237
    iput-object p7, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lcom/snapchat/android/model/StoryLibrary;

    .line 238
    iput-object p8, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->O:Lcom/squareup/otto/Bus;

    .line 239
    iput-object p9, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->H:Lcom/snapchat/android/location/LocationProvider;

    .line 240
    iput-object p10, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->J:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 241
    iput-object p11, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljavax/inject/Provider;

    .line 242
    return-void
.end method

.method private A()I
    .locals 6

    .prologue
    .line 277
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 278
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 279
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 281
    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x101004d

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 282
    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 284
    iget v0, v1, Landroid/util/TypedValue;->data:I

    invoke-static {v0, v2}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private B()V
    .locals 6

    .prologue
    .line 313
    const v0, 0x7f0a02fa

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->V:Landroid/widget/ImageView;

    .line 314
    const v0, 0x7f0a0300

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->k:Landroid/view/View;

    .line 315
    const v0, 0x7f0a02f6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->S:Landroid/view/View;

    .line 316
    const v0, 0x7f0a02f3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->T:Landroid/view/View;

    .line 317
    const v0, 0x7f0a02f4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/widget/EditText;

    .line 318
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->U:Landroid/view/View;

    .line 319
    const v0, 0x7f0a02f5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->W:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    .line 321
    const v0, 0x7f0a0301

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->n:Landroid/view/View;

    .line 322
    const v0, 0x7f0a0302

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->o:Landroid/widget/TextView;

    .line 323
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00d6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/snapchat/android/util/EmojiUtils;->f:[B

    invoke-static {v5}, Lcom/snapchat/android/util/EmojiUtils;->a([B)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    const v0, 0x7f0a02f8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    .line 328
    const v0, 0x7f0a02fb

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->l:Landroid/view/View;

    .line 329
    const v0, 0x7f0a02ff

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->m:Landroid/widget/Button;

    .line 331
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->m:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 332
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->m:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 333
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->m:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$1;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C()V

    .line 341
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->D()V

    .line 344
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$2;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 358
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->W:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$3;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$4;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;->a(Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver$DiscoverNewContentListener;)V

    .line 385
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P:Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/DiscoverNewContentObserver;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->W:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->a()V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->S:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$5;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    const v0, 0x7f0a02f2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$6;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$7;

    invoke-direct {v1, p0, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$7;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 429
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->U:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$8;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->k()V

    .line 437
    return-void
.end method

.method private C()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 716
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->o()V

    .line 718
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->E:Lcom/snapchat/android/model/SnapWomb;

    invoke-static {}, Lcom/snapchat/android/util/StoriesThumbnailCache;->a()Lcom/snapchat/android/util/StoriesThumbnailCache;

    move-result-object v5

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesAdapterInterface;Lcom/snapchat/android/model/SnapWomb;Lcom/snapchat/android/util/StoriesThumbnailCache;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    .line 720
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p()V

    .line 722
    const v0, 0x7f0a02f9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 723
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 725
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollAlwaysVisible(Z)V

    .line 726
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setTextFilterEnabled(Z)V

    .line 728
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 729
    return-void
.end method

.method private D()V
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$13;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$13;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setPtrHandler(Lin/srain/cube/views/ptr/PtrHandler;)V

    .line 752
    return-void
.end method

.method private E()V
    .locals 3

    .prologue
    .line 755
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 756
    if-eqz v0, :cond_0

    .line 757
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->ak()V

    .line 758
    invoke-static {v0}, Lcom/snapchat/android/api/SyncAllTask;->b(Lcom/snapchat/android/model/User;)V

    .line 759
    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Lcom/snapchat/android/api/UpdateStoriesTask;

    invoke-direct {v0}, Lcom/snapchat/android/api/UpdateStoriesTask;-><init>()V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/UpdateStoriesTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 763
    :cond_0
    return-void
.end method

.method private F()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 797
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 798
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    .line 799
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->m()I

    move-result v3

    if-lez v3, :cond_0

    .line 800
    instance-of v3, v0, Lcom/snapchat/android/model/MyStoryGroup;

    if-eqz v3, :cond_1

    .line 802
    new-instance v3, Lcom/snapchat/android/fragments/stories/MyStoryGroupStoriesListItem;

    const v4, 0x7f0c012b

    invoke-virtual {p0, v4}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/snapchat/android/fragments/stories/MyStoryGroupStoriesListItem;-><init>(Ljava/lang/String;)V

    .line 804
    const/4 v4, 0x0

    invoke-direct {p0, v3, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;Lcom/snapchat/android/model/StoryGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 807
    :cond_1
    new-instance v3, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    invoke-direct {v3, v0}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;-><init>(Lcom/snapchat/android/model/StoryGroup;)V

    .line 808
    invoke-direct {p0, v3, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;Lcom/snapchat/android/model/StoryGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 812
    :cond_2
    return-object v1
.end method

.method private K()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1045
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->S:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1046
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->T:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1048
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1049
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1050
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    .line 1051
    return-void
.end method

.method private L()V
    .locals 3

    .prologue
    .line 1152
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->H()Landroid/content/Intent;

    move-result-object v0

    .line 1153
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->e:Lcom/snapchat/android/deeplink/DeepLinkParser;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/deeplink/DeepLinkParser;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 1154
    if-eqz v1, :cond_0

    .line 1155
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->e:Lcom/snapchat/android/deeplink/DeepLinkParser;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/deeplink/DeepLinkParser;->b(Landroid/content/Intent;)V

    .line 1156
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->K()V

    .line 1157
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1159
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 1160
    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/User;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1161
    new-instance v0, Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/deeplink/DeepLinkAddFriendDialog;->show()V

    .line 1164
    :cond_0
    return-void
.end method

.method private M()V
    .locals 3
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1436
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->S:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1437
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->T:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1438
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1439
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1440
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1441
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1442
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    .line 1443
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1444
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    .line 1445
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->n()V

    .line 1446
    return-void
.end method

.method private N()V
    .locals 3

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getLastVisiblePosition()I

    move-result v0

    if-gt v1, v0, :cond_1

    .line 1480
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 1481
    instance-of v2, v0, Lcom/snapchat/android/model/SponsoredStoryCollection;

    if-eqz v2, :cond_0

    .line 1482
    check-cast v0, Lcom/snapchat/android/model/SponsoredStoryCollection;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/model/SponsoredStoryCollection;)V

    .line 1479
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1485
    :cond_1
    return-void
.end method

.method private O()V
    .locals 4
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1524
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1525
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1528
    :cond_1
    return-void
.end method

.method private P()V
    .locals 4

    .prologue
    .line 1542
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Z

    if-nez v0, :cond_1

    .line 1550
    :cond_0
    return-void

    .line 1544
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1545
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1546
    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->e(Ljava/lang/String;)V

    .line 1547
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private Q()V
    .locals 2

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1554
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1555
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;

    .line 1556
    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1557
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1560
    :cond_1
    return-void
.end method

.method private R()V
    .locals 4
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1572
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1573
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1574
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 1575
    instance-of v1, v0, Lcom/snapchat/android/model/SponsoredStoryCollection;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 1576
    check-cast v1, Lcom/snapchat/android/model/SponsoredStoryCollection;

    invoke-virtual {v1}, Lcom/snapchat/android/model/SponsoredStoryCollection;->t()V

    .line 1578
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1582
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 1583
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    .line 1585
    :cond_4
    return-void
.end method

.method private S()V
    .locals 2

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$16;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$16;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->post(Ljava/lang/Runnable;)Z

    .line 1611
    return-void
.end method

.method private a(Lcom/snapchat/android/model/StoryGroup;)I
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 511
    move v1, v2

    move v3, v2

    .line 513
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v4}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v0, v4

    if-ge v1, v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 515
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    .line 516
    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->G:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 518
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v6}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v4, v5, v4

    add-int/2addr v3, v4

    .line 520
    instance-of v4, v0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->e()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    :cond_0
    return v3

    .line 513
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 702
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 703
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$12;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesFragment$12;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 712
    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesFragment;Lcom/snapchat/android/fragments/stories/StoriesListItem;)Lcom/snapchat/android/fragments/stories/StoriesListItem;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->R:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->F:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;Lcom/snapchat/android/model/StoryGroup;)Ljava/util/List;
    .locals 3
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
            "Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;",
            "Lcom/snapchat/android/model/StoryGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/fragments/stories/StoriesListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 823
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 824
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 828
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/stories/StoriesFragment;Lcom/snapchat/android/model/Friend;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b(Lcom/snapchat/android/model/Friend;)V

    return-void
.end method

.method private a(Lcom/snapchat/android/fragments/stories/StoriesListItem;ILcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1019
    instance-of v0, p1, Lcom/snapchat/android/model/RecentStoryCollection;

    if-eqz v0, :cond_1

    .line 1020
    check-cast p1, Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {p1, p2, v3, v2, p3}, Lcom/snapchat/android/model/StoryCollection;->a(ILcom/snapchat/android/model/ReceivedSnap;ZLcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;)I

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_2

    .line 1023
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lcom/snapchat/android/model/StoryLibrary;

    invoke-interface {p1}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->c(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    .line 1024
    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {v0, p2, v3, v2, p3}, Lcom/snapchat/android/model/StoryCollection;->a(ILcom/snapchat/android/model/ReceivedSnap;ZLcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;)I

    goto :goto_0

    .line 1028
    :cond_2
    instance-of v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v0, :cond_0

    .line 1029
    check-cast p1, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    .line 1030
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->U()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->Z()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1031
    invoke-virtual {v0, p3}, Lcom/snapchat/android/model/StorySnap;->a(Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;)V

    .line 1032
    new-instance v1, Lcom/snapchat/android/api/LoadStorySnapMediaTask;

    invoke-direct {v1, v0}, Lcom/snapchat/android/api/LoadStorySnapMediaTask;-><init>(Lcom/snapchat/android/model/StorySnap;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/StoryGroup;Z)V
    .locals 9
    .parameter
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 589
    if-nez p1, :cond_0

    .line 678
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 592
    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->m()I

    move-result v4

    .line 593
    if-eqz p2, :cond_8

    if-lez v4, :cond_8

    .line 595
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v5

    .line 596
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getLastVisiblePosition()I

    move-result v0

    .line 597
    sub-int v3, v0, v5

    move v1, v2

    .line 599
    :goto_1
    if-ge v1, v3, :cond_1

    .line 600
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedView(I)Landroid/view/View;

    move-result-object v0

    .line 601
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;

    .line 602
    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;->G:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 604
    instance-of v6, v0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    if-eqz v6, :cond_2

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    .line 612
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 614
    add-int v0, v2, v4

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 618
    add-int/lit8 v0, v2, 0x1

    :goto_2
    if-gt v0, v1, :cond_3

    .line 619
    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v3, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedView(I)Landroid/view/View;

    move-result-object v3

    .line 620
    invoke-direct {p0, v3}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 621
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 599
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 624
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 625
    add-int v0, v5, v1

    add-int/lit8 v0, v0, 0x1

    .line 626
    :goto_3
    add-int v1, v5, v2

    add-int/2addr v1, v4

    if-gt v0, v1, :cond_4

    .line 627
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 631
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 632
    add-int v1, v5, v2

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    .line 633
    :goto_5
    add-int v1, v5, v2

    add-int/2addr v1, v4

    if-gt v3, v1, :cond_5

    .line 634
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 635
    instance-of v8, v1, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v8, :cond_6

    .line 636
    check-cast v1, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 637
    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/StorySnapLogbook;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 638
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 633
    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5

    .line 647
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 649
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 650
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 651
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 652
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$11;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesFragment$11;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Lcom/snapchat/android/model/StoryGroup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 673
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 675
    :cond_8
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    .line 676
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a()V

    goto/16 :goto_0
.end method

.method private a(Lcom/snapchat/android/model/StorySnapLogbook;)V
    .locals 3
    .parameter

    .prologue
    .line 505
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ay()Ljava/lang/String;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->E:Lcom/snapchat/android/model/SnapWomb;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->D:Lcom/snapchat/android/controller/SendSnapController;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/model/SnapWomb;->a(Ljava/lang/String;Lcom/snapchat/android/controller/SendSnapController;)V

    .line 507
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c()V

    .line 508
    return-void
.end method

.method private a(Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1291
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 1292
    if-nez v0, :cond_1

    .line 1343
    :cond_0
    :goto_0
    return-void

    .line 1294
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;->b()Z

    move-result v1

    .line 1295
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;->c()Z

    move-result v2

    .line 1296
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;->a()Ljava/util/UUID;

    move-result-object v3

    .line 1298
    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v4}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->e()V

    .line 1299
    iget-object v4, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->k:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1300
    if-eqz v1, :cond_7

    .line 1301
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u()V

    .line 1302
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t()V

    .line 1303
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/model/User;)V

    .line 1305
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lcom/snapchat/android/model/RecentStoryCollection;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x()V

    .line 1306
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    .line 1307
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Q()V

    .line 1311
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1312
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->K:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->STORY:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 1314
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/model/RecentStoryCollection;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1315
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->K:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->STORY:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 1319
    :cond_4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1320
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 1321
    invoke-direct {p0, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 1322
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->y()V

    .line 1325
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lcom/snapchat/android/model/StoryLibrary;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryLibrary;->g()Ljava/util/ArrayList;

    move-result-object v0

    .line 1326
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 1327
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/StorySnap;->U()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/StorySnap;->Z()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1328
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->LOAD_STORY_SNAP_BY_DEFAULT:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    invoke-virtual {v4, v5}, Lcom/snapchat/android/model/StorySnap;->a(Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;)V

    .line 1330
    new-instance v4, Lcom/snapchat/android/api/LoadStorySnapMediaTask;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    invoke-direct {v4, v0, v6, v1, v2}, Lcom/snapchat/android/api/LoadStorySnapMediaTask;-><init>(Lcom/snapchat/android/model/StorySnap;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v0, v5}, Lcom/snapchat/android/api/LoadStorySnapMediaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 1336
    :cond_6
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lcom/snapchat/android/model/StoryLibrary;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryLibrary;->o()V

    .line 1338
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->O:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/RefreshCameraNotificationBoxesEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/RefreshCameraNotificationBoxesEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1340
    :cond_7
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    const v0, 0x7f0c00ae

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 1402
    .line 1405
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v2, v3

    move v4, v3

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/RecentStoryCollection;

    .line 1408
    invoke-virtual {v0}, Lcom/snapchat/android/model/RecentStoryCollection;->N()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1409
    if-ge v2, v11, :cond_5

    .line 1411
    add-int/lit8 v2, v2, 0x1

    move v7, v2

    move v8, v4

    move v2, v9

    move v4, v3

    .line 1420
    :goto_1
    if-nez v2, :cond_0

    if-eqz v4, :cond_1

    .line 1421
    :cond_0
    const/4 v2, 0x0

    sget-object v4, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->LOAD_STORY_SNAP_BY_DEFAULT:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/snapchat/android/model/RecentStoryCollection;->a(ILcom/snapchat/android/model/ReceivedSnap;ZLcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;)I

    .line 1427
    :cond_1
    if-ne v8, v1, :cond_4

    if-ne v7, v11, :cond_4

    .line 1432
    :cond_2
    return-void

    .line 1414
    :cond_3
    if-ge v4, v1, :cond_5

    .line 1416
    add-int/lit8 v4, v4, 0x1

    move v7, v2

    move v8, v4

    move v2, v3

    move v4, v9

    goto :goto_1

    :cond_4
    move v2, v7

    move v4, v8

    .line 1431
    goto :goto_0

    :cond_5
    move v7, v2

    move v8, v4

    move v2, v3

    move v4, v3

    goto :goto_1
.end method

.method private b(I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 579
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setDrawingCacheEnabled(Z)V

    .line 580
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {v0, v3, p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v1, v3}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setDrawingCacheEnabled(Z)V

    .line 584
    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->M()V

    return-void
.end method

.method private b(Lcom/snapchat/android/model/Friend;)V
    .locals 2
    .parameter

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 1116
    if-nez v0, :cond_0

    .line 1123
    :goto_0
    return-void

    .line 1119
    :cond_0
    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/User;->e(Lcom/snapchat/android/model/Friend;)V

    .line 1120
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lcom/snapchat/android/model/StoryLibrary;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->d(Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a()V

    .line 1122
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s()V

    goto :goto_0
.end method

.method private b(Lcom/snapchat/android/model/StoryGroup;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 530
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 532
    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->m()I

    move-result v3

    .line 533
    if-nez v3, :cond_0

    .line 534
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 576
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/model/StoryGroup;)I

    move-result v2

    .line 540
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 541
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->C:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->getHeaderHeight()I

    move-result v0

    add-int/2addr v0, v2

    move v1, v0

    .line 544
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->V:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 545
    if-eqz v0, :cond_1

    .line 546
    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 547
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->V:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 551
    :cond_1
    invoke-direct {p0, v1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 552
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->V:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 553
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    iget v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->G:I

    mul-int/2addr v0, v3

    .line 557
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v1, v5, v5, v5, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 558
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 559
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesFragment$10;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Lcom/snapchat/android/model/StoryGroup;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 573
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    .line 574
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(I)V

    .line 575
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/util/fragment/FragmentPageChangeCallback;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Q:Lcom/snapchat/android/util/fragment/FragmentPageChangeCallback;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/snapchat/android/discover/ui/DiscoverButtonView;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->W:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->K()V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->U:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/stories/StoriesFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->V:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->E()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1
    .parameter

    .prologue
    .line 697
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->m:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 699
    return-void
.end method

.method public a(Lcom/snapchat/android/fragments/stories/StoriesListItem;)V
    .locals 4
    .parameter

    .prologue
    .line 469
    instance-of v0, p1, Lcom/snapchat/android/model/StorySnapLogbook;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->aE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    check-cast p1, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/model/StorySnapLogbook;)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b(Lcom/snapchat/android/fragments/stories/StoriesListItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->R:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 473
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->J:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->DOUBLE_TAP:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    .line 474
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->O:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    invoke-interface {p1}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 480
    :goto_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$9;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 477
    :cond_2
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->R:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/model/SponsoredStoryCollection;)V
    .locals 3
    .parameter

    .prologue
    .line 1531
    invoke-virtual {p1}, Lcom/snapchat/android/model/SponsoredStoryCollection;->u()Ljava/lang/String;

    move-result-object v1

    .line 1532
    if-nez v1, :cond_0

    .line 1539
    :goto_0
    return-void

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1535
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1536
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1538
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->P()V

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/model/User;)V
    .locals 2
    .parameter

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1218
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1219
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/fragments/addfriends/SharedStorySearchResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1590
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1591
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Q()V

    .line 1592
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    .line 1593
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/RecentStoryCollection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 927
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/model/RecentStoryCollection;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->K:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->STORY:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;)V

    .line 930
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/snapchat/android/fragments/stories/StoriesListItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 494
    instance-of v2, p1, Lcom/snapchat/android/model/RecentStoryCollection;

    if-eqz v2, :cond_2

    .line 495
    check-cast p1, Lcom/snapchat/android/model/RecentStoryCollection;

    .line 496
    invoke-virtual {p1}, Lcom/snapchat/android/model/RecentStoryCollection;->N()Z

    move-result v2

    if-nez v2, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 496
    goto :goto_0

    .line 497
    :cond_2
    instance-of v2, p1, Lcom/snapchat/android/model/Friend;

    if-eqz v2, :cond_3

    .line 498
    check-cast p1, Lcom/snapchat/android/model/Friend;

    .line 499
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->H()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 501
    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 1233
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u()V

    .line 1234
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    .line 1235
    return-void
.end method

.method protected c_()Z
    .locals 1

    .prologue
    .line 1618
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public d()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 1239
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->STORIES:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-object v0
.end method

.method protected d_()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1489
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->d_()V

    .line 1490
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->d()V

    .line 1491
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->L:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;)V

    .line 1492
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->M:Lcom/snapchat/android/analytics/MediaViewAnalytics;

    const-string v1, "story"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->d(Ljava/lang/String;)V

    .line 1497
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1498
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1499
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryGroup;

    invoke-direct {p0, v0, v3}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/model/StoryGroup;Z)V

    goto :goto_0

    .line 1501
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1503
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a()V

    .line 1505
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    if-eqz v0, :cond_1

    .line 1506
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setSelectionAfterHeaderView()V

    .line 1508
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    if-eqz v0, :cond_2

    .line 1509
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->M()V

    .line 1512
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->R()V

    .line 1513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lcom/snapchat/android/model/RecentStoryCollection;

    .line 1515
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->k()V

    .line 1517
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Z

    .line 1518
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->O()V

    .line 1519
    return-void
.end method

.method public e(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->O:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1566
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->M()V

    .line 298
    const/4 v0, 0x1

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1244
    const-string v0, "StoriesFragment"

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    return v0
.end method

.method public i()V
    .locals 3

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 292
    return-void
.end method

.method protected k()V
    .locals 2
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 442
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->au()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 447
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected l()I
    .locals 1

    .prologue
    .line 450
    const v0, 0x7f020118

    return v0
.end method

.method protected n()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    if-nez v0, :cond_0

    .line 692
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p:Z

    if-nez v0, :cond_2

    .line 688
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(I)V

    goto :goto_0

    .line 690
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(I)V

    goto :goto_0
.end method

.method protected o()V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 738
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 306
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onAttach(Landroid/app/Activity;)V

    .line 308
    check-cast p1, Lcom/snapchat/android/util/fragment/FragmentPageChangeCallback;

    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->Q:Lcom/snapchat/android/util/fragment/FragmentPageChangeCallback;

    .line 309
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 310
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 264
    const v0, 0x7f04008b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x:Landroid/view/View;

    .line 265
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v:Landroid/view/inputmethod/InputMethodManager;

    .line 266
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B()V

    .line 268
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->A()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->G:I

    .line 270
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i()V

    .line 272
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 273
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onGetLocationDataTaskCompletedEvent(Lcom/snapchat/android/util/eventbus/GetLocationDataTaskCompletedEvent;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1286
    new-instance v0, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;-><init>(Ljava/util/UUID;ZZ)V

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;)V

    .line 1288
    return-void
.end method

.method public onHideSnapStoryEvent(Lcom/snapchat/android/util/eventbus/HideSnapStoryEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i()V

    .line 988
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 989
    return-void
.end method

.method public onLoadStoryMediaCompleteEvent(Lcom/snapchat/android/util/eventbus/LoadStoryMediaCompleteEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 922
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Ljava/util/List;)V

    .line 923
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1168
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 1169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lcom/snapchat/android/model/RecentStoryCollection;

    .line 1170
    return-void
.end method

.method public onPostStorySnapRequestCompleteEvent(Lcom/snapchat/android/util/eventbus/PostStorySnapRequestCompleteEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c()V

    .line 940
    return-void
.end method

.method public onRecentStoryCollectionCompletedViewingEvent(Lcom/snapchat/android/util/eventbus/RecentStoryCollectionCompletedViewingEvent;)V
    .locals 5
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 949
    const/4 v1, 0x0

    .line 950
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/RecentStoryCollection;

    .line 951
    invoke-virtual {v0}, Lcom/snapchat/android/model/RecentStoryCollection;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/snapchat/android/util/eventbus/RecentStoryCollectionCompletedViewingEvent;->a:Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v4}, Lcom/snapchat/android/model/StorySnap;->aB()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 957
    :goto_0
    if-nez v0, :cond_1

    .line 968
    :goto_1
    return-void

    .line 959
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lcom/snapchat/android/model/RecentStoryCollection;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-virtual {v1}, Lcom/snapchat/android/model/RecentStoryCollection;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/RecentStoryCollection;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 960
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 961
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 964
    :cond_2
    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lcom/snapchat/android/model/RecentStoryCollection;

    .line 965
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 967
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r()V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public onRefreshFriendExistsTask(Lcom/snapchat/android/util/eventbus/RefreshOnFriendExistsTask;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1198
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1179
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->a()Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 1180
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;->b()Lcom/snapchat/android/model/FriendAction;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    if-ne v1, v2, :cond_0

    .line 1181
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1186
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1187
    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestType;->USERNAME:Lcom/snapchat/android/model/Friend$SuggestType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$SuggestType;)V

    .line 1192
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q()V

    .line 1193
    return-void

    .line 1189
    :cond_1
    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestType;->ADDRESS_BOOK:Lcom/snapchat/android/model/Friend$SuggestType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->a(Lcom/snapchat/android/model/Friend$SuggestType;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1127
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 1128
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 1131
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->I:Z

    .line 1133
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 1134
    if-eqz v0, :cond_1

    .line 1136
    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    new-instance v0, Lcom/snapchat/android/api/UpdateStoriesTask;

    invoke-direct {v0}, Lcom/snapchat/android/api/UpdateStoriesTask;-><init>()V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/UpdateStoriesTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1139
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p()V

    .line 1141
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->S()V

    .line 1142
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->L()V

    .line 1144
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 1145
    return-void
.end method

.method public onSanitizeStoriesFragmentEvent(Lcom/snapchat/android/util/eventbus/SanitizeStoriesFragmentEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 900
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 901
    if-nez v0, :cond_0

    .line 910
    :goto_0
    return-void

    .line 904
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t()V

    .line 905
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/model/User;)V

    .line 906
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lcom/snapchat/android/model/RecentStoryCollection;

    if-eqz v0, :cond_1

    .line 907
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->x()V

    .line 909
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    goto :goto_0
.end method

.method public onScrollStoriesFragmentToTopEvent(Lcom/snapchat/android/util/eventbus/ScrollStoriesFragmentToTopEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1597
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->S()V

    .line 1598
    return-void
.end method

.method public onSharedStoryButtonClickedEvent(Lcom/snapchat/android/util/eventbus/SharedStoryButtonClickedEvent;)V
    .locals 5
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1061
    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/SharedStoryButtonClickedEvent;->a:Lcom/snapchat/android/model/StoryGroup;

    .line 1062
    const/4 v0, 0x0

    .line 1063
    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryGroup;->e()Ljava/lang/String;

    move-result-object v2

    .line 1064
    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryGroup;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1065
    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryGroup;->g()Ljava/lang/String;

    move-result-object v0

    .line 1067
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1068
    const v0, 0x7f0c0148

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryGroup;->e()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1070
    :cond_1
    new-instance v1, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, p0, v3, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment$14;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Landroid/content/Context;Ljava/lang/String;)V

    .line 1074
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1075
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1076
    return-void
.end method

.method public onSharedStoryFriendButtonClickedEvent(Lcom/snapchat/android/util/eventbus/SharedStoryFriendButtonClickedEvent;)V
    .locals 8
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1081
    iget-object v6, p1, Lcom/snapchat/android/util/eventbus/SharedStoryFriendButtonClickedEvent;->a:Lcom/snapchat/android/model/Friend;

    .line 1083
    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->l()Ljava/lang/String;

    move-result-object v0

    .line 1084
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1085
    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1086
    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->o()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 1095
    :goto_0
    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->m()Ljava/lang/String;

    move-result-object v3

    .line 1096
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1097
    const v0, 0x7f0c0021

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->o()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1100
    :cond_0
    new-instance v0, Lcom/snapchat/android/fragments/stories/StoriesFragment$15;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v1, 0x7f0c0142

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f0c0108

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/fragments/stories/StoriesFragment$15;-><init>(Lcom/snapchat/android/fragments/stories/StoriesFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V

    .line 1110
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1111
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1112
    return-void

    .line 1088
    :cond_1
    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    .line 1089
    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1090
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_2
    move-object v7, v0

    goto :goto_0
.end method

.method public onSponsoredStoryViewingStartedEvent(Lcom/snapchat/android/util/eventbus/SponsoredStoryViewingStartedEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 944
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 945
    return-void
.end method

.method public onStoriesNotifyDatasetChangedEvent(Lcom/snapchat/android/util/eventbus/StoriesNotifyDatasetChangedEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1175
    return-void
.end method

.method public onStoryListPressedEvent(Lcom/snapchat/android/util/eventbus/StoryListPressedEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1041
    invoke-static {}, Lcom/snapchat/android/util/SnapListItemHandler;->a()Lcom/snapchat/android/util/SnapListItemHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/StoryListPressedEvent;->a()Lcom/snapchat/android/fragments/stories/StoriesListItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Lcom/snapchat/android/fragments/stories/StoriesListItem;Landroid/content/Context;)V

    .line 1042
    return-void
.end method

.method public onStoryListTappedEvent(Lcom/snapchat/android/util/eventbus/StoryListTappedEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->M:Lcom/snapchat/android/analytics/MediaViewAnalytics;

    const-string v1, "story"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->a(Ljava/lang/String;)V

    .line 1011
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/StoryListTappedEvent;->a:Lcom/snapchat/android/fragments/stories/StoriesListItem;

    .line 1012
    const/4 v1, 0x3

    sget-object v2, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->LOAD_STORY_SNAP_BY_TAP:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/fragments/stories/StoriesListItem;ILcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;)V

    .line 1014
    return-void
.end method

.method public onStorySnapPostEvent(Lcom/snapchat/android/util/eventbus/StorySnapPostEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c()V

    .line 935
    return-void
.end method

.method public onStoryThumbnailLoadedEvent(Lcom/snapchat/android/util/eventbus/StoryThumbnailLoadedEvent;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 994
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getChildCount()I

    move-result v0

    if-gt v1, v0, :cond_2

    .line 995
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->B:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->getWrappedView(I)Landroid/view/View;

    move-result-object v0

    .line 996
    if-nez v0, :cond_1

    .line 994
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 997
    :cond_1
    const v2, 0x7f0a0224

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 998
    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/snapchat/android/util/eventbus/StoryThumbnailLoadedEvent;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1003
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    iget-object v3, p1, Lcom/snapchat/android/util/eventbus/StoryThumbnailLoadedEvent;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 1006
    :cond_2
    return-void
.end method

.method public onSyncAllCompletedEvent(Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1281
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;)V

    .line 1282
    return-void
.end method

.method public onToggleStoryEvent(Lcom/snapchat/android/util/eventbus/ToggleStoryEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->F:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/ToggleStoryEvent;->a()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->r:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/model/StoryGroup;Z)V

    goto :goto_0

    .line 462
    :cond_1
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b(Lcom/snapchat/android/model/StoryGroup;)V

    .line 463
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a()V

    goto :goto_0
.end method

.method public onUserLoadedEvent(Lcom/snapchat/android/util/eventbus/UserLoadedEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p()V

    .line 915
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 916
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->p:Z

    .line 918
    return-void
.end method

.method protected p()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 781
    if-nez v0, :cond_0

    .line 788
    :goto_0
    return-void

    .line 784
    :cond_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/model/User;)V

    .line 785
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t()V

    .line 786
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->u()V

    .line 787
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    goto :goto_0
.end method

.method protected q()V
    .locals 8

    .prologue
    .line 844
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 845
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c_()Z

    move-result v1

    if-nez v1, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    iget-boolean v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 852
    :goto_1
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 853
    if-nez v1, :cond_2

    .line 854
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->F()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 855
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 858
    :cond_2
    iget-object v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 860
    if-eqz v1, :cond_0

    .line 861
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 862
    new-instance v3, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->d:Ljava/util/List;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 863
    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->s()Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 866
    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->r()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/Friend;

    .line 867
    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 869
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 850
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 874
    :cond_5
    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 876
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 877
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 880
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 881
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 882
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 884
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 888
    :cond_7
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 889
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method protected r()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 972
    const/4 v0, 0x0

    .line 973
    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/RecentStoryCollection;

    .line 974
    invoke-virtual {v0}, Lcom/snapchat/android/model/RecentStoryCollection;->l()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 975
    add-int/lit8 v1, v1, 0x1

    .line 976
    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->LOAD_STORY_SNAP_BY_DEFAULT:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    invoke-virtual {v0, v6, v3, v4, v5}, Lcom/snapchat/android/model/RecentStoryCollection;->a(ILcom/snapchat/android/model/ReceivedSnap;ZLcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;)I

    :cond_0
    move v0, v1

    .line 979
    if-lt v0, v6, :cond_2

    .line 983
    :cond_1
    return-void

    :cond_2
    move v1, v0

    .line 982
    goto :goto_0
.end method

.method protected s()V
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 1207
    if-nez v0, :cond_0

    .line 1213
    :goto_0
    return-void

    .line 1210
    :cond_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a(Lcom/snapchat/android/model/User;)V

    .line 1211
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->t()V

    .line 1212
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->v()V

    goto :goto_0
.end method

.method protected s_()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1450
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 1451
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->M:Lcom/snapchat/android/analytics/MediaViewAnalytics;

    const-string v1, "story"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->b(Ljava/lang/String;)V

    .line 1452
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->s_()V

    .line 1453
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->c()V

    .line 1454
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v0, :cond_0

    .line 1455
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->a()Lcom/snapchat/android/analytics/NotificationAnalytics;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->MY_FRIENDS:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NotificationAnalytics;->a(Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;)V

    .line 1460
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->I:Z

    if-nez v0, :cond_1

    .line 1461
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->H:Lcom/snapchat/android/location/LocationProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/location/LocationProvider;->b()V

    .line 1462
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->I:Z

    .line 1465
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->O:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/CancelReplyEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/CancelReplyEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1466
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lcom/snapchat/android/model/StoryLibrary;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryLibrary;->o()V

    .line 1467
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->O:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/RefreshCameraNotificationBoxesEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/RefreshCameraNotificationBoxesEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1468
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->O:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ScrollFeedToTopEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/ScrollFeedToTopEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1469
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 1471
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->k()V

    .line 1473
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->i:Z

    .line 1474
    invoke-direct {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->N()V

    .line 1475
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 1476
    return-void
.end method

.method protected t()V
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1224
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lcom/snapchat/android/model/StoryLibrary;

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryLibrary;->q()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1225
    return-void
.end method

.method public u()V
    .locals 2

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1253
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lcom/snapchat/android/model/StoryLibrary;

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryLibrary;->l()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1254
    return-void
.end method

.method protected v()V
    .locals 1

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->q()V

    .line 1266
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->w()V

    .line 1267
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->notifyDataSetChanged()V

    .line 1268
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoriesFragment;->n()V

    .line 1269
    return-void
.end method

.method protected w()V
    .locals 2

    .prologue
    .line 1273
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->h:Z

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->s:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1275
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->f:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1277
    :cond_0
    return-void
.end method

.method protected x()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 1347
    .line 1349
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lcom/snapchat/android/model/StoryLibrary;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-virtual {v1}, Lcom/snapchat/android/model/RecentStoryCollection;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->c(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v5

    .line 1350
    if-nez v5, :cond_0

    .line 1351
    iput-object v10, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lcom/snapchat/android/model/RecentStoryCollection;

    .line 1388
    :goto_0
    return-void

    :cond_0
    move v1, v2

    move v3, v2

    move v4, v2

    .line 1355
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1356
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-virtual {v0}, Lcom/snapchat/android/model/RecentStoryCollection;->a()Ljava/lang/String;

    move-result-object v0

    .line 1358
    if-nez v3, :cond_1

    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-virtual {v6}, Lcom/snapchat/android/model/RecentStoryCollection;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1359
    const/4 v3, 0x1

    .line 1362
    :cond_1
    iget-object v6, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->c:Lcom/snapchat/android/model/StoryLibrary;

    invoke-virtual {v6, v0}, Lcom/snapchat/android/model/StoryLibrary;->c(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    .line 1363
    if-nez v0, :cond_3

    .line 1355
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1367
    :cond_3
    invoke-virtual {v5}, Lcom/snapchat/android/model/StoryCollection;->Q()Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    move-result-object v6

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->Q()Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    move-result-object v7

    if-ne v6, v7, :cond_4

    .line 1369
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 1370
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ae()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/snapchat/android/model/StoryCollection;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ae()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    .line 1371
    add-int/lit8 v4, v1, 0x1

    goto :goto_2

    .line 1373
    :cond_4
    invoke-virtual {v5}, Lcom/snapchat/android/model/StoryCollection;->Q()Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->ordinal()I

    move-result v6

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->Q()Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection$StoriesFragmentRecentsPriority;->ordinal()I

    move-result v0

    if-le v6, v0, :cond_2

    .line 1375
    add-int/lit8 v4, v1, 0x1

    goto :goto_2

    .line 1379
    :cond_5
    if-nez v3, :cond_7

    .line 1380
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v4, v0, :cond_6

    .line 1381
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1383
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lcom/snapchat/android/model/RecentStoryCollection;

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1386
    :cond_7
    iput-object v10, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->a:Lcom/snapchat/android/model/RecentStoryCollection;

    goto/16 :goto_0
.end method

.method protected y()V
    .locals 5

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/RecentStoryCollection;

    .line 1393
    invoke-virtual {v0}, Lcom/snapchat/android/model/RecentStoryCollection;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1394
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/snapchat/android/model/RecentStoryCollection;->a(ILcom/snapchat/android/model/ReceivedSnap;Z)I

    goto :goto_0

    .line 1398
    :cond_1
    return-void
.end method
