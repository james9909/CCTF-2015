.class public Lcom/snapchat/android/SnapPreviewFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$PostToStoryCheckedCallback;
.implements Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewInterface;
.implements Lcom/snapchat/android/ui/SwipeController$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;
    }
.end annotation


# instance fields
.field private B:Landroid/view/View;

.field private C:I

.field private D:Landroid/view/View;

.field private E:Landroid/widget/CheckBox;

.field private F:Landroid/view/View;

.field private G:Landroid/view/View;

.field private H:Z

.field private I:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

.field private J:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

.field private K:Landroid/widget/ImageButton;

.field private L:Z

.field private M:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/snapchat/android/model/PostToStory;",
            ">;"
        }
    .end annotation
.end field

.field private N:Landroid/view/View;

.field private O:Lcom/snapchat/android/ui/SendToBottomPanelView;

.field private P:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

.field private Q:Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;

.field private R:Z

.field private S:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private final T:Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;

.field private U:Lcom/snapchat/android/model/User;

.field private V:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;

.field private final W:Lcom/snapchat/android/controller/SendSnapController;

.field private final X:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

.field private final Y:Lcom/snapchat/android/analytics/NetworkAnalytics;

.field private final Z:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

.field protected a:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;

.field private final aa:Lcom/snapchat/android/util/media/VideoMetadataFetcher;

.field private final ab:Lcom/snapchat/android/location/GeofilterManager;

.field private ac:Z

.field private ad:Landroid/os/Handler;

.field private ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

.field private af:J

.field private b:Lcom/snapchat/android/ui/SnapEditorView;

.field private c:Lcom/snapchat/android/ui/CanvasViewBase;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Z

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/widget/ImageButton;

.field private q:I

.field private r:Landroid/content/SharedPreferences;

.field private s:Lcom/snapchat/android/model/AnnotatedMediabryo;

.field private t:Lnet/simonvt/numberpicker/SnapchatTimePicker;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 171
    new-instance v1, Lcom/snapchat/android/controller/SendSnapController;

    invoke-direct {v1}, Lcom/snapchat/android/controller/SendSnapController;-><init>()V

    invoke-static {}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->a()Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    move-result-object v2

    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;

    invoke-direct {v4}, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;-><init>()V

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->a()Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    move-result-object v5

    new-instance v6, Lcom/snapchat/android/util/media/VideoMetadataFetcher;

    invoke-direct {v6}, Lcom/snapchat/android/util/media/VideoMetadataFetcher;-><init>()V

    invoke-static {}, Lcom/snapchat/android/location/GeofilterManager;->a()Lcom/snapchat/android/location/GeofilterManager;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/SnapPreviewFragment;-><init>(Lcom/snapchat/android/controller/SendSnapController;Lcom/snapchat/android/analytics/SnapCaptureAnalytics;Lcom/snapchat/android/analytics/NetworkAnalytics;Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;Lcom/snapchat/android/camera/transcoding/VideoTranscoder;Lcom/snapchat/android/util/media/VideoMetadataFetcher;Lcom/snapchat/android/location/GeofilterManager;)V

    .line 174
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/controller/SendSnapController;Lcom/snapchat/android/analytics/SnapCaptureAnalytics;Lcom/snapchat/android/analytics/NetworkAnalytics;Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;Lcom/snapchat/android/camera/transcoding/VideoTranscoder;Lcom/snapchat/android/util/media/VideoMetadataFetcher;Lcom/snapchat/android/location/GeofilterManager;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 121
    iput-boolean v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->g:Z

    .line 123
    iput-boolean v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->h:Z

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->H:Z

    .line 148
    iput-boolean v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->L:Z

    .line 149
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->M:Ljava/util/LinkedHashSet;

    .line 1248
    iput-boolean v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->ac:Z

    .line 1304
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ad:Landroid/os/Handler;

    .line 1339
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->af:J

    .line 181
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment;->W:Lcom/snapchat/android/controller/SendSnapController;

    .line 182
    iput-object p2, p0, Lcom/snapchat/android/SnapPreviewFragment;->X:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    .line 183
    iput-object p3, p0, Lcom/snapchat/android/SnapPreviewFragment;->Y:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 184
    iput-object p4, p0, Lcom/snapchat/android/SnapPreviewFragment;->T:Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;

    .line 185
    iput-object p5, p0, Lcom/snapchat/android/SnapPreviewFragment;->Z:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    .line 186
    iput-object p6, p0, Lcom/snapchat/android/SnapPreviewFragment;->aa:Lcom/snapchat/android/util/media/VideoMetadataFetcher;

    .line 187
    iput-object p7, p0, Lcom/snapchat/android/SnapPreviewFragment;->ab:Lcom/snapchat/android/location/GeofilterManager;

    .line 188
    return-void
.end method

.method private A()V
    .locals 5

    .prologue
    .line 953
    const-string v2, ""

    .line 954
    const-string v1, ""

    .line 956
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    instance-of v0, v0, Lcom/snapchat/android/model/Snapbryo;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    check-cast v0, Lcom/snapchat/android/model/Snapbryo;

    .line 958
    invoke-virtual {v0}, Lcom/snapchat/android/model/Snapbryo;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/PostToStory;

    .line 959
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

    .line 960
    const-string v0, ", "

    move-object v2, v1

    move-object v1, v0

    .line 961
    goto :goto_0

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 965
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

    .line 966
    const-string v1, ", "

    goto :goto_1

    .line 968
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setText(Ljava/lang/String;)V

    .line 969
    return-void
