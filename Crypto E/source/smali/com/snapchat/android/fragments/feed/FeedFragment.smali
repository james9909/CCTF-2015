.class public Lcom/snapchat/android/fragments/feed/FeedFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;
.implements Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;
.implements Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/feed/FeedFragment$17;
    }
.end annotation


# static fields
.field private static b:Lcom/snapchat/android/service/SnapchatServiceManager;


# instance fields
.field private B:Landroid/view/View;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/view/View;

.field private F:Landroid/view/View;

.field private G:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private H:Lcom/snapchat/android/model/chat/ChatConversation;

.field private I:Landroid/view/inputmethod/InputMethodManager;

.field private J:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

.field private K:Ljava/lang/Runnable;

.field private L:Landroid/view/MotionEvent;

.field protected a:Z

.field private final c:Lcom/squareup/otto/Bus;

.field private final d:Lcom/snapchat/android/model/chat/ChatConversationManager;

.field private final e:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private final f:Lcom/snapchat/android/analytics/MediaViewAnalytics;

.field private final g:Lcom/snapchat/android/analytics/CameraEventAnalytics;

.field private final h:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private final i:Lcom/snapchat/android/util/system/Clock;

.field private final j:Lcom/snapchat/android/model/UserPrefs;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

.field private n:Landroid/widget/ListView;

.field private o:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

.field private p:Landroid/os/Handler;

.field private q:Lcom/snapchat/android/model/User;

.field private r:Lcom/snapchat/android/ui/UpgradePromptView;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/EditText;

.field private v:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/feed/FeedFragment;->b:Lcom/snapchat/android/service/SnapchatServiceManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    .line 167
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v4

    invoke-static {}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->a()Lcom/snapchat/android/analytics/MediaViewAnalytics;

    move-result-object v5

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v6

    new-instance v7, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v7}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->a()Lcom/snapchat/android/model/UserPrefs;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/fragments/feed/FeedFragment;-><init>(Lcom/squareup/otto/Bus;Lcom/snapchat/android/model/chat/ChatConversationManager;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lcom/snapchat/android/analytics/MediaViewAnalytics;Lcom/snapchat/android/analytics/NetworkAnalytics;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/model/UserPrefs;)V

    .line 170
    return-void
.end method

.method constructor <init>(Lcom/squareup/otto/Bus;Lcom/snapchat/android/model/chat/ChatConversationManager;Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lcom/snapchat/android/analytics/MediaViewAnalytics;Lcom/snapchat/android/analytics/NetworkAnalytics;Lcom/snapchat/android/util/system/Clock;Lcom/snapchat/android/model/UserPrefs;)V
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
    .line 176
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 288
    new-instance v0, Lcom/snapchat/android/fragments/feed/FeedFragment$7;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$7;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->K:Ljava/lang/Runnable;

    .line 177
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->c:Lcom/squareup/otto/Bus;

    .line 178
    iput-object p2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/snapchat/android/model/chat/ChatConversationManager;

    .line 179
    iput-object p3, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->e:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 180
    iput-object p4, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->g:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 181
    iput-object p5, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->f:Lcom/snapchat/android/analytics/MediaViewAnalytics;

    .line 182
    iput-object p6, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->h:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 183
    iput-object p7, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->i:Lcom/snapchat/android/util/system/Clock;

    .line 184
    iput-object p8, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->j:Lcom/snapchat/android/model/UserPrefs;

    .line 185
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->E:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 864
    :goto_0
    return-void

    .line 861
    :cond_0
    const v0, 0x7f0a01d0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 862
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 863
    const v1, 0x7f0a01dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->E:Landroid/view/View;

    goto :goto_0
.end method

