.class public Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;
.super Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;,
        Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface;,
        Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/view/View;

.field private c:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/ui/ObservableAboveTheFoldListView",
            "<TT;>.ChatMessageClearanceObserver;"
        }
    .end annotation
.end field

.field private d:I

.field private e:F

.field private f:Z

.field private g:F

.field private h:I

.field private i:Z

.field private j:Landroid/view/View;

.field private k:I

.field private l:F

.field private m:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

.field private n:Landroid/widget/BaseAdapter;

.field private o:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface",
            "<TT;>;"
        }
    .end annotation
.end field

.field private p:Landroid/widget/AbsListView$OnScrollListener;

.field private q:I

.field private r:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    const/high16 v0, 0x7fc0

    iput v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->e:F

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->k:I

    .line 94
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->l:F

    .line 101
    iput v1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->q:I

    .line 103
    new-instance v0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$1;-><init>(Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->r:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->a:Ljava/util/Map;

    .line 114
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->b:Landroid/view/View;

    .line 115
    new-instance v0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;

    invoke-direct {v0, p0, v2}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;-><init>(Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$1;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->c:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->b:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 119
    invoke-super {p0, p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;)Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->o:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface;

    return-object v0
.end method

.method private a(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 327
    if-gez p1, :cond_0

    move p1, v0

    .line 328
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 330
    iget v2, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->d:I

    if-ne v1, v2, :cond_2

    .line 340
    :cond_1
    :goto_0
    return v0

    .line 332
    :cond_2
    iget-object v2, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 333
    if-eqz v2, :cond_1

    .line 334
    iput v1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->d:I

    .line 335
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 336
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->n:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 339
    invoke-direct {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->f()V

    .line 340
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->i:Z

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->j:Landroid/view/View;

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->k:I

    .line 212
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->l:F

    .line 213
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 380
    :cond_0
    new-instance v0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$3;-><init>(Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->i:Z

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->n:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setAdapter() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->o:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setInterface() must be called first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->f:Z

    if-nez v0, :cond_2

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->a(I)Z

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->n:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setSelection(I)V

    goto :goto_0
.end method

.method public c()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 269
    iget v1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->e:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    const-string v1, "ObservableAboveTheFoldListView"

    const-string v2, "mMeasuredHeight has not been initialized yet. Aborting updateFooter()."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    iget-boolean v1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->f:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->o:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface;

    invoke-interface {v1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface;->p()I

    move-result v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 279
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 280
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getLastVisiblePosition()I

    move-result v2

    .line 281
    if-ltz v2, :cond_0

    .line 284
    :goto_1
    if-gt v1, v2, :cond_2

    .line 286
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_3

    .line 301
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getPaddingTop()I

    move-result v2

    sub-int v2, v1, v2

    .line 304
    iget-object v1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 289
    :cond_3
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    .line 290
    if-nez v3, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 291
    :cond_4
    iget-object v4, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->o:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface;

    invoke-interface {v4, v3}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 294
    if-nez v4, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 296
    :cond_5
    iget-object v5, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->b:Landroid/view/View;

    if-ne v4, v5, :cond_6

    .line 284
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 297
    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 298
    iget-object v5, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->a:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 306
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    .line 309
    if-lt v0, v2, :cond_9

    .line 312
    :goto_4
    sub-int v0, v2, v0

    iget v1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->h:I

    sub-int/2addr v0, v1

    .line 316
    iget v1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->h:I

    if-ge v0, v1, :cond_8

    .line 317
    iget v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->h:I

    .line 319
    :cond_8
    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->a(I)Z

    move-result v0

    goto/16 :goto_0

    :cond_9
    move v1, v0

    .line 310
    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_4
.end method

.method public d()V
    .locals 1

    .prologue
    .line 347
    new-instance v0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$2;-><init>(Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->post(Ljava/lang/Runnable;)Z

    .line 353
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 163
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->e()V

    .line 167
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->i:Z

    if-eqz v0, :cond_9

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 170
    iget v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->k:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->j:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setSelectionFromTop(II)V

    .line 195
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->g:F

    move v0, v1

    .line 202
    :goto_1
    return v0

    .line 171
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 172
    iget v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->l:F

    const/high16 v2, -0x4080

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4

    .line 173
    iget v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->k:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->j:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->setSelectionFromTop(II)V

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->l:F

    .line 175
    iget v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->l:F

    iget v2, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->g:F

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    sget-object v0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;->b:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    :goto_2
    iput-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->m:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;->a:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    goto :goto_2

    .line 177
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->l:F

    sub-float/2addr v0, v2

    .line 185
    iget-object v2, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->m:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    sget-object v3, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;->b:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    if-ne v2, v3, :cond_5

    cmpg-float v2, v0, v4

    if-ltz v2, :cond_8

    :cond_5
    iget-object v2, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->m:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    sget-object v3, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;->b:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    if-ne v2, v3, :cond_6

    const/high16 v2, 0x4348

    cmpl-float v2, v0, v2

    if-gez v2, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->m:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    sget-object v3, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;->a:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    if-ne v2, v3, :cond_7

    cmpl-float v2, v0, v4

    if-gtz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->m:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    sget-object v3, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;->a:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    if-ne v2, v3, :cond_1

    const/high16 v2, -0x3cb8

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 191
    :cond_8
    invoke-direct {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->e()V

    goto :goto_0

    .line 200
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->g:F

    .line 202
    invoke-super {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->onAttachedToWindow()V

    .line 253
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->r:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 257
    iget-object v1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->r:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 259
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-super {p0, p1, p2}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->onMeasure(II)V

    .line 247
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->e:F

    .line 248
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->p:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->p:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 369
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->p:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->p:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 359
    :cond_0
    if-nez p2, :cond_1

    .line 360
    invoke-direct {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->f()V

    .line 362
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->f:Z

    if-eqz v0, :cond_1

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->onSizeChanged(IIII)V

    .line 220
    iget v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->q:I

    if-le p2, v0, :cond_0

    iput p2, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->q:I

    .line 223
    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->q:I

    sub-int/2addr v0, p2

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    .line 224
    :goto_0
    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->d()V

    .line 229
    :cond_1
    return-void

    .line 223
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iput-object p1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->n:Landroid/widget/BaseAdapter;

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->c:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->c:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ChatMessageClearanceObserver;->a(Landroid/widget/BaseAdapter;)V

    .line 128
    :cond_0
    return-void
.end method

.method public setInterface(Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 131
    iput-object p1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->o:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ObservableAboveTheFoldListViewInterface;

    .line 132
    return-void
.end method

.method public setIsActive(Z)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->f:Z

    .line 145
    return-void
.end method

.method public setLocked(Z)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->i:Z

    .line 149
    return-void
.end method

.method public setLockedView(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->j:Landroid/view/View;

    .line 157
    iput p2, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->k:I

    .line 158
    return-void
.end method

.method public setMinimumFooterHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput p1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->h:I

    .line 136
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->p:Landroid/widget/AbsListView$OnScrollListener;

    .line 141
    return-void
.end method
