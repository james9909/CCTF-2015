.class public Lcom/snapchat/android/ui/SnapEditorView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/SwipeController$OnScrollListener;
.implements Lcom/snapchat/android/ui/SwipeDispatcher;
.implements Lcom/snapchat/android/ui/caption/SnapCaptionViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/SnapEditorView$5;,
        Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewInterface;,
        Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;
    }
.end annotation


# instance fields
.field private A:Lcom/snapchat/android/model/Mediabryo;

.field private B:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final a:Lcom/snapchat/android/ui/SwipeImageView;

.field protected final b:Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;

.field protected final c:Lcom/snapchat/android/ui/SwipeController;

.field protected final d:Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;

.field private e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

.field private final f:Lcom/snapchat/android/ui/CanvasViewBase;

.field private final g:Landroid/widget/ImageView;

.field private final h:Lcom/snapchat/android/ui/SwipeViewState;

.field private final i:Lcom/squareup/otto/Bus;

.field private final j:Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;

.field private final k:Lcom/snapchat/android/ui/SwipePageController;

.field private final l:Landroid/widget/FrameLayout;

.field private final m:Landroid/widget/FrameLayout;

.field private n:Lcom/snapchat/android/ui/SnapVideoView;

.field private o:Lcom/snapchat/android/ui/VideoFilterView;

.field private p:Lcom/snapchat/android/ui/SwipeVideoViewController;

.field private q:Landroid/util/DisplayMetrics;

.field private final r:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore",
            "<",
            "Lcom/snapchat/android/ui/swipefilters/FilterPage;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;

.field private t:Landroid/graphics/Bitmap;

.field private u:Landroid/graphics/Bitmap;

.field private v:Z

.field private w:Landroid/media/MediaPlayer;

.field private final x:I

.field private y:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewInterface;