.method private B()V
    .locals 2

    .prologue
    .line 943
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->r:Lcom/snapchat/android/ui/UpgradePromptView;

    if-eqz v0, :cond_0

    .line 951
    :goto_0
    return-void

    .line 946
    :cond_0
    const v0, 0x7f0a01d1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 947
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 948
    const v0, 0x7f0a01e1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/UpgradePromptView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->r:Lcom/snapchat/android/ui/UpgradePromptView;

    .line 949
    const v0, 0x7f0a01e4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->l:Landroid/widget/TextView;

    .line 950
    const v0, 0x7f0a01e3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->k:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private C()V
    .locals 2

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 977
    :goto_0
    return-void

    .line 957
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->B()V

    .line 959
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->j:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aB()Ljava/lang/String;

    move-result-object v0

    .line 961
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 962
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->l:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$15;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$15;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 972
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->j:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->az()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 973
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->j:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v1}, Lcom/snapchat/android/model/UserPrefs;->aA()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->r:Lcom/snapchat/android/ui/UpgradePromptView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/UpgradePromptView;->a()V

    goto :goto_0
.end method

.method private D()V
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->r:Lcom/snapchat/android/ui/UpgradePromptView;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->r:Lcom/snapchat/android/ui/UpgradePromptView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/UpgradePromptView;->b()V

    .line 988
    :cond_0
    return-void
.end method

.method private E()Landroid/view/View;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 992
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v2

    .line 994
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 995
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 996
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v0

    const-string v3, "teamsnapchat"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1001
    return-object v0

    .line 994
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/analytics/CameraEventAnalytics;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->g:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    return-object v0
.end method

.method private a(FF)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 867
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v1

    .line 868
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    .line 869
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    :goto_1
    return-object v0

    .line 868
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 869
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/feed/FeedFragment;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->H:Lcom/snapchat/android/model/chat/ChatConversation;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 689
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 690
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    move v1, v2

    .line 691
    :goto_0
    if-gt v1, v3, :cond_0

    .line 692
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 693
    instance-of v4, v0, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v4, :cond_1

    .line 694
    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 695
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 697
    iget-object v2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-interface {v2, v1, v0, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 702
    :cond_0
    return-void

    .line 691
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;)Z
    .locals 4
    .parameter

    .prologue
    .line 823
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->H:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->g:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->DOUBLE_TAP:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    .line 825
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 831
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$14;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$14;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 838
    const/4 v0, 0x0

    return v0

    .line 828
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->H:Lcom/snapchat/android/model/chat/ChatConversation;

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/feed/FeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->r()V

    return-void
.end method