.end method

.method private B()Landroid/app/AlertDialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 977
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 978
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 979
    const v2, 0x7f04006c

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 980
    const v0, 0x7f0a0250

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 981
    const v3, 0x7f0c012e

    invoke-virtual {p0, v3}, Lcom/snapchat/android/SnapPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 982
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 984
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0c001e

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0c003d

    invoke-virtual {p0, v3}, Lcom/snapchat/android/SnapPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0c0001

    invoke-virtual {p0, v3}, Lcom/snapchat/android/SnapPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/SnapPreviewFragment$16;

    invoke-direct {v4, p0, v2}, Lcom/snapchat/android/SnapPreviewFragment$16;-><init>(Lcom/snapchat/android/SnapPreviewFragment;Landroid/view/View;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1000
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private C()V
    .locals 3

    .prologue
    .line 1007
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ac:Z

    .line 1008
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1009
    if-nez v0, :cond_0

    .line 1042
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->v:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1011
    new-instance v1, Lcom/snapchat/android/SnapPreviewFragment$17;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapPreviewFragment$17;-><init>(Lcom/snapchat/android/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1041
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private D()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1133
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->k()V

    .line 1134
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    instance-of v0, v0, Lcom/snapchat/android/model/Snapbryo;

    if-nez v0, :cond_0

    .line 1154
    :goto_0
    return-void

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    check-cast v0, Lcom/snapchat/android/model/Snapbryo;

    .line 1137
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->N:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1138
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/snapchat/android/SnapPreviewFragment;->M:Ljava/util/LinkedHashSet;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo;->a(Ljava/util/ArrayList;)V

    .line 1145
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->P:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    if-eqz v1, :cond_2

    move v1, v2

    .line 1147
    :goto_2
    const-string v3, "PREVIEW_SCREEN"

    invoke-static {v0, v1, v1, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;ZZLjava/lang/String;)V

    .line 1148
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->W:Lcom/snapchat/android/controller/SendSnapController;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/controller/SendSnapController;->a(Lcom/snapchat/android/model/Snapbryo;)V

    .line 1149
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->Y:Lcom/snapchat/android/analytics/NetworkAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/NetworkAnalytics;->e()V

    .line 1150
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StorySnapPostedFromSnapPreviewEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/StorySnapPostedFromSnapPreviewEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1153
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 1140
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    invoke-static {}, Lcom/snapchat/android/model/MyPostToStory;->a()Lcom/snapchat/android/model/MyPostToStory;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo;->a(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1145
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private E()V
    .locals 3

    .prologue
    .line 1157
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->k()V

    .line 1158
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    if-nez v0, :cond_0

    .line 1167
    :goto_0
    return-void

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->J:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-eqz v0, :cond_1

    .line 1163
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1166
    :cond_1
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SnapReadyForRecipientsEvent;

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SnapReadyForRecipientsEvent;-><init>(Lcom/snapchat/android/model/Mediabryo;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private F()V
    .locals 2

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->f()V

    .line 1171
    iget-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->g:Z

    .line 1172
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    iget-boolean v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->g:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->setDrawingEnabled(Z)V

    .line 1173
    iget-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->g:Z

    invoke-direct {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->a(Z)V

    .line 1174
    return-void

    .line 1171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private K()V
    .locals 3

    .prologue
    .line 1177
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1179
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    if-nez v1, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1180
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SnapEditorView;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1181
    if-eqz v1, :cond_0

    .line 1183
    new-instance v2, Lcom/snapchat/android/util/cache/SaveImageToGalleryTask;

    invoke-direct {v2, v0, v1}, Lcom/snapchat/android/util/cache/SaveImageToGalleryTask;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/util/cache/SaveImageToGalleryTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private L()V
    .locals 3

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1188
    :goto_0
    new-instance v1, Lcom/snapchat/android/util/cache/SaveVideoToGalleryTask;

    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/snapchat/android/util/cache/SaveVideoToGalleryTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/cache/SaveVideoToGalleryTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1189
    return-void

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->I()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private M()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1192
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->c()V

    .line 1193
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->getNumberOfStrokes()I

    move-result v0

    if-lez v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1195
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->D:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getLastColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1200
    :goto_0
    return-void

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1198
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private N()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 1210
    new-array v3, v6, [Ljava/lang/String;

    move v1, v2

    .line 1211
    :goto_0
    if-ge v1, v6, :cond_1

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "        "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v0, 0x9

    if-ne v1, v0, :cond_0

    const-string v0, "  "

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 1211
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1212
    :cond_0
    const-string v0, ""

    goto :goto_1

    .line 1215
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->t:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0, v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setMinValue(I)V

    .line 1216
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->t:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    array-length v1, v3

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setMaxValue(I)V

    .line 1217
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->t:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0, v3}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->t:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0, v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setFocusable(Z)V

    .line 1219
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->t:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0, v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setFocusableInTouchMode(Z)V

    .line 1220
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->t:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0, v2}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setWrapSelectorWheel(Z)V

    .line 1221
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->t:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->P()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setValue(I)V

    .line 1223
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->O()V

    .line 1225
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->t:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    new-instance v1, Lcom/snapchat/android/SnapPreviewFragment$18;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapPreviewFragment$18;-><init>(Lcom/snapchat/android/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->setOnTimeSelectedListener(Lnet/simonvt/numberpicker/SnapchatTimePicker$OnTimeSelectedListener;)V

    .line 1231
    return-void
.end method

.method private O()V
    .locals 2

    .prologue
    .line 1234
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->P()I

    move-result v0

    .line 1235
    iput v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->C:I

    .line 1236
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->d:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1237
    return-void
.end method

.method private P()I
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 1241
    .line 1242
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->r:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 1243
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->r:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->ai:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1245
    :cond_0
    return v0
.end method

.method private Q()V
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->t:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->a(I)V

    .line 1279
    return-void
.end method

.method private R()V
    .locals 2

    .prologue
    .line 1294
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->i:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->g:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1295
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getSwipeFilterType()Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->e:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v0, v1, :cond_0

    .line 1296
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->q()V

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    iget v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->q:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->a(I)V

    .line 1300
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->q:I

    .line 1301
    return-void

    .line 1294
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private S()V
    .locals 4

    .prologue
    .line 1343
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1344
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1345
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1346
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->af:J

    .line 1347
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1348
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1349
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->o:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1350
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1351
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1353
    :cond_0
    return-void
.end method

.method private T()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/high16 v1, 0x3f80

    .line 1356
    iget-wide v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->af:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return-void

    .line 1357
    :cond_1
    const v0, 0x5368d4a5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/SnapPreviewFragment;->af:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x43c8

    div-float/2addr v0, v2

    .line 1358
    iput-wide v6, p0, Lcom/snapchat/android/SnapPreviewFragment;->af:J

    .line 1359
    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    move v0, v1

    .line 1361
    :cond_2
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    mul-float/2addr v0, v3

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1362
    const-wide/16 v0, 0x190

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1363
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1364
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1365
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->o:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1366
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SendToBottomPanelView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/SnapPreviewFragment;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->o:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/SnapPreviewFragment;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/User;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment;->U:Lcom/snapchat/android/model/User;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/SnapPreviewFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/snapchat/android/SnapPreviewFragment;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(F)V
    .locals 1
    .parameter

    .prologue
    .line 1396
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 1397
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->b(I)V

    .line 1402
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->o:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1403
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1404
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->n:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1405
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->i:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    .line 1406
    return-void

    .line 1399
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->b(I)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 1282
    iput p1, p0, Lcom/snapchat/android/SnapPreviewFragment;->C:I

    .line 1283
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->C:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->r:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1285
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->ai:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->C:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1287
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter

    .prologue
    .line 1122
    if-nez p1, :cond_0

    .line 1123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Image Snap with no image? Ruh-roh"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Landroid/graphics/Bitmap;)V

    .line 1126
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    instance-of v0, v0, Lcom/snapchat/android/model/Snapbryo;

    if-eqz v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    check-cast v0, Lcom/snapchat/android/model/Snapbryo;

    iget v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->C:I

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/Snapbryo;->a(D)V

    .line 1129
    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Landroid/graphics/Bitmap;)V

    .line 1088
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    instance-of v0, v0, Lcom/snapchat/android/model/Snapbryo;

    if-eqz v0, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    check-cast v0, Lcom/snapchat/android/model/Snapbryo;

    .line 1092
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->E:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1093
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo;->f(Z)V

    .line 1095
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->I()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snapchat/android/SnapPreviewFragment;->a(Landroid/net/Uri;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/Snapbryo;->a(D)V

    .line 1098
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    instance-of v0, v0, Lcom/snapchat/android/model/SnapVideobryo;

    if-eqz v0, :cond_2

    .line 1099
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    check-cast v0, Lcom/snapchat/android/model/SnapVideobryo;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/model/SnapVideobryo;->a(Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V

    .line 1100
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->Z:Lcom/snapchat/android/camera/transcoding/VideoTranscoder;

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    check-cast v0, Lcom/snapchat/android/model/SnapVideobryo;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/camera/transcoding/VideoTranscoder;->a(Lcom/snapchat/android/model/SnapVideobryo;)V

    .line 1102
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/SnapPreviewFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/snapchat/android/SnapPreviewFragment;->a(I)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 598
    iget-object v3, p0, Lcom/snapchat/android/SnapPreviewFragment;->k:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iget-object v3, p0, Lcom/snapchat/android/SnapPreviewFragment;->e:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 600
    iget-object v3, p0, Lcom/snapchat/android/SnapPreviewFragment;->i:Landroid/widget/Button;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 602
    if-eqz p1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->l:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->getNumberOfStrokes()I

    move-result v0

    if-lez v0, :cond_4

    .line 605
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 612
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 598
    goto :goto_0

    :cond_2
    move v0, v1

    .line 599
    goto :goto_1

    :cond_3
    move v0, v1

    .line 600
    goto :goto_2

    .line 608
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->D:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/snapchat/android/SnapPreviewFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/snapchat/android/SnapPreviewFragment;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/ui/SnapEditorView;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    return-object v0
.end method

.method private b(F)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1409
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1410
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 1411
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setVisibility(I)V

    .line 1412
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setClickable(Z)V

    .line 1418
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setAlpha(F)V

    .line 1420
    :cond_0
    return-void

    .line 1414
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setVisibility(I)V

    .line 1415
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setClickable(Z)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 1
    .parameter

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->o:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1424
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1425
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->p:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1426
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->n:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1427
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->i:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1428
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/SnapPreviewFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/snapchat/android/SnapPreviewFragment;->L:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/SnapPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->F()V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/SnapPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->M()V

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/model/AnnotatedMediabryo;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/SnapPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->L()V

    return-void
.end method

.method static synthetic g(Lcom/snapchat/android/SnapPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->K()V

    return-void
.end method

.method static synthetic h(Lcom/snapchat/android/SnapPreviewFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->v:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/SnapPreviewFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->g:Z

    return v0
.end method

.method static synthetic j(Lcom/snapchat/android/SnapPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->C()V

    return-void
.end method

.method static synthetic k(Lcom/snapchat/android/SnapPreviewFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->P()I

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/snapchat/android/SnapPreviewFragment;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->B()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/SnapPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->w()V

    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 265
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->E:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 270
    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/snapchat/android/SnapPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->D()V

    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 287
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->D()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->b_()V

    .line 289
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->A()V

    .line 290
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->x()V

    .line 291
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->B:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 294
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->a()V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    instance-of v0, v0, Lcom/snapchat/android/discover/model/DSnapbryo;

    if-eqz v0, :cond_3

    .line 298
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->u()V

    .line 299
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->y()V

    .line 305
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-static {v0}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->u:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->B:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 313
    :cond_3
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->v()V

    .line 314
    iget-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->R:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->N:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 315
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->y()V

    .line 317
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->B:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic o(Lcom/snapchat/android/SnapPreviewFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->L:Z

    return v0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->G()Landroid/view/Window;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 331
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x201

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 332
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 335
    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/snapchat/android/SnapPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->E()V

    return-void
.end method

.method static synthetic q(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/analytics/NetworkAnalytics;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->Y:Lcom/snapchat/android/analytics/NetworkAnalytics;

    return-object v0
.end method

.method private q()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 495
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;->a()V

    .line 497
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->o:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 502
    return-void
.end method

.method static synthetic r(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/model/User;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->U:Lcom/snapchat/android/model/User;

    return-object v0
.end method

.method private r()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 505
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;->a()V

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->o:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 512
    return-void
.end method

.method static synthetic s(Lcom/snapchat/android/SnapPreviewFragment;)Lcom/snapchat/android/ui/SendToBottomPanelView;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    return-object v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->u:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->E:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 618
    return-void
.end method

.method static synthetic t(Lcom/snapchat/android/SnapPreviewFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->n:Landroid/view/View;

    return-object v0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->o:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/SnapPreviewFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapPreviewFragment$2;-><init>(Lcom/snapchat/android/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->i:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/SnapPreviewFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapPreviewFragment$3;-><init>(Lcom/snapchat/android/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->e:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/SnapPreviewFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapPreviewFragment$4;-><init>(Lcom/snapchat/android/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->j:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/SnapPreviewFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapPreviewFragment$5;-><init>(Lcom/snapchat/android/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->m:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/SnapPreviewFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapPreviewFragment$6;-><init>(Lcom/snapchat/android/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->p:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/SnapPreviewFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapPreviewFragment$7;-><init>(Lcom/snapchat/android/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    iget-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->H:Z

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->u:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/SnapPreviewFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapPreviewFragment$8;-><init>(Lcom/snapchat/android/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 787
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->B:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/SnapPreviewFragment$10;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapPreviewFragment$10;-><init>(Lcom/snapchat/android/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->o()V

    .line 804
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->K:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/SnapPreviewFragment$11;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapPreviewFragment$11;-><init>(Lcom/snapchat/android/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 817
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->E:Landroid/widget/CheckBox;

    new-instance v1, Lcom/snapchat/android/SnapPreviewFragment$12;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapPreviewFragment$12;-><init>(Lcom/snapchat/android/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 823
    return-void

    .line 768
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->O()V

    .line 769
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->u:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/SnapPreviewFragment$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapPreviewFragment$9;-><init>(Lcom/snapchat/android/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 826
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setClickable(Z)V

    .line 827
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 828
    return-void
.end method

.method static synthetic u(Lcom/snapchat/android/SnapPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->S()V

    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    .line 831
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setBackgroundColor(I)V

    .line 832
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    new-instance v1, Lcom/snapchat/android/SnapPreviewFragment$13;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapPreviewFragment$13;-><init>(Lcom/snapchat/android/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setSendButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->u()V

    .line 839
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 853
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->M:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->M:Ljava/util/LinkedHashSet;

    invoke-static {}, Lcom/snapchat/android/model/MyPostToStory;->a()Lcom/snapchat/android/model/MyPostToStory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->a:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->notifyDataSetChanged()V

    .line 855
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->i()V

    .line 856
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->N:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 857
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->x()V

    .line 858
    return-void
.end method

.method private x()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 932
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 934
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 935
    const/4 v1, 0x2

    const v2, 0x7f0a0277

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 936
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 937
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setAlpha(F)V

    .line 939
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->K:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 940
    return-void
.end method

.method private y()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 943
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 945
    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 946
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 947
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 948
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->K:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setVisibility(I)V

    .line 950
    return-void
.end method


# virtual methods
.method protected a(Landroid/net/Uri;)D
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 1106
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1110
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->aa:Lcom/snapchat/android/util/media/VideoMetadataFetcher;

    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/snapchat/android/util/media/VideoMetadataFetcher;->a(Landroid/media/MediaMetadataRetriever;Landroid/content/Context;Landroid/net/Uri;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1115
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 1118
    :goto_0
    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    return-wide v0

    .line 1112
    :catch_0
    move-exception v1

    .line 1113
    :goto_1
    :try_start_1
    const-string v3, "SnapPreviewFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " from MetadataFetcher"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1115
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v0

    .line 1112
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment;->Q:Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;

    .line 1486
    return-void
.end method

.method public a(Lcom/snapchat/android/model/PostToStory;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 865
    if-eqz p2, :cond_0

    .line 866
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->M:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 870
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->i()V

    .line 871
    return-void

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->M:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/ui/SwipeImageView;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    .line 1432
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1434
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->getLeftSwipeFilterPageType()Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    .line 1435
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->getRightSwipeFilterPageType()Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v1

    .line 1436
    sget-object v2, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->e:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v0, v2, :cond_2

    .line 1437
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->getScrollOffset()F

    move-result v0

    sub-float v0, v3, v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->a(F)V

    .line 1438
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->getScrollOffset()F

    move-result v0

    sub-float v0, v3, v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->b(F)V

    goto :goto_0

    .line 1439
    :cond_2
    sget-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->e:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v1, v0, :cond_0

    .line 1440
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->getScrollOffset()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->a(F)V

    .line 1441
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->getScrollOffset()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->b(F)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/ui/SwipeImageView;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 1457
    if-eqz p2, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1459
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1460
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->g(Z)V

    .line 1468
    :cond_0
    :goto_0
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1478
    :goto_1
    return-void

    .line 1462
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1463
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->r()V

    goto :goto_0

    .line 1472
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/ui/SwipeImageView;->getPageIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/SwipeImageView;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    .line 1473
    sget-object v1, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->e:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-ne v0, v1, :cond_3

    .line 1474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->a(F)V

    goto :goto_1

    .line 1476
    :cond_3
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->a(F)V

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 1481
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment;->P:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    .line 1482
    return-void
.end method

.method public a(Lcom/snapchat/android/model/PostToStory;)Z
    .locals 1
    .parameter

    .prologue
    .line 861
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->M:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a_()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 344
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    invoke-direct {v3, v1}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 346
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-static {v2}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->s()V

    .line 348
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getUserVisibleHint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    invoke-direct {v3, v0}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 359
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->t()V

    .line 361
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-static {v3}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setIsVideoSnap(Z)V

    .line 363
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->V:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;

    if-nez v2, :cond_3

    .line 364
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v3, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/ui/SnapEditorView;->setMediabryo(Lcom/snapchat/android/model/Mediabryo;)V

    .line 369
    :goto_1
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v3, p0, Lcom/snapchat/android/SnapPreviewFragment;->E:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/SnapEditorView;->a(Z)V

    .line 371
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->R()V

    .line 373
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->X:Lcom/snapchat/android/analytics/SnapCaptureAnalytics;

    iget v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->q:I

    invoke-static {v1}, Lcom/snapchat/android/util/ViewUtils;->b(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/SnapCaptureAnalytics;->b(Z)V

    .line 374
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->T:Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->a(I)V

    .line 375
    return-void

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getUserVisibleHint()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 353
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 356
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->n()V

    goto :goto_0

    .line 366
    :cond_3
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v3, p0, Lcom/snapchat/android/SnapPreviewFragment;->V:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;)V

    .line 367
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->V:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;

    goto :goto_1

    :cond_4
    move v0, v1

    .line 369
    goto :goto_2
.end method

.method public b(Lcom/snapchat/android/ui/SwipeImageView;)V
    .locals 1
    .parameter

    .prologue
    .line 1447
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1453
    :cond_0
    :goto_0
    return-void

    .line 1449
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;->a()V

    .line 1451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    goto :goto_0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->P:Lcom/snapchat/android/util/eventbus/DoubleTapToReplyEvent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->I:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->J:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b_()V
    .locals 3

    .prologue
    .line 885
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setBackgroundColor(I)V

    .line 886
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    new-instance v1, Lcom/snapchat/android/SnapPreviewFragment$14;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapPreviewFragment$14;-><init>(Lcom/snapchat/android/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setSendButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 913
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setClickable(Z)V

    .line 915
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 929
    :goto_0
    return-void

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setClickable(Z)V

    .line 918
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    new-instance v1, Lcom/snapchat/android/SnapPreviewFragment$15;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapPreviewFragment$15;-><init>(Lcom/snapchat/android/SnapPreviewFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    instance-of v0, v0, Lcom/snapchat/android/model/Snapbryo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 516
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->N:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->N:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->h()Z

    .line 572
    :goto_0
    return v0

    .line 521
    :cond_0
    iget-boolean v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->ac:Z

    if-eqz v2, :cond_1

    .line 522
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->m()Z

    goto :goto_0

    .line 526
    :cond_1
    iget-boolean v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->h:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 528
    goto :goto_0

    .line 531
    :cond_3
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionType()Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->b:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    if-ne v2, v3, :cond_4

    .line 533
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->f()V

    goto :goto_0

    .line 537
    :cond_4
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/CanvasViewBase;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 539
    new-instance v1, Lcom/snapchat/android/SnapPreviewFragment$1;

    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c002d

    invoke-virtual {p0, v3}, Lcom/snapchat/android/SnapPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/snapchat/android/SnapPreviewFragment$1;-><init>(Lcom/snapchat/android/SnapPreviewFragment;Landroid/content/Context;Ljava/lang/String;)V

    .line 551
    invoke-virtual {v1}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->show()V

    goto :goto_0

    .line 555
    :cond_5
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-static {v2}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 556
    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->CANCEL_PREVIEW:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    .line 558
    :cond_6
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->f()V

    .line 560
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->Q:Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;

    if-eqz v2, :cond_7

    .line 561
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->Q:Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;->a()Lcom/snapchat/android/discover/ui/DSnapView;

    move-result-object v2

    .line 562
    invoke-virtual {v2}, Lcom/snapchat/android/discover/ui/DSnapView;->b()V

    .line 565
    :cond_7
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    invoke-direct {v3, v0}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 567
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->J:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    if-eqz v2, :cond_8

    .line 568
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/CancelQuickSnapEvent;

    invoke-direct {v2}, Lcom/snapchat/android/util/eventbus/CancelQuickSnapEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 572
    goto/16 :goto_0
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->Q:Lcom/snapchat/android/discover/util/eventbus/OnShareDSnapEvent;

    if-eqz v0, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->W:Lcom/snapchat/android/controller/SendSnapController;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/controller/SendSnapController;->l(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    goto :goto_0
.end method

.method public h()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 842
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->N:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    :goto_0
    return v0

    .line 844
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->N:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 845
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 846
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->y()V

    .line 847
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i()V
    .locals 5

    .prologue
    .line 874
    const-string v1, ""

    .line 875
    const-string v0, ""

    .line 876
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->M:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

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

    .line 877
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

    .line 878
    const-string v0, ", "

    move-object v2, v1

    move-object v1, v0

    .line 879
    goto :goto_0

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setText(Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method protected k()V
    .locals 3

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->G()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1058
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SnapEditorView;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1059
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getVideoFilter()Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    move-result-object v1

    .line 1060
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-static {v2}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1061
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/SnapEditorView;->c()V

    .line 1062
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v2}, Lcom/snapchat/android/model/AnnotatedMediabryo;->I()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v2}, Lcom/snapchat/android/model/AnnotatedMediabryo;->I()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1065
    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/SnapPreviewFragment;->a(Landroid/graphics/Bitmap;Lcom/snapchat/videotranscoder/video/ShaderText$Type;)V

    .line 1070
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1071
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->h(Ljava/lang/String;)V

    .line 1074
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->getNumberOfStrokes()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->d(Z)V

    .line 1075
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->T:Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->e(Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->T:Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(I)V

    .line 1077
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->T:Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->b(I)V

    .line 1078
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->T:Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->f(Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->T:Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->c(I)V

    .line 1080
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionStyleDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->g(Ljava/lang/String;)V

    .line 1081
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionAnalyticsDetails()Lcom/snapchat/android/ui/caption/CaptionAnalyticData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/ui/caption/CaptionAnalyticData;)V

    goto/16 :goto_0

    .line 1067
    :cond_3
    invoke-direct {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1074
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public l()I
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->o:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBottom()I

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1258
    iget-boolean v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->ac:Z

    if-nez v1, :cond_0

    .line 1274
    :goto_0
    return v0

    .line 1259
    :cond_0
    iput-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ac:Z

    .line 1261
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f050002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1262
    if-eqz v1, :cond_1

    .line 1263
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1266
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1268
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1269
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1271
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->v:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1273
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->Q()V

    .line 1274
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 379
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 381
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->x:Landroid/view/View;

    if-nez v0, :cond_0

    .line 463
    :goto_0
    return-void

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 388
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->r:Landroid/content/SharedPreferences;

    .line 391
    :cond_1
    const v0, 0x7f0a02c5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->D:Landroid/view/View;

    .line 392
    const v0, 0x7f0a02c3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->f:Landroid/view/View;

    .line 393
    const v0, 0x7f0a02c0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->o:Landroid/widget/ImageButton;

    .line 394
    const v0, 0x7f0a02cd

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->i:Landroid/widget/Button;

    .line 395
    const v0, 0x7f0a02c1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->e:Landroid/widget/ImageButton;

    .line 396
    const v0, 0x7f0a02c4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->j:Landroid/widget/ImageButton;

    .line 397
    const v0, 0x7f0a02c6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->m:Landroid/widget/ImageButton;

    .line 398
    const v0, 0x7f0a02c9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->p:Landroid/widget/ImageButton;

    .line 399
    const v0, 0x7f0a02c2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->k:Landroid/view/View;

    .line 400
    const v0, 0x7f0a02ca

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->l:Landroid/view/View;

    .line 401
    const v0, 0x7f0a02d0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->d:Landroid/widget/TextView;

    .line 402
    const v0, 0x7f0a02cf

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->u:Landroid/view/View;

    .line 403
    const v0, 0x7f0a02d1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->B:Landroid/view/View;

    .line 404
    const v0, 0x7f0a02ce

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->E:Landroid/widget/CheckBox;

    .line 405
    const v0, 0x7f0a02d3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->F:Landroid/view/View;

    .line 406
    const v0, 0x7f0a02d4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->G:Landroid/view/View;

    .line 407
    const v0, 0x7f0a02d2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->K:Landroid/widget/ImageButton;

    .line 408
    const v0, 0x7f0a02d5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->N:Landroid/view/View;

    .line 409
    const v0, 0x7f0a0277

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SendToBottomPanelView;

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    .line 412
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->o:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/util/BouncyToucher;

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->o:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/BouncyToucher;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 413
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->e:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/util/BouncyToucher;

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->e:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/BouncyToucher;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 414
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->u:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/util/BouncyToucher;

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->u:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/BouncyToucher;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 415
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->p:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/util/BouncyToucher;

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->p:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/BouncyToucher;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 416
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->B:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/util/BouncyToucher;

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->B:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/BouncyToucher;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 417
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->E:Landroid/widget/CheckBox;

    new-instance v1, Lcom/snapchat/android/util/BouncyToucher;

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->E:Landroid/widget/CheckBox;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/BouncyToucher;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 418
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->K:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/util/BouncyToucher;

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->K:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/BouncyToucher;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 421
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->e()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->A()Z

    move-result v0

    if-nez v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->F:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :cond_2
    :goto_1
    :try_start_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 429
    const v1, 0x7f040082

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->v:Landroid/widget/RelativeLayout;

    .line 430
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->x:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 431
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 432
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 433
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->v:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a02d9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/simonvt/numberpicker/SnapchatTimePicker;

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->t:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    .line 436
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->N()V

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->H:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_2
    const v0, 0x7f0a02c8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->n:Landroid/view/View;

    .line 446
    const v0, 0x7f0a02bf

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SnapEditorView;

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    .line 447
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapEditorView;->setInterface(Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewInterface;)V

    .line 448
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->T:Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->setSwipeImageViewAnalytics(Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;)V

    .line 449
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapEditorView;->setSwipeImageViewOnScrollListener(Lcom/snapchat/android/ui/SwipeController$OnScrollListener;)V

    .line 450
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCanvasView()Lcom/snapchat/android/ui/CanvasViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    .line 452
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->a_()V

    .line 455
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 456
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->setColor(I)V

    .line 457
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->D:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getLastColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 459
    const v0, 0x7f0a02d6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 460
    new-instance v1, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;

    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f04006d

    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/StoryLibrary;->d()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$PostToStoryCheckedCallback;)V

    iput-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->a:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;

    .line 462
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->a:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 423
    :cond_3
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->B()Z

    move-result v0

    if-nez v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->G:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 438
    :catch_0
    move-exception v0

    .line 441
    iput-boolean v3, p0, Lcom/snapchat/android/SnapPreviewFragment;->H:Z

    .line 442
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "numberPicker failed to inflate"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/Throwable;)Lcom/snapchat/android/analytics/framework/ErrorMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->c()V

    goto/16 :goto_2
.end method

.method public onColorPickedEvent(Lcom/snapchat/android/util/eventbus/ColorPickedEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    .line 1374
    instance-of v1, v0, Lcom/snapchat/android/ui/caption/FatCaptionView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1380
    :goto_0
    return-void

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/ColorPickedEvent;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->setColor(I)V

    .line 1378
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 339
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 340
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->a()Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->V:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;

    .line 341
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 193
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->p()V

    .line 198
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 199
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->S:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 200
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v1, :cond_2

    .line 201
    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->s()Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v1

    instance-of v1, v1, Lcom/snapchat/android/model/AnnotatedMediabryo;

    if-nez v1, :cond_1

    .line 206
    :cond_0
    new-instance v0, Lcom/snapchat/android/model/Snapbryo$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/model/Snapbryo$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snapbryo$Builder;->a()Lcom/snapchat/android/model/Snapbryo;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->h:Z

    .line 208
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->x:Landroid/view/View;

    .line 219
    :goto_0
    return-object v0

    .line 211
    :cond_1
    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/AnnotatedMediabryo;

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 217
    :cond_3
    const v0, 0x7f040080

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->x:Landroid/view/View;

    .line 219
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->x:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 683
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroy()V

    .line 685
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->H()V

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->G()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 690
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 691
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 692
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 650
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroyView()V

    .line 652
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->h()V

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->getNumberOfStrokes()I

    move-result v0

    if-lez v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->getNumberOfStrokes()I

    move-result v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(I)V

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->T:Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->a()I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->T:Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->b()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/Mediabryo;)V

    .line 664
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->b()V

    .line 666
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->G()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 667
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 668
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 669
    return-void
.end method

.method public onDrawingEvent(Lcom/snapchat/android/util/eventbus/DrawingEvent;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1322
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;->a()V

    .line 1324
    iput-object v3, p0, Lcom/snapchat/android/SnapPreviewFragment;->ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    .line 1327
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/DrawingEvent;->a()Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->b:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    if-ne v0, v1, :cond_2

    .line 1328
    new-instance v0, Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    invoke-direct {v0, p0, v3}, Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;-><init>(Lcom/snapchat/android/SnapPreviewFragment;Lcom/snapchat/android/SnapPreviewFragment$1;)V

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    .line 1329
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ad:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1337
    :cond_1
    :goto_0
    return-void

    .line 1330
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/DrawingEvent;->a()Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->a:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    if-ne v0, v1, :cond_1

    .line 1331
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->T()V

    .line 1333
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1334
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->D:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1335
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->D:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getLastColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onEditCaptionEvent(Lcom/snapchat/android/util/eventbus/EditCaptionEvent;)V
    .locals 6
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 472
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->F:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 475
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->f(Z)V

    .line 476
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v3

    .line 479
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->i:Landroid/widget/Button;

    const v4, 0x7f0201ec

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 480
    iget-object v4, p0, Lcom/snapchat/android/SnapPreviewFragment;->i:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->g:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 481
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/EditCaptionEvent;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    instance-of v0, v3, Lcom/snapchat/android/ui/caption/FatCaptionView;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/CanvasViewBase;->setDrawingEnabled(Z)V

    .line 484
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->k:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->i:Landroid/widget/Button;

    const v1, 0x7f020098

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 492
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 480
    goto :goto_0
.end method

.method public onEnableFiltersEvent(Lcom/snapchat/android/util/eventbus/EnableFiltersEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;->a()V

    .line 1386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ae:Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;

    .line 1388
    :cond_0
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->a(F)V

    .line 1389
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->F:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1390
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->G:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1392
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->setMediabryo(Lcom/snapchat/android/model/Mediabryo;)V

    .line 1393
    return-void
.end method

.method public onInChatSnapEvent(Lcom/snapchat/android/util/eventbus/InChatSnapEvent;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 577
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment;->I:Lcom/snapchat/android/util/eventbus/InChatSnapEvent;

    .line 578
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->o()V

    .line 580
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/InChatSnapEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->setCaptionText(Ljava/lang/String;)V

    .line 582
    new-instance v0, Lcom/snapchat/android/util/eventbus/EditCaptionEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/snapchat/android/util/eventbus/EditCaptionEvent;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->onEditCaptionEvent(Lcom/snapchat/android/util/eventbus/EditCaptionEvent;)V

    .line 584
    :cond_0
    return-void
.end method

.method public onNoFilterEvent(Lcom/snapchat/android/util/eventbus/NoFilterEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->setMediabryo(Lcom/snapchat/android/model/Mediabryo;)V

    .line 468
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 630
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 632
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Z)V

    .line 636
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    if-eqz v1, :cond_1

    .line 637
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->a()V

    .line 640
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->a()Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->V:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;

    .line 641
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->c()V

    .line 643
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->O:Lcom/snapchat/android/ui/SendToBottomPanelView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->R:Z

    .line 645
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 646
    return-void
.end method

.method public onPostToStoriesUpdatedEvent(Lcom/snapchat/android/util/eventbus/PostToStoriesUpdatedEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1495
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->a:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->a:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->notifyDataSetChanged()V

    .line 1498
    :cond_0
    return-void
.end method

.method public onQuickSnapEvent(Lcom/snapchat/android/util/eventbus/QuickSnapEvent;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 588
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment;->J:Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    .line 589
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->o()V

    .line 591
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->setCaptionText(Ljava/lang/String;)V

    .line 593
    new-instance v0, Lcom/snapchat/android/util/eventbus/EditCaptionEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/snapchat/android/util/eventbus/EditCaptionEvent;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->onEditCaptionEvent(Lcom/snapchat/android/util/eventbus/EditCaptionEvent;)V

    .line 595
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 622
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 623
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 624
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->c:Lcom/snapchat/android/ui/CanvasViewBase;

    iget-boolean v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->g:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->setDrawingEnabled(Z)V

    .line 625
    iget-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->g:Z

    invoke-direct {p0, v0}, Lcom/snapchat/android/SnapPreviewFragment;->a(Z)V

    .line 626
    return-void
.end method

.method public onUserLoadedEvent(Lcom/snapchat/android/util/eventbus/UserLoadedEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 1502
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/UserLoadedEvent;->a:Lcom/snapchat/android/model/User;

    iput-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->U:Lcom/snapchat/android/model/User;

    .line 1503
    return-void
.end method

.method protected s_()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->S:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->ab:Lcom/snapchat/android/location/GeofilterManager;

    invoke-virtual {v0}, Lcom/snapchat/android/location/GeofilterManager;->c()V

    .line 227
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->p()V

    .line 230
    iput-boolean v1, p0, Lcom/snapchat/android/SnapPreviewFragment;->L:Z

    .line 233
    iget v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->q:I

    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/ViewUtils;->c(Landroid/content/Context;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->V:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/SnapPreviewFragment;->a_()V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    if-eqz v0, :cond_2

    .line 238
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->o()V

    .line 239
    invoke-direct {p0}, Lcom/snapchat/android/SnapPreviewFragment;->n()V

    .line 243
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/AnnotatedMediabryo;->C()V

    .line 246
    :cond_2
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    invoke-direct {v2, v1}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-static {v0}, Lcom/snapchat/android/util/SnapUtils;->a(Lcom/snapchat/android/model/Mediabryo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->s:Lcom/snapchat/android/model/AnnotatedMediabryo;

    check-cast v0, Lcom/snapchat/android/model/Snapbryo;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/model/Snapbryo;)V

    .line 250
    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewFragment;->b:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment;->E:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/SnapEditorView;->a(Z)V

    .line 254
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 250
    goto :goto_0

    .line 252
    :cond_4
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public t_()Z
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x1

    return v0
.end method