.field private z:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;->a()Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/squareup/otto/Bus;Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;)V

    .line 119
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/squareup/otto/Bus;Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 126
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    iput-boolean v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->v:Z

    .line 103
    sget-object v0, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->a:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->z:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    .line 652
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->B:Ljava/util/Set;

    .line 128
    iput-object p3, p0, Lcom/snapchat/android/ui/SnapEditorView;->i:Lcom/squareup/otto/Bus;

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->i:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 130
    iput-object p4, p0, Lcom/snapchat/android/ui/SnapEditorView;->j:Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;

    .line 131
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 132
    const v1, 0x7f04007d

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 134
    const v0, 0x7f0a02bc

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->m:Landroid/widget/FrameLayout;

    .line 135
    new-instance v0, Lcom/snapchat/android/ui/caption/VanillaCaptionView;

    invoke-direct {v0, p1}, Lcom/snapchat/android/ui/caption/VanillaCaptionView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->m:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setInterface(Lcom/snapchat/android/ui/caption/SnapCaptionViewInterface;)V

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->q:Landroid/util/DisplayMetrics;

    .line 141
    new-instance v0, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;

    invoke-direct {v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;

    .line 143
    new-instance v0, Lcom/snapchat/android/ui/SwipeViewState;

    invoke-direct {v0}, Lcom/snapchat/android/ui/SwipeViewState;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->h:Lcom/snapchat/android/ui/SwipeViewState;

    .line 145
    new-instance v0, Lcom/snapchat/android/ui/SwipePageController;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->h:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/SwipePageController;-><init>(Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;Lcom/snapchat/android/ui/SwipeViewState;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->k:Lcom/snapchat/android/ui/SwipePageController;

    .line 146
    const v0, 0x7f0a02bb

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SwipeImageView;

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    .line 147
    new-instance v0, Lcom/snapchat/android/ui/SwipeController;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->k:Lcom/snapchat/android/ui/SwipePageController;

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->h:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/ui/SwipeController;-><init>(Lcom/snapchat/android/ui/SwipePageController;Lcom/snapchat/android/ui/SwipeImageView;Lcom/snapchat/android/ui/SwipeViewState;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lcom/snapchat/android/ui/SwipeController;

    .line 148
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lcom/snapchat/android/ui/SwipeController;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SwipeController;->a(Lcom/snapchat/android/ui/SwipeController$OnScrollListener;)V

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeImageView;->setFilterPageProvider(Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;)V

    .line 151
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->h:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeImageView;->setSwipeState(Lcom/snapchat/android/ui/SwipeViewState;)V

    .line 152
    new-instance v0, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;

    invoke-direct {v0, p1, v1, v2}, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;-><init>(Landroid/content/Context;Lcom/snapchat/android/ui/SwipeImageView;Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;

    .line 153
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a()V

    .line 154
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lcom/snapchat/android/ui/SwipeController;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeController;->a(Lcom/snapchat/android/ui/SwipeController$OnScrollListener;)V

    .line 155
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->i:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 157
    new-instance v0, Lcom/snapchat/android/ui/SwipeVideoViewController;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->h:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/SwipeVideoViewController;-><init>(Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageProvider;Lcom/snapchat/android/ui/SwipeViewState;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->p:Lcom/snapchat/android/ui/SwipeVideoViewController;

    .line 158
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lcom/snapchat/android/ui/SwipeController;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->p:Lcom/snapchat/android/ui/SwipeVideoViewController;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeController;->a(Lcom/snapchat/android/ui/SwipeController$OnScrollListener;)V

    .line 160
    const v0, 0x7f0a02ba

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->l:Landroid/widget/FrameLayout;

    .line 163
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->g:Landroid/widget/ImageView;

    .line 164
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeImageView;->addView(Landroid/view/View;)V

    .line 167
    new-instance v0, Lcom/snapchat/android/ui/LegacyCanvasView;

    invoke-direct {v0, p1}, Lcom/snapchat/android/ui/LegacyCanvasView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->f:Lcom/snapchat/android/ui/CanvasViewBase;

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->f:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeImageView;->addView(Landroid/view/View;)V

    .line 170
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->x:I

    .line 171
    new-instance v0, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;

    iget v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->x:I

    new-instance v2, Lcom/snapchat/android/ui/snapeditormotion/TouchState;

    invoke-direct {v2}, Lcom/snapchat/android/ui/snapeditormotion/TouchState;-><init>()V

    invoke-direct {v0, v1, p0, v2}, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;-><init>(ILcom/snapchat/android/ui/SwipeDispatcher;Lcom/snapchat/android/ui/snapeditormotion/TouchState;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->d:Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;

    .line 172
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapEditorView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView;->w:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapEditorView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/ui/SnapEditorView;->a(Landroid/graphics/Bitmap;ZZ)V

    .line 237
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;ZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    if-nez p1, :cond_0

    .line 241
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->u:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    move v0, v1

    .line 245
    :goto_0
    if-nez v0, :cond_3

    if-nez p2, :cond_3

    if-nez p3, :cond_3

    .line 283
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 244
    goto :goto_0

    .line 249
    :cond_3
    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Lcom/snapchat/android/ui/SnapEditorView;->removeView(Landroid/view/View;)V

    .line 251
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView;->t:Landroid/graphics/Bitmap;

    .line 252
    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->t:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/snapchat/android/util/SnapMediaUtils;->a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->u:Landroid/graphics/Bitmap;

    .line 254
    if-nez v0, :cond_4

    if-eqz p2, :cond_5

    .line 256
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->u:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/SwipeImageView;->a(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 257
    if-eqz v0, :cond_6

    .line 258
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->b()V

    .line 259
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a(I)V

    .line 265
    :cond_5
    :goto_2
    if-eqz p3, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 268
    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->u:Landroid/graphics/Bitmap;

    invoke-static {v3, v0}, Lcom/snapchat/android/util/SnapMediaUtils;->c(Landroid/graphics/Bitmap;Landroid/util/DisplayMetrics;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 269
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    .line 270
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v4, v3, v2

    .line 271
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v1

    .line 272
    new-instance v1, Lcom/snapchat/android/ui/SnapEditorView$1;

    invoke-direct {v1, p0, v3, v0}, Lcom/snapchat/android/ui/SnapEditorView$1;-><init>(Lcom/snapchat/android/ui/SnapEditorView;[Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 279
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    const/16 v0, 0x320

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/SnapTransitionDrawable;->startTransition(I)V

    goto :goto_1

    .line 261
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeImageView;->b()V

    goto :goto_2
.end method

.method private a(Landroid/media/MediaPlayer;)V
    .locals 10
    .parameter

    .prologue
    const-wide v8, 0x3fb999999999999aL

    const/4 v6, 0x0

    .line 404
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 405
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 406
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 407
    int-to-float v3, v2

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 409
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float v1, v4, v1

    .line 411
    cmpl-float v4, v0, v1

    if-gez v4, :cond_0

    sub-float v4, v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v4, v4, v8

    if-gez v4, :cond_2

    .line 412
    :cond_0
    const-string v0, "SnapEditorView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting Aspect Ratio = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " x "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/ui/SnapVideoView;->setVideoAspect(II)V

    .line 424
    :cond_1
    :goto_0
    return-void

    .line 415
    :cond_2
    cmpg-float v2, v0, v1

    if-gez v2, :cond_3

    .line 416
    const-string v2, "SnapEditorView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not setting AR. Video has a shorter aspectRatio of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    :cond_3
    sub-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpl-double v2, v2, v8

    if-ltz v2, :cond_1

    .line 420
    const-string v2, "SnapEditorView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not setting AR. Video basically fits with a AR of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " vs "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;Landroid/view/View;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    .line 530
    new-instance v0, Lcom/snapchat/android/ui/SnapEditorView$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/SnapEditorView$3;-><init>(Lcom/snapchat/android/ui/SnapEditorView;Landroid/os/Bundle;ZLandroid/view/ViewTreeObserver;Landroid/view/View;)V

    .line 541
    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 542
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SnapEditorView;Landroid/graphics/Bitmap;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/ui/SnapEditorView;->a(Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/ui/SnapEditorView;)Lcom/snapchat/android/ui/SnapVideoView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lcom/snapchat/android/ui/SnapVideoView;

    return-object v0
.end method

.method private b(Lcom/snapchat/android/model/Snapbryo;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x0

    .line 323
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a(I)V

    .line 324
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lcom/snapchat/android/ui/VideoFilterView;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/VideoFilterView;->setVisibility(I)V

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->I()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->ac()[F

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ui/VideoFilterView;->a(Landroid/net/Uri;[F)V
    :try_end_0
    .catch Lcom/snapchat/videotranscoder/task/SetupException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    const-string v0, "SnapEditorView"

    const-string v1, "SnapPreviewFragment Editor playing video 1"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lcom/snapchat/android/ui/VideoFilterView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->p:Lcom/snapchat/android/ui/SwipeVideoViewController;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VideoFilterView;->setSwipeVideoViewController(Lcom/snapchat/android/ui/SwipeVideoViewController;)V

    .line 336
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VideoFilterView;->b()V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    const-string v1, "SnapEditorView"

    invoke-virtual {v0}, Lcom/snapchat/videotranscoder/task/SetupException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->c(Lcom/snapchat/android/model/Snapbryo;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/SnapEditorView;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->a(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 662
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 664
    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->B:Ljava/util/Set;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 665
    if-eq v2, v0, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 666
    :cond_0
    const-string v2, "SnapEditorView"

    const-string v3, "Remove pointerId %d"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->B:Ljava/util/Set;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 678
    :cond_1
    :goto_0
    return v0

    .line 672
    :cond_2
    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v2, p1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 673
    const-string v2, "SnapEditorView"

    const-string v3, "Add pointerId %d"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->B:Ljava/util/Set;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 678
    goto :goto_0
.end method

.method private c(Lcom/snapchat/android/model/Snapbryo;)V
    .locals 2
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lcom/snapchat/android/ui/VideoFilterView;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lcom/snapchat/android/ui/VideoFilterView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VideoFilterView;->setVisibility(I)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lcom/snapchat/android/ui/SnapVideoView;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lcom/snapchat/android/ui/SnapVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Snapbryo;->I()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 347
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lcom/snapchat/android/ui/SnapVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 348
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lcom/snapchat/android/ui/SnapVideoView;

    new-instance v1, Lcom/snapchat/android/ui/SnapEditorView$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/SnapEditorView$2;-><init>(Lcom/snapchat/android/ui/SnapEditorView;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 364
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->start()V

    .line 366
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/ui/SnapEditorView;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->v:Z

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/ui/SnapEditorView;)Lcom/snapchat/android/ui/caption/SnapCaptionView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/ui/SnapEditorView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->m:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private setVolumeMediaPlayer(Z)V
    .locals 3
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->w:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 401
    :goto_0
    return-void

    .line 392
    :cond_0
    if-eqz p1, :cond_1

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->w:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->w:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 396
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->w:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setVolumeVideoFilterView(Z)V
    .locals 2
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lcom/snapchat/android/ui/VideoFilterView;

    if-eqz v0, :cond_0

    .line 380
    if-eqz p1, :cond_1

    .line 381
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lcom/snapchat/android/ui/VideoFilterView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VideoFilterView;->setVolume(F)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lcom/snapchat/android/ui/VideoFilterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/VideoFilterView;->setVolume(F)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 459
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->f:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->destroyDrawingCache()V

    .line 461
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->a()V

    .line 463
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->u:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->f:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getNumberOfStrokes()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeImageView;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/SwipeImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-object v0

    .line 472
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getHeight()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/util/DrawingUtils;->a(II[Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 473
    if-eqz v1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->A:Lcom/snapchat/android/model/Mediabryo;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/Mediabryo;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/snapchat/android/util/SnapMediaUtils;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;-><init>(Lcom/snapchat/android/ui/SnapEditorView;)V

    .line 176
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->k:Lcom/snapchat/android/ui/SwipePageController;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipePageController;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;->a(Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;I)I

    .line 177
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->k:Lcom/snapchat/android/ui/SwipePageController;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipePageController;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;->b(Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;I)I

    .line 178
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->A:Lcom/snapchat/android/model/Mediabryo;

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;->a(Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;Lcom/snapchat/android/model/Mediabryo;)Lcom/snapchat/android/model/Mediabryo;

    .line 179
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->z:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;->c(Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;I)I

    .line 180
    return-object v0
.end method

.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 592
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lcom/snapchat/android/ui/SwipeController;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SwipeController;->a(F)V

    .line 593
    return-void
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    if-eqz p3, :cond_0

    .line 316
    const v0, 0x7f040090

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    const v0, 0x7f040091

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 609
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SwipeImageView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SwipeImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 618
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->f()V

    goto :goto_0

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/Snapbryo;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->l:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 299
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->j:Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;->b()Z

    move-result v1

    .line 301
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v2, v1}, Lcom/snapchat/android/ui/SnapEditorView;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)V

    .line 304
    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getVideoFilterView()Lcom/snapchat/android/ui/VideoFilterView;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lcom/snapchat/android/ui/VideoFilterView;

    .line 306
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->b(Lcom/snapchat/android/model/Snapbryo;)V

    .line 311
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getSnapVideoView()Lcom/snapchat/android/ui/SnapVideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lcom/snapchat/android/ui/SnapVideoView;

    .line 309
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->c(Lcom/snapchat/android/model/Snapbryo;)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;)V
    .locals 2
    .parameter

    .prologue
    .line 184
    if-nez p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-static {p1}, Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;->a(Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;)Lcom/snapchat/android/model/Mediabryo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->setMediabryo(Lcom/snapchat/android/model/Mediabryo;)V

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->k:Lcom/snapchat/android/ui/SwipePageController;

    invoke-static {p1}, Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;->b(Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipePageController;->b(I)V

    .line 189
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->k:Lcom/snapchat/android/ui/SwipePageController;

    invoke-static {p1}, Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;->c(Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipePageController;->a(I)V

    .line 190
    invoke-static {}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->values()[Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    move-result-object v0

    invoke-static {p1}, Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;->d(Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->z:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    .line 191
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->z:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    sget-object v1, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->a:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    if-eq v0, v1, :cond_0

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->b(Z)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/ui/SwipeImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 712
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/SwipeImageView;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 721
    if-eqz p2, :cond_0

    .line 722
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->k:Lcom/snapchat/android/ui/SwipePageController;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipePageController;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    .line 724
    :cond_0
    return-void
.end method

.method protected a(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V
    .locals 1
    .parameter

    .prologue
    .line 728
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;

    if-nez v0, :cond_0

    .line 737
    :goto_0
    return-void

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->h:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeViewState;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->b(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    goto :goto_0

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->a(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 571
    new-instance v0, Lcom/snapchat/android/ui/SnapEditorView$4;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/snapchat/android/ui/SnapEditorView$4;-><init>(Lcom/snapchat/android/ui/SnapEditorView;Ljava/lang/String;Landroid/content/Context;)V

    .line 578
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->t:Landroid/graphics/Bitmap;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/PhotoEffectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 579
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/snapchat/android/ui/SnapEditorView;->v:Z

    .line 370
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->j:Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/transcoding/VideoFilterPreferenceWrapper;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->setVolumeVideoFilterView(Z)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->setVolumeMediaPlayer(Z)V

    goto :goto_0
.end method

.method public a(ZF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 596
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lcom/snapchat/android/ui/SwipeController;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->q:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/snapchat/android/ui/SwipeController;->a(ZFI)V

    .line 597
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->i:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->i:Lcom/squareup/otto/Bus;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->c()V

    .line 212
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->r:Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/FilterPageStore;->d()V

    .line 213
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->f:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->b()V

    .line 217
    iput-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->t:Landroid/graphics/Bitmap;

    .line 218
    iput-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->u:Landroid/graphics/Bitmap;

    .line 219
    return-void
.end method

.method public b(Lcom/snapchat/android/ui/SwipeImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 717
    return-void
.end method

.method public b(Z)V
    .locals 5
    .parameter

    .prologue
    .line 495
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 497
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    .line 499
    if-eqz p1, :cond_0

    .line 500
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->i:Lcom/squareup/otto/Bus;

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 501
    invoke-static {}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->values()[Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->z:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->ordinal()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->values()[Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    move-result-object v4

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->z:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    .line 504
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->z:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/snapchat/android/ui/caption/SnapCaptionViewFactory;->a(Lcom/snapchat/android/ui/caption/CaptionTypeEnums;Landroid/content/Context;)Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    .line 506
    if-eqz p1, :cond_1

    .line 507
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b(Z)V

    .line 510
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->i:Lcom/squareup/otto/Bus;

    iget-object v3, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 511
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v2, p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setInterface(Lcom/snapchat/android/ui/caption/SnapCaptionViewInterface;)V

    .line 512
    invoke-direct {p0, v0, v1, p1}, Lcom/snapchat/android/ui/SnapEditorView;->a(Landroid/os/Bundle;Landroid/view/View;Z)V

    .line 513
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->m:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 514
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lcom/snapchat/android/ui/VideoFilterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VideoFilterView;->getFilterRenderingTask()Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VideoFilterView;->a()V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lcom/snapchat/android/ui/SnapVideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->n:Lcom/snapchat/android/ui/SnapVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapVideoView;->stopPlayback()V

    .line 433
    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->k:Lcom/snapchat/android/ui/SwipePageController;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipePageController;->c()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lcom/snapchat/android/ui/SwipeController;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->q:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeController;->b(I)V

    .line 601
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->g()Z

    move-result v0

    return v0
.end method

.method public getCanvasView()Lcom/snapchat/android/ui/CanvasViewBase;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->f:Lcom/snapchat/android/ui/CanvasViewBase;

    return-object v0
.end method

.method public getCaptionAnalyticsDetails()Lcom/snapchat/android/ui/caption/CaptionAnalyticData;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getCaptionAnalyticsDetails()Lcom/snapchat/android/ui/caption/CaptionAnalyticData;

    move-result-object v0

    return-object v0
.end method

.method public getCaptionStyleDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    .line 562
    :goto_0
    return-object v0

    .line 554
    :cond_0
    sget-object v0, Lcom/snapchat/android/ui/SnapEditorView$5;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->z:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 562
    const-string v0, "Index out of bounds D:"

    goto :goto_0

    .line 556
    :pswitch_0
    const-string v0, "1"

    goto :goto_0

    .line 558
    :pswitch_1
    const-string v0, "2"

    goto :goto_0

    .line 560
    :pswitch_2
    const-string v0, "3"

    goto :goto_0

    .line 554
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCaptionType()Lcom/snapchat/android/ui/caption/CaptionTypeEnums;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->z:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    return-object v0
.end method

.method public getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    return-object v0
.end method

.method public getPreviewCloseButtonBottom()I
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->y:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewInterface;

    invoke-interface {v0}, Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewInterface;->l()I

    move-result v0

    return v0
.end method

.method protected getSnapVideoView()Lcom/snapchat/android/ui/SnapVideoView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 292
    const v0, 0x7f0a0317

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SnapVideoView;

    return-object v0
.end method

.method public getSwipeFilterType()Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SwipeImageView;->getPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeImageView;->a(I)Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    return-object v0
.end method

.method public getVideoFilter()Lcom/snapchat/videotranscoder/video/ShaderText$Type;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lcom/snapchat/android/ui/VideoFilterView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->o:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VideoFilterView;->getFilterRenderingTask()Lcom/snapchat/videotranscoder/task/VideoFilterRenderingTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->p:Lcom/snapchat/android/ui/SwipeVideoViewController;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SwipeVideoViewController;->b()Lcom/snapchat/videotranscoder/video/ShaderText$Type;

    move-result-object v0

    .line 486
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getVideoFilterView()Lcom/snapchat/android/ui/VideoFilterView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 287
    const v0, 0x7f0a0316

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SnapEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/VideoFilterView;

    return-object v0
.end method

.method public onEnableFiltersEvent(Lcom/snapchat/android/util/eventbus/EnableFiltersEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 683
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->h:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeViewState;->b(I)V

    .line 684
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->h:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeViewState;->c(I)V

    .line 685
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->h:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeViewState;->d(I)V

    .line 686
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->h:Lcom/snapchat/android/ui/SwipeViewState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SwipeViewState;->a(I)V

    .line 687
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->b()V

    .line 688
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->b:Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;

    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->A:Lcom/snapchat/android/model/Mediabryo;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Mediabryo;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/swipeimageview/SwipeImageViewPageController;->a(I)V

    .line 689
    return-void
.end method

.method public onHelloWorldEvent(Lcom/snapchat/android/util/eventbus/HelloWorldEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const v2, 0x7f0a0001

    .line 697
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/SwipeImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 698
    if-nez v0, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 700
    new-instance v1, Lcom/snapchat/android/ui/KarelView;

    invoke-direct {v1, v0}, Lcom/snapchat/android/ui/KarelView;-><init>(Landroid/content/Context;)V

    .line 701
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 702
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v2, v1}, Lcom/snapchat/android/ui/SwipeImageView;->addView(Landroid/view/View;)V

    .line 703
    const v1, 0x7f0c01fc

    invoke-static {v1, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 707
    :goto_0
    return-void

    .line 705
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/ui/SnapEditorView;->a:Lcom/snapchat/android/ui/SwipeImageView;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SwipeImageView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 584
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 623
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->y:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewInterface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->y:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewInterface;

    invoke-interface {v2}, Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewInterface;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    :cond_0
    :goto_0
    return v0

    .line 628
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->y:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewInterface;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/snapchat/android/ui/SnapEditorView;->y:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewInterface;

    invoke-interface {v2}, Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewInterface;->m()Z

    move-result v2

    if-nez v2, :cond_0

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->f:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->getDrawingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 634
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->f:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/CanvasViewBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 635
    goto :goto_0

    .line 639
    :cond_3
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SnapEditorView;->getSwipeFilterType()Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->e:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    if-eq v0, v2, :cond_4

    .line 640
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 641
    goto :goto_0

    .line 645
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->h()Z

    move-result v0

    if-nez v0, :cond_5

    .line 646
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->d:Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/snapeditormotion/SwipeActionController;->a(Landroid/view/MotionEvent;)V

    :cond_5
    move v0, v1

    .line 649
    goto :goto_0
.end method

.method public setCaptionText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setText(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public setInterface(Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView;->y:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewInterface;

    .line 198
    return-void
.end method

.method public setMediabryo(Lcom/snapchat/android/model/Mediabryo;)V
    .locals 2
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->e:Lcom/snapchat/android/ui/caption/SnapCaptionView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 227
    :goto_0
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView;->A:Lcom/snapchat/android/model/Mediabryo;

    .line 228
    invoke-virtual {p1}, Lcom/snapchat/android/model/Mediabryo;->G()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {p1}, Lcom/snapchat/android/model/Mediabryo;->G()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/ui/SnapEditorView;->a(Landroid/graphics/Bitmap;Z)V

    .line 233
    :goto_1
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 231
    :cond_1
    check-cast p1, Lcom/snapchat/android/model/Snapbryo;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/model/Snapbryo;)V

    goto :goto_1
.end method

.method public setSwipeImageViewAnalytics(Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/snapchat/android/ui/SnapEditorView;->s:Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;

    .line 206
    return-void
.end method

.method public setSwipeImageViewOnScrollListener(Lcom/snapchat/android/ui/SwipeController$OnScrollListener;)V
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/snapchat/android/ui/SnapEditorView;->c:Lcom/snapchat/android/ui/SwipeController;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/SwipeController;->a(Lcom/snapchat/android/ui/SwipeController$OnScrollListener;)V

    .line 202
    return-void
.end method