.method private b(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 3
    .parameter

    .prologue
    .line 873
    if-nez p1, :cond_0

    .line 876
    :goto_0
    return-void

    .line 874
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lcom/snapchat/android/model/User;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FriendUtils;->a(Ljava/lang/String;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 875
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->c:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/snapchat/android/util/eventbus/ChatSwipeStartedEvent;

    invoke-direct {v2, v0}, Lcom/snapchat/android/util/eventbus/ChatSwipeStartedEvent;-><init>(Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->D:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/feed/FeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->q()V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/feed/FeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->t()V

    return-void
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/model/User;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lcom/snapchat/android/model/User;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->e:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/analytics/MediaViewAnalytics;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->f:Lcom/snapchat/android/analytics/MediaViewAnalytics;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/feed/FeedFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->K:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic k(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->p:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/fragments/feed/FeedAdapter;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lcom/snapchat/android/model/User;

    .line 202
    const v0, 0x7f0a01c8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->C:Landroid/view/View;

    .line 205
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->C:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$1;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->C:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$2;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 224
    const v0, 0x7f0a01c7

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$3;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    const v0, 0x7f0a01cc

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->s:Landroid/view/View;

    .line 232
    const v0, 0x7f0a01cb

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->t:Landroid/view/View;

    .line 234
    new-instance v0, Lcom/snapchat/android/fragments/feed/FeedFragment$4;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$4;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->G:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 249
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->s:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$5;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->t:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$6;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->p()V

    .line 266
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->n()V

    .line 267
    return-void
.end method

.method static synthetic m(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->J:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    return-object v0
.end method

.method static synthetic n(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/squareup/otto/Bus;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->c:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->o()V

    .line 272
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->F:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->F:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->c(Landroid/view/View;I)V

    goto :goto_0
.end method

.method static synthetic o(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method private o()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 283
    :cond_0
    const v0, 0x7f0a01cf

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 284
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 285
    const v1, 0x7f0a01de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->F:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic p(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->C:Landroid/view/View;

    return-object v0
.end method

.method private p()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 302
    const v0, 0x7f0a01cd

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->o:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    .line 304
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->o:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$8;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->setPtrHandler(Lin/srain/cube/views/ptr/PtrHandler;)V

    .line 315
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->p:Landroid/os/Handler;

    .line 318
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->e()Lcom/snapchat/android/util/ListViewAdapterList;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/chat/FeedIconManager;->a()Lcom/snapchat/android/chat/FeedIconManager;

    move-result-object v2

    invoke-static {v1, v0, v2, p0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->a(Landroid/content/Context;Lcom/snapchat/android/util/ListViewAdapterList;Lcom/snapchat/android/chat/FeedIconManager;Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;)Lcom/snapchat/android/fragments/feed/FeedAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    .line 321
    const v0, 0x7f0a01ce

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    .line 323
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 324
    const v1, 0x7f04004a

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Landroid/view/View;

    .line 325
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$9;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 334
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 335
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 337
    new-instance v0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    sget-object v2, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;->b:Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-static {}, Lcom/snapchat/android/chat/FeedIconManager;->a()Lcom/snapchat/android/chat/FeedIconManager;

    move-result-object v6

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;-><init>(Landroid/widget/ListView;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;Landroid/content/Context;Lcom/snapchat/android/fragments/feed/FeedAdapter;Lcom/snapchat/android/chat/FeedIconManager;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->J:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    .line 340
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->J:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    invoke-virtual {v0, v7}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->b(Z)V

    .line 341
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->J:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 345
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->J:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a()Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    new-instance v2, Lcom/snapchat/android/fragments/feed/FeedFragment$10;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment$10;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 375
    return-void
.end method

.method static synthetic q(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->G:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 386
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    if-le v0, v1, :cond_0

    .line 388
    invoke-static {p0}, Lcom/snapchat/android/api/chat/LoadFeedPageTask;->a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$LoadFeedPageTaskInterface;)V

    goto :goto_0
.end method

.method static synthetic r(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->v:Landroid/view/View;

    return-object v0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->D:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 396
    :cond_0
    const v0, 0x7f0a01c9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 397
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 398
    const v1, 0x7f0a01df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->D:Landroid/widget/TextView;

    .line 399
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->D:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$11;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$11;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic s(Lcom/snapchat/android/fragments/feed/FeedFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->u:Landroid/widget/EditText;

    return-object v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->u:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 413
    :cond_0
    const v0, 0x7f0a01ca

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 414
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 415
    const v0, 0x7f0a01e0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->u:Landroid/widget/EditText;

    .line 416
    const v0, 0x7f0a0034

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->v:Landroid/view/View;

    .line 418
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->u:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$12;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$12;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 439
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->v:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$13;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$13;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic t(Lcom/snapchat/android/fragments/feed/FeedFragment;)Lcom/snapchat/android/model/UserPrefs;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->j:Lcom/snapchat/android/model/UserPrefs;

    return-object v0
.end method

.method private t()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 448
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->s()V

    .line 450
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->t:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->C:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->D:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/snapchat/android/util/ViewUtils;->c(Landroid/view/View;I)V

    .line 454
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->u:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->u:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 456
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->I:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->u:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->a:Z

    .line 458
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->h()V

    .line 459
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->v()V

    .line 460
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->F:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/snapchat/android/util/ViewUtils;->c(Landroid/view/View;I)V

    .line 462
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->setNotifyOnChange(Z)V

    .line 463
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->e()Lcom/snapchat/android/util/ListViewAdapterList;

    move-result-object v0

    .line 464
    invoke-static {}, Lcom/snapchat/android/chat/ConversationUtils;->a()Lcom/snapchat/android/util/ListViewAdapterList;

    move-result-object v1

    .line 467
    invoke-virtual {v0, v4}, Lcom/snapchat/android/util/ListViewAdapterList;->a(Landroid/widget/BaseAdapter;)V

    .line 468
    invoke-virtual {v1, v4}, Lcom/snapchat/android/util/ListViewAdapterList;->a(Landroid/widget/BaseAdapter;)V

    .line 469
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->clear()V

    .line 470
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->addAll(Ljava/util/Collection;)V

    .line 471
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->notifyDataSetChanged()V

    .line 472
    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 475
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->C:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->u:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->u:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->u:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 481
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->u:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->E:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->c(Landroid/view/View;I)V

    .line 484
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->I:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 485
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->a:Z

    .line 486
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->h()V

    .line 487
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->n()V

    .line 489
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->e()Lcom/snapchat/android/util/ListViewAdapterList;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/ListViewAdapterList;->a(Landroid/widget/BaseAdapter;)V

    .line 492
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->j()V

    .line 493
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 521
    if-nez v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 522
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 523
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private w()Z
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private x()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 541
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->H()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "makeSyncRequest"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 543
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->P()Z

    move-result v1

    .line 544
    const-string v2, "FeedFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Make Sync syncreq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 546
    :cond_0
    const-string v0, "FeedFragment"

    const-string v1, "Spinning off Sync request!"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lcom/snapchat/android/model/User;

    invoke-static {v0}, Lcom/snapchat/android/api/SyncAllTask;->b(Lcom/snapchat/android/model/User;)V

    .line 550
    invoke-static {v5}, Lcom/snapchat/android/model/UserPrefs;->c(Z)V

    .line 553
    :cond_1
    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->a:Z

    if-eqz v0, :cond_0

    .line 666
    invoke-static {}, Lcom/snapchat/android/chat/ConversationUtils;->a()Lcom/snapchat/android/util/ListViewAdapterList;

    move-result-object v0

    .line 667
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->clear()V

    .line 668
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->addAll(Ljava/util/Collection;)V

    .line 669
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->notifyDataSetChanged()V

    .line 673
    :goto_0
    return-void

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;)F
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1087
    if-nez p1, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return v0

    .line 1088
    :cond_1
    const v1, 0x7f0a01d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1089
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 3
    .parameter

    .prologue
    .line 800
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/feed/FeedFragment;->a(FF)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 801
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 802
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->L:Landroid/view/MotionEvent;

    .line 804
    if-eqz v0, :cond_0

    .line 805
    invoke-static {}, Lcom/snapchat/android/util/SnapListItemHandler;->a()Lcom/snapchat/android/util/SnapListItemHandler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/SnapListItemHandler;->a(Lcom/snapchat/android/model/chat/ChatConversation;Landroid/content/Context;)V

    .line 809
    :cond_0
    return-object v0
.end method

.method public a(Landroid/view/View;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1118
    return-void
.end method

.method public a(Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0a01d4

    const v6, 0x7f0a0102

    const/4 v5, 0x4

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 496
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 497
    if-nez v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 499
    :cond_0
    sget-object v1, Lcom/snapchat/android/fragments/feed/FeedFragment$17;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/api/chat/LoadFeedPageTask$TaskStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 501
    :pswitch_0
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 502
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 508
    :pswitch_1
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 509
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->B:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 515
    :pswitch_2
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->v()V

    goto :goto_0

    .line 499
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

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
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 848
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->a:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->A()V

    .line 850
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->E:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 854
    :goto_0
    return-void

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->E:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->c(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;FFFF)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1055
    if-nez p1, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return v0

    .line 1056
    :cond_1
    const v1, 0x7f0a01d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1057
    if-eqz v1, :cond_0

    .line 1060
    iget-object v2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->L:Landroid/view/MotionEvent;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    .line 1061
    invoke-direct {p0, p4, p5}, Lcom/snapchat/android/fragments/feed/FeedFragment;->a(FF)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/snapchat/android/fragments/feed/FeedFragment;->b(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 1062
    iput-object v3, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->L:Landroid/view/MotionEvent;

    .line 1066
    :cond_2
    const/high16 v2, 0x3fc0

    mul-float/2addr v2, p2

    .line 1068
    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/feed/FeedFragment;->b(Landroid/view/View;)I

    move-result v3

    .line 1070
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/feed/FeedFragment;->a(Landroid/view/View;)F

    move-result v4

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-gez v4, :cond_0

    .line 1076
    :cond_3
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v4, v3

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/feed/FeedFragment;->a(Landroid/view/View;)F

    move-result v0

    int-to-float v4, v3

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    .line 1077
    int-to-float v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1082
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1079
    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1
.end method

.method public b(Landroid/view/View;)I
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 1098
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1099
    if-nez v1, :cond_1

    .line 1107
    :cond_0
    :goto_0
    return v0

    .line 1100
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 1101
    if-eqz v2, :cond_0

    .line 1102
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1103
    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1104
    iget v2, v0, Landroid/util/TypedValue;->type:I

    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v2, v3}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    .line 1106
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1107
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->a:Z

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 814
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 815
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 816
    iget-object v2, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    .line 818
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 819
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/AllowAccessToChatFragmentEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/AllowAccessToChatFragmentEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1113
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/UserSwipedIntoChatEvent;

    invoke-direct {v1, p1}, Lcom/snapchat/android/util/eventbus/UserSwipedIntoChatEvent;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1114
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 1122
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->y:Z

    return v0
.end method

.method protected d_()V
    .locals 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->e:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->f:Lcom/snapchat/android/analytics/MediaViewAnalytics;

    const-string v1, "feed"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->d(Ljava/lang/String;)V

    .line 1009
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1011
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->notifyDataSetChanged()V

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->C:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->D:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->c(Landroid/view/View;I)V

    .line 1017
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->a:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->u()V

    .line 1019
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->h()V

    .line 1021
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->D()V

    .line 1022
    return-void
.end method

.method public e(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1028
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->a:Z

    if-eqz v0, :cond_0

    .line 534
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->u()V

    .line 535
    const/4 v0, 0x1

    .line 537
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()V
    .locals 3

    .prologue
    .line 706
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 707
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    .line 708
    if-eqz v0, :cond_0

    .line 710
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->e:Z

    .line 711
    iget-object v2, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    .line 712
    iget-object v2, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 713
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    .line 715
    :cond_1
    iget-object v2, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAnimation()V

    .line 716
    iget-object v0, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    goto :goto_0

    .line 719
    :cond_2
    return-void
.end method

.method protected i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 765
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v1

    .line 766
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->g()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->g()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->h:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->FEED:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;)V

    .line 771
    :cond_1
    return-void
.end method

.method protected k()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 927
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->ak:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/snapchat/android/util/PreferenceUtils;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->br:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Upgrade your app"

    invoke-static {v0, v2}, Lcom/snapchat/android/util/PreferenceUtils;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->bq:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0c0123

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/snapchat/android/util/PreferenceUtils;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_0
    :goto_0
    return v1

    .line 935
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->i:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v0}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v4

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->j:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aC()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->j:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aD()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    move v0, v1

    .line 938
    :goto_1
    iget-object v3, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->j:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v3}, Lcom/snapchat/android/model/UserPrefs;->az()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->j:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v3}, Lcom/snapchat/android/model/UserPrefs;->ax()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 935
    goto :goto_1
.end method

.method public onChangeWindowMarginEvent(Lcom/snapchat/android/util/eventbus/ChangeWindowMarginEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1032
    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/ChangeWindowMarginEvent;->a:Z

    if-eqz v0, :cond_0

    .line 1033
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 1037
    :goto_0
    return-void

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->x:Landroid/view/View;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClosePtrEvent(Lcom/snapchat/android/util/eventbus/ClosePtrEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->o:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->a()V

    .line 1128
    return-void
.end method

.method public onConversationsUpdatedFromServer(Lcom/snapchat/android/util/eventbus/ConversationListUpdatedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->y()V

    .line 658
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->n()V

    .line 659
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 190
    const v0, 0x7f040049

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->x:Landroid/view/View;

    .line 191
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 192
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->I:Landroid/view/inputmethod/InputMethodManager;

    .line 193
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->l()V

    .line 194
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 195
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onFeedIconRefreshedEvent(Lcom/snapchat/android/util/eventbus/FeedIconRefreshedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->y()V

    .line 628
    return-void
.end method

.method public onFeedRefreshedEvent(Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 733
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 734
    if-nez v0, :cond_0

    .line 753
    :goto_0
    return-void

    .line 735
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->G:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 736
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->b()I

    .line 737
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->y()V

    .line 739
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 740
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 741
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 742
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;->a()Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;->d:Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent$RefreshError;

    if-ne v0, v1, :cond_1

    .line 744
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->F()V

    .line 745
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/ActivityLauncher;->a(Landroid/app/Activity;)V

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->o:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    if-eqz v0, :cond_2

    .line 749
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->o:Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ptr/SnapchatPtrFrameLayout;->e()V

    .line 750
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->e:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "PULL_TO_REFRESH"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->c(Ljava/lang/String;)V

    .line 752
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->n()V

    goto :goto_0
.end method

.method public onFeedTimerChangeEvent(Lcom/snapchat/android/util/eventbus/FeedTimerChangeEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 677
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/FeedTimerChangeEvent;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 679
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/FeedTimerChangeEvent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->a(Ljava/lang/String;)V

    .line 682
    :cond_0
    return-void
.end method

.method public onHideSnapEvent(Lcom/snapchat/android/util/eventbus/HideSnapMessageEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->G()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0a01c5

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/feed/FeedFragment;->d(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 602
    return-void
.end method

.method public onLoadSnapMediaEvent(Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 757
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent;->a:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    sget-object v1, Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;->b:Lcom/snapchat/android/util/eventbus/LoadSnapMediaEvent$LoadSnapMediaEventType;

    if-ne v0, v1, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->i()V

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->notifyDataSetChanged()V

    .line 761
    return-void
.end method

.method public onLockScreenOpenedEvent(Lcom/snapchat/android/util/eventbus/LockScreenOpenedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->onResume()V

    .line 597
    return-void
.end method

.method public onNewChatMessageReceived(Lcom/snapchat/android/util/eventbus/NewChatMessageReceivedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->y()V

    .line 643
    return-void
.end method

.method public onRefreshOnFriendActionEvent(Lcom/snapchat/android/util/eventbus/RefreshOnFriendActionEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->y()V

    .line 633
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 563
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 564
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 566
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lcom/snapchat/android/model/User;

    .line 568
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 569
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 570
    if-nez v0, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 576
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    sget-object v0, Lcom/snapchat/android/fragments/feed/FeedFragment;->b:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/service/SnapchatServiceManager;->c(Landroid/content/Context;)I

    .line 582
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->x()V

    .line 584
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->notifyDataSetChanged()V

    .line 585
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    goto :goto_0
.end method

.method public onRetryFailedSnapEvent(Lcom/snapchat/android/util/eventbus/RetryFailedSnapEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 637
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->notifyDataSetChanged()V

    .line 638
    return-void
.end method

.method public onScrollFeedToTopEvent(Lcom/snapchat/android/util/eventbus/ScrollFeedToTopEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->n:Landroid/widget/ListView;

    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedFragment$16;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/feed/FeedFragment$16;-><init>(Lcom/snapchat/android/fragments/feed/FeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1051
    return-void
.end method

.method public onSendSnapRequestCompleteEvent(Lcom/snapchat/android/util/eventbus/SendSnapRequestCompleteEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->notifyDataSetChanged()V

    .line 648
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1132
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->bp:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->C()V

    .line 1135
    :cond_0
    return-void
.end method

.method public onSnapSelectedForReplayEvent(Lcom/snapchat/android/util/eventbus/SnapSelectedForReplayEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 723
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->notifyDataSetChanged()V

    .line 724
    return-void
.end method

.method public onSnapSelectedForRetryEvent(Lcom/snapchat/android/util/eventbus/SnapSelectedForRetryEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 728
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->notifyDataSetChanged()V

    .line 729
    return-void
.end method

.method public onSnapSendInitiated(Lcom/snapchat/android/util/eventbus/SnapSendInitiatedEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 652
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->notifyDataSetChanged()V

    .line 653
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 557
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStart()V

    .line 558
    invoke-static {p0}, Lcom/snapchat/android/model/UserPrefs;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 559
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 590
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStop()V

    .line 591
    invoke-static {p0}, Lcom/snapchat/android/model/UserPrefs;->b(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 592
    return-void
.end method

.method public onSyncAllCompletedEvent(Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;)V
    .locals 5
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 775
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v1

    .line 778
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->h:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v2, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->FEED:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;->a()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 782
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->g()Lcom/snapchat/android/model/ReceivedSnap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->h:Lcom/snapchat/android/analytics/NetworkAnalytics;

    sget-object v1, Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;->FEED:Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;

    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/SyncAllCompletedEvent;->a()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/NetworkAnalytics;->b(Lcom/snapchat/android/analytics/NetworkAnalytics$PageContext;Ljava/util/UUID;)V

    .line 787
    :cond_1
    return-void
.end method

.method public onUpdateFeedEvent(Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/UpdateFeedEvent;->a()I

    .line 620
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->y()V

    .line 621
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->q()V

    .line 622
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->n()V

    .line 623
    return-void
.end method

.method public onUserLoadedEvent(Lcom/snapchat/android/util/eventbus/UserLoadedEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 606
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/UserLoadedEvent;->a:Lcom/snapchat/android/model/User;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lcom/snapchat/android/model/User;

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/UserLoadedEvent;->a:Lcom/snapchat/android/model/User;

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->q:Lcom/snapchat/android/model/User;

    .line 610
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->x()V

    .line 613
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->v()V

    .line 614
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->n()V

    .line 615
    return-void
.end method

.method protected s_()V
    .locals 3

    .prologue
    .line 880
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 881
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->f:Lcom/snapchat/android/analytics/MediaViewAnalytics;

    const-string v1, "feed"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/MediaViewAnalytics;->b(Ljava/lang/String;)V

    .line 882
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->s_()V

    .line 884
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 885
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->c:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/CancelReplyEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/CancelReplyEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 886
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setVolumeControlStream(I)V

    .line 887
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v0, :cond_0

    .line 888
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->a()Lcom/snapchat/android/analytics/NotificationAnalytics;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;->FEED:Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/NotificationAnalytics;->a(Lcom/snapchat/android/analytics/NotificationAnalytics$NotificationDestinationType;)V

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->J:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->J:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->c(Z)V

    .line 896
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 897
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->x:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 899
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->E()Landroid/view/View;

    move-result-object v0

    .line 900
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->J:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    if-eqz v1, :cond_2

    .line 901
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->J:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a(Landroid/view/View;I)V

    .line 909
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->d:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->k()V

    .line 911
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    if-eqz v0, :cond_3

    .line 912
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->notifyDataSetChanged()V

    .line 915
    :cond_3
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/feed/FeedFragment;->a:Z

    if-eqz v0, :cond_4

    .line 916
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->t()V

    .line 920
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->C()V

    .line 922
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->b()J

    .line 923
    return-void

    .line 918
    :cond_4
    invoke-direct {p0}, Lcom/snapchat/android/fragments/feed/FeedFragment;->u()V

    goto :goto_0
.end method
