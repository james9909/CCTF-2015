.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimator;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Landroid/support/v7/widget/RecyclerView$State;,
        Landroid/support/v7/widget/RecyclerView$SavedState;,
        Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;,
        Landroid/support/v7/widget/RecyclerView$SmoothScroller;,
        Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;,
        Landroid/support/v7/widget/RecyclerView$LayoutParams;,
        Landroid/support/v7/widget/RecyclerView$ViewHolder;,
        Landroid/support/v7/widget/RecyclerView$RecyclerListener;,
        Landroid/support/v7/widget/RecyclerView$OnScrollListener;,
        Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;,
        Landroid/support/v7/widget/RecyclerView$ItemDecoration;,
        Landroid/support/v7/widget/RecyclerView$LayoutManager;,
        Landroid/support/v7/widget/RecyclerView$Adapter;,
        Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;,
        Landroid/support/v7/widget/RecyclerView$Recycler;,
        Landroid/support/v7/widget/RecyclerView$RecycledViewPool;,
        Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;,
        Landroid/support/v7/widget/RecyclerView$ViewFlinger;
    }
.end annotation


# static fields
.field private static final ab:Landroid/view/animation/Interpolator;

.field private static final i:Z


# instance fields
.field private final A:Z

.field private final B:Landroid/view/accessibility/AccessibilityManager;

.field private C:Z

.field private D:Z

.field private E:Landroid/support/v4/widget/EdgeEffectCompat;

.field private F:Landroid/support/v4/widget/EdgeEffectCompat;

.field private G:Landroid/support/v4/widget/EdgeEffectCompat;

.field private H:Landroid/support/v4/widget/EdgeEffectCompat;

.field private I:I

.field private J:I

.field private K:Landroid/view/VelocityTracker;

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private final Q:I

.field private final R:I

.field private final S:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

.field private T:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private U:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private V:Z

.field private W:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

.field final a:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private aa:Ljava/lang/Runnable;

.field b:Landroid/support/v7/widget/AdapterHelper;

.field c:Landroid/support/v7/widget/ChildHelper;

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field final f:Landroid/support/v7/widget/RecyclerView$State;

.field g:Z

.field h:Z

.field private final j:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

.field private k:Landroid/support/v7/widget/RecyclerView$SavedState;

.field private l:Z

.field private final m:Ljava/lang/Runnable;

.field private final n:Landroid/graphics/Rect;

.field private o:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private q:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->i:Z

    .line 266
    new-instance v0, Landroid/support/v7/widget/RecyclerView$3;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$3;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->ab:Landroid/view/animation/Interpolator;

    return-void

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 279
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 282
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    new-instance v0, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, p0, v3}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    .line 128
    new-instance v0, Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$Recycler;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    .line 151
    new-instance v0, Landroid/support/v7/widget/RecyclerView$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$1;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/lang/Runnable;

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    .line 193
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 203
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    .line 207
    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 232
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 243
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    .line 245
    new-instance v0, Landroid/support/v7/widget/RecyclerView$State;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$State;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    .line 250
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 251
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    .line 252
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v0, p0, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 254
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->V:Z

    .line 256
    new-instance v0, Landroid/support/v7/widget/RecyclerView$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$2;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:Ljava/lang/Runnable;

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 285
    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    .line 287
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    .line 289
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    .line 290
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    .line 291
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 293
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->a(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 294
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 295
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->q()V

    .line 297
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    .line 299
    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 302
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/view/accessibility/AccessibilityManager;

    .line 304
    new-instance v0, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    .line 305
    return-void

    :cond_2
    move v0, v2

    .line 285
    goto :goto_0
.end method

.method private a(Landroid/support/v4/util/ArrayMap;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2127
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 2128
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_3

    .line 2129
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    .line 2130
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 2131
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;

    .line 2132
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2133
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$State;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2135
    :cond_0
    invoke-virtual {p1, v5}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2136
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v5, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 2128
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 2139
    :cond_1
    if-eqz v0, :cond_2

    .line 2140
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;)V

    goto :goto_1

    .line 2143
    :cond_2
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;)V

    goto :goto_1

    .line 2147
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2148
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 578
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->b(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 580
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 582
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_3

    .line 584
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_2

    .line 585
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->c()V

    .line 591
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_3

    .line 592
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 593
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 596
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->a()V

    .line 597
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 598
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 599
    if-eqz p1, :cond_4

    .line 600
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->a(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 601
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 603
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_5

    .line 604
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 606
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->a(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 607
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->a(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 608
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->n()V

    .line 609
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2177
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 2178
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 2179
    iget v2, p1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->b:I

    .line 2180
    iget v3, p1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->c:I

    .line 2181
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2182
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2183
    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_2

    .line 2184
    :cond_0
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Z)V

    .line 2185
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/view/View;->layout(IIII)V

    .line 2192
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2194
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 2206
    :cond_1
    :goto_0
    return-void

    .line 2201
    :cond_2
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Z)V

    .line 2202
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2203
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/graphics/Rect;II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2152
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 2153
    if-eqz p2, :cond_2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ne v0, p3, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-eq v0, p4, :cond_2

    .line 2156
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Z)V

    .line 2160
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2163
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 2174
    :cond_1
    :goto_0
    return-void

    .line 2169
    :cond_2
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Z)V

    .line 2170
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2171
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2209
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Z)V

    .line 2210
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 2211
    iput-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->g:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 2212
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 2216
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2217
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2219
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v6, v4

    move v5, v3

    .line 2228
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2230
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 2232
    :cond_1
    return-void

    .line 2223
    :cond_2
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 2224
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2225
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Z)V

    .line 2226
    iput-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->i(II)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->V:Z

    return p1
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 1498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1499
    if-eq v3, v6, :cond_0

    if-nez v3, :cond_1

    .line 1500
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 1503
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 1504
    :goto_0
    if-ge v2, v4, :cond_3

    .line 1505
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 1506
    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v3, v6, :cond_2

    .line 1507
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 1508
    const/4 v0, 0x1

    .line 1511
    :goto_1
    return v0

    .line 1504
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1511
    goto :goto_1
.end method

.method static b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .parameter

    .prologue
    .line 2576
    if-nez p0, :cond_0

    .line 2577
    const/4 v0, 0x0

    .line 2579
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 707
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 708
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    move v0, v1

    .line 709
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 710
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->q()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 712
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    const/4 v3, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/v7/widget/ChildHelper;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 718
    :goto_1
    return-void

    .line 708
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 713
    :cond_1
    if-nez v0, :cond_2

    .line 714
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/ChildHelper;->a(Landroid/view/View;Z)V

    goto :goto_1

    .line 716
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ChildHelper;->d(Landroid/view/View;)V

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    return p1
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1515
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1516
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    if-eqz v3, :cond_0

    .line 1517
    if-nez v0, :cond_1

    .line 1519
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 1532
    :cond_0
    if-eqz v0, :cond_5

    .line 1533
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 1534
    :goto_0
    if-ge v3, v4, :cond_5

    .line 1535
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 1536
    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1537
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    move v0, v1

    .line 1542
    :goto_1
    return v0

    .line 1521
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v2, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 1522
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    .line 1524
    :cond_2
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    :cond_3
    move v0, v1

    .line 1526
    goto :goto_1

    .line 1534
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1542
    goto :goto_1
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->k(Landroid/view/View;)V

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x3f00

    .line 1727
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1728
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    if-ne v1, v2, :cond_0

    .line 1730
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1731
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 1732
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    .line 1733
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    .line 1735
    :cond_0
    return-void

    .line 1730
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    return p1
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    return p1
.end method

.method static synthetic e(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    return-void
.end method

.method static synthetic e(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->v()Z

    move-result v0

    return v0
.end method

.method private g(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 727
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 728
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ChildHelper;->e(Landroid/view/View;)Z

    move-result v0

    .line 729
    if-eqz v0, :cond_0

    .line 730
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 731
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 732
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 737
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 738
    return v0
.end method

.method static synthetic h(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method private h(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1236
    if-gez p1, :cond_4

    .line 1237
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 1238
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 1244
    :cond_0
    :goto_0
    if-gez p2, :cond_5

    .line 1245
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->f()V

    .line 1246
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 1252
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 1253
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1255
    :cond_3
    return-void

    .line 1239
    :cond_4
    if-lez p1, :cond_0

    .line 1240
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->e()V

    .line 1241
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    goto :goto_0

    .line 1247
    :cond_5
    if-lez p2, :cond_1

    .line 1248
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 1249
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v1, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    goto :goto_1
.end method

.method private h(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 4460
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 4461
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4463
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)V

    .line 4464
    return-void
.end method

.method static synthetic i(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method private i(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1269
    const/4 v0, 0x0

    .line 1270
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 1271
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .line 1273
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 1274
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1276
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 1277
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1279
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 1280
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1282
    :cond_3
    if-eqz v0, :cond_4

    .line 1283
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1285
    :cond_4
    return-void
.end method

.method private i(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 4467
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 4468
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4470
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)V

    .line 4471
    return-void
.end method

.method private j(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 6526
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6527
    return-void
.end method

.method static synthetic j(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method private k(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 6530
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6531
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6533
    :cond_0
    return-void
.end method

.method static synthetic k(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    return v0
.end method

.method static synthetic l(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    return v0
.end method

.method static synthetic m(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    return v0
.end method

.method static synthetic n(Landroid/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic o(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic o()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->ab:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic p(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->i:Z

    return v0
.end method

.method static synthetic q(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$RecyclerListener;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    return-object v0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 326
    new-instance v0, Landroid/support/v7/widget/ChildHelper;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$4;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$4;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ChildHelper;-><init>(Landroid/support/v7/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    .line 407
    return-void
.end method

.method private r()V
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 968
    return-void
.end method

.method static synthetic r(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    return v0
.end method

.method static synthetic s(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewFlinger;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    return-object v0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b()V

    .line 1229
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->x()V

    .line 1230
    return-void
.end method

.method private setScrollState(I)V
    .locals 1
    .parameter

    .prologue
    .line 812
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    if-ne p1, v0, :cond_0

    .line 826
    :goto_0
    return-void

    .line 818
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 819
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 820
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->s()V

    .line 822
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 823
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 825
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->j(I)V

    goto :goto_0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 1258
    const/4 v0, 0x0

    .line 1259
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .line 1260
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1261
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1262
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1263
    :cond_3
    if-eqz v0, :cond_4

    .line 1264
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1266
    :cond_4
    return-void
.end method

.method private u()V
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1722
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    .line 1723
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1724
    return-void
.end method

.method private v()Z
    .locals 1

    .prologue
    .line 1812
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 1820
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1822
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Z

    .line 1824
    :cond_0
    return-void
.end method

.method private x()Z
    .locals 1

    .prologue
    .line 1827
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private y()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1837
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v0, :cond_0

    .line 1840
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->a()V

    .line 1841
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->n()V

    .line 1842
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 1847
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1848
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->b()V

    .line 1852
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    move v0, v2

    .line 1854
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    move v3, v2

    :goto_2
    invoke-static {v4, v3}, Landroid/support/v7/widget/RecyclerView$State;->c(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1858
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$State;->b(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->x()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_3
    invoke-static {v3, v2}, Landroid/support/v7/widget/RecyclerView$State;->d(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1861
    return-void

    .line 1850
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->e()V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1852
    goto :goto_1

    :cond_7
    move v3, v1

    .line 1854
    goto :goto_2

    :cond_8
    move v2, v1

    .line 1858
    goto :goto_3
.end method


# virtual methods
.method a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J
    .locals 2
    .parameter

    .prologue
    .line 2119
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method a(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2618
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v2

    .line 2619
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 2620
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 2621
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2622
    if-eqz p2, :cond_1

    .line 2623
    iget v3, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-ne v3, p1, :cond_2

    .line 2634
    :cond_0
    :goto_1
    return-object v0

    .line 2626
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 2619
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2634
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .parameter

    .prologue
    .line 2567
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2568
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2569
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a direct child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2572
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 2

    .prologue
    .line 410
    new-instance v0, Landroid/support/v7/widget/AdapterHelper;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$5;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AdapterHelper;-><init>(Landroid/support/v7/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/AdapterHelper;

    .line 475
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 915
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 916
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d(I)V

    .line 917
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    .line 918
    return-void
.end method

.method a(II)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 974
    .line 976
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->r()V

    .line 977
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_b

    .line 978
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    .line 980
    if-eqz p1, :cond_a

    .line 981
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v3

    .line 982
    sub-int v4, p1, v3

    .line 984
    :goto_0
    if-eqz p2, :cond_9

    .line 985
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p2, v2, v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 986
    sub-int v2, p2, v0

    .line 988
    :goto_1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->v()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 990
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v7

    move v6, v1

    .line 991
    :goto_2
    if-ge v6, v7, :cond_3

    .line 992
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v8

    .line 993
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 994
    if-eqz v5, :cond_1

    iget-object v9, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v9, :cond_1

    .line 995
    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 996
    if-eqz v5, :cond_2

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 997
    :goto_3
    if-eqz v5, :cond_1

    .line 998
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 999
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1000
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v10

    if-ne v9, v10, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    if-eq v8, v10, :cond_1

    .line 1001
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v8

    invoke-virtual {v5, v9, v8, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 991
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_2

    .line 996
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 1009
    :cond_3
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    .line 1010
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    move v12, v3

    move v3, v2

    move v2, v12

    .line 1012
    :goto_4
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1013
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1015
    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    .line 1016
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->i(II)V

    .line 1017
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/RecyclerView;->h(II)V

    .line 1019
    :cond_5
    if-nez v2, :cond_6

    if-eqz v0, :cond_7

    .line 1020
    :cond_6
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 1021
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_7

    .line 1022
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, v2, v0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 1025
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1026
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1028
    :cond_8
    return-void

    :cond_9
    move v0, v1

    move v2, v1

    goto/16 :goto_1

    :cond_a
    move v3, v1

    move v4, v1

    goto/16 :goto_0

    :cond_b
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    goto :goto_4
.end method

.method a(IIZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 2438
    add-int v1, p1, p2

    .line 2439
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v2

    .line 2440
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 2441
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 2442
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2443
    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-lt v4, v1, :cond_1

    .line 2449
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(IZ)V

    .line 2450
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v3, v6}, Landroid/support/v7/widget/RecyclerView$State;->a(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2440
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2451
    :cond_1
    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-lt v4, p1, :cond_0

    .line 2456
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v3, v4, v5, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(IIZ)V

    .line 2458
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v3, v6}, Landroid/support/v7/widget/RecyclerView$State;->a(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    goto :goto_1

    .line 2462
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->b(IIZ)V

    .line 2463
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2464
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1460
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    if-eqz v0, :cond_1

    .line 1461
    if-nez p1, :cond_0

    .line 1462
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1465
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_1
    return-void
.end method

.method a(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1168
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-eqz v0, :cond_1

    .line 1169
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->i()V

    .line 1173
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    .line 1174
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->y:Z

    .line 1176
    :cond_1
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1402
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1403
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1405
    :cond_0
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 1161
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-nez v0, :cond_0

    .line 1162
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    .line 1163
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Z

    .line 1165
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3
    .parameter

    .prologue
    .line 2689
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v1

    .line 2690
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2691
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2690
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2693
    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1185
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 1186
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->b(II)V

    .line 1188
    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 2589
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 2590
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1220
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1221
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->s()V

    .line 1222
    return-void
.end method

.method public c(I)V
    .locals 3
    .parameter

    .prologue
    .line 2727
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v1

    .line 2728
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2729
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2728
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2731
    :cond_0
    return-void
.end method

.method public c(II)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1200
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-ge v1, v2, :cond_0

    move p1, v0

    .line 1203
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-ge v1, v2, :cond_1

    move p2, v0

    .line 1206
    :cond_1
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    neg-int v1, v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1207
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    neg-int v2, v2

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1208
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 1209
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->S:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->a(II)V

    .line 1210
    const/4 v0, 0x1

    .line 1212
    :cond_3
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 2333
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->f(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 1136
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->g(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 4

    .prologue
    .line 1310
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1320
    :goto_0
    return-void

    .line 1313
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1314
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eqz v0, :cond_1

    .line 1315
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 1318
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method d(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1288
    if-gez p1, :cond_4

    .line 1289
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 1290
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 1296
    :cond_0
    :goto_0
    if-gez p2, :cond_5

    .line 1297
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->f()V

    .line 1298
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 1304
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 1305
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1307
    :cond_3
    return-void

    .line 1291
    :cond_4
    if-lez p1, :cond_0

    .line 1292
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->e()V

    .line 1293
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_0

    .line 1299
    :cond_5
    if-lez p2, :cond_1

    .line 1300
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 1301
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_1
.end method

.method public d(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 2706
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2262
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2264
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    .line 2265
    :goto_0
    if-ge v3, v4, :cond_0

    .line 2266
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p0, v5}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2265
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 2271
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2272
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2273
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    .line 2274
    :goto_1
    const/high16 v4, 0x4387

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2275
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2276
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 2277
    :goto_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2279
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2280
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 2281
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eqz v3, :cond_1

    .line 2282
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2284
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v2

    :goto_4
    or-int/2addr v0, v3

    .line 2285
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2287
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2288
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 2289
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 2290
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 2291
    :goto_5
    const/high16 v6, 0x42b4

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2292
    neg-int v3, v3

    int-to-float v3, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2293
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v2

    :goto_6
    or-int/2addr v0, v3

    .line 2294
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2296
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2297
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2298
    const/high16 v4, 0x4334

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2299
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eqz v4, :cond_c

    .line 2300
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2304
    :goto_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    or-int/2addr v0, v1

    .line 2305
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2311
    :cond_5
    if-nez v0, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2316
    :goto_8
    if-eqz v2, :cond_6

    .line 2317
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2319
    :cond_6
    return-void

    :cond_7
    move v0, v1

    .line 2273
    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 2276
    goto/16 :goto_2

    :cond_9
    move v3, v1

    .line 2284
    goto/16 :goto_4

    :cond_a
    move v3, v1

    .line 2290
    goto/16 :goto_5

    :cond_b
    move v3, v1

    .line 2293
    goto :goto_6

    .line 2302
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_d
    move v2, v0

    goto :goto_8

    :cond_e
    move v0, v1

    goto/16 :goto_3
.end method

.method e()V
    .locals 4

    .prologue
    .line 1323
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1333
    :goto_0
    return-void

    .line 1326
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1327
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eqz v0, :cond_1

    .line 1328
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 1331
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method e(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 2386
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v6

    .line 2388
    if-ge p1, p2, :cond_1

    .line 2391
    const/4 v0, -0x1

    move v2, p2

    move v3, p1

    :goto_0
    move v4, v5

    .line 2398
    :goto_1
    if-ge v4, v6, :cond_4

    .line 2399
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 2400
    if-eqz v7, :cond_0

    iget v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-lt v8, v3, :cond_0

    iget v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-le v8, v2, :cond_2

    .line 2398
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    move v2, p1

    move v3, p2

    .line 2395
    goto :goto_0

    .line 2407
    :cond_2
    iget v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-ne v8, p1, :cond_3

    .line 2408
    sub-int v8, p2, p1

    invoke-virtual {v7, v8, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(IZ)V

    .line 2413
    :goto_3
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v7, v1}, Landroid/support/v7/widget/RecyclerView$State;->a(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    goto :goto_2

    .line 2410
    :cond_3
    invoke-virtual {v7, v0, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(IZ)V

    goto :goto_3

    .line 2415
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->a(II)V

    .line 2416
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2417
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 2718
    return-void
.end method

.method f(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2734
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2735
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    if-nez v1, :cond_0

    .line 2736
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 2751
    :goto_0
    return-object v0

    .line 2739
    :cond_0
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 2740
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2741
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v4

    .line 2742
    :goto_1
    if-ge v3, v5, :cond_1

    .line 2743
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2744
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v6, p1, p0, v7}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2745
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 2746
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 2747
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 2748
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 2742
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 2750
    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    move-object v0, v2

    .line 2751
    goto :goto_0
.end method

.method f()V
    .locals 4

    .prologue
    .line 1336
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1347
    :goto_0
    return-void

    .line 1339
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1340
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eqz v0, :cond_1

    .line 1341
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 1344
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method f(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2420
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v2

    move v0, v1

    .line 2421
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2422
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 2423
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-lt v4, p1, :cond_0

    .line 2428
    invoke-virtual {v3, p2, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(IZ)V

    .line 2429
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView$State;->a(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2421
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2432
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->b(II)V

    .line 2433
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2434
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1370
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1371
    if-eqz v0, :cond_1

    .line 1381
    :cond_0
    :goto_0
    return-object v0

    .line 1374
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 1375
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1376
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_2

    .line 1377
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 1378
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 1379
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 1381
    :cond_2
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method g()V
    .locals 4

    .prologue
    .line 1350
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1360
    :goto_0
    return-void

    .line 1353
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1354
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eqz v0, :cond_1

    .line 1355
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 1358
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method g(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 2473
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v2

    .line 2474
    add-int v3, p1, p2

    .line 2476
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 2477
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2478
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 2479
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2476
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2482
    :cond_1
    iget v5, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-lt v5, p1, :cond_0

    iget v5, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-ge v5, v3, :cond_0

    .line 2485
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(I)V

    .line 2486
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->v()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2487
    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(I)V

    .line 2490
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    goto :goto_1

    .line 2493
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->c(II)V

    .line 2494
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2338
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 2339
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2341
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a()Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 2346
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 2347
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2349
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 2354
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 2355
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2357
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public getCompatAccessibilityDelegate()Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    .locals 1

    .prologue
    .line 1808
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->f()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 808
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    return v0
.end method

.method h()V
    .locals 1

    .prologue
    .line 1363
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1364
    return-void
.end method

.method i()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1886
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    .line 1887
    const-string v0, "RecyclerView"

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :goto_0
    return-void

    .line 1890
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1891
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 1892
    iput-boolean v9, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    .line 1894
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    .line 1896
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$State;->b(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    :goto_1
    iput-object v0, v1, Landroid/support/v7/widget/RecyclerView$State;->c:Landroid/support/v4/util/ArrayMap;

    .line 1898
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->h:Z

    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 1900
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView$State;->a(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->b(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1901
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->d:I

    .line 1903
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$State;->b(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1905
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1906
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1907
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v10

    move v8, v7

    .line 1908
    :goto_2
    if-ge v8, v10, :cond_4

    .line 1909
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1910
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1908
    :cond_1
    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :cond_2
    move-object v0, v6

    .line 1896
    goto :goto_1

    .line 1913
    :cond_3
    iget-object v5, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 1914
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v11, v0, Landroid/support/v7/widget/RecyclerView$State;->a:Landroid/support/v4/util/ArrayMap;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v11, v1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1918
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$State;->a(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1925
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 1927
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->c:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_6

    .line 1928
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v1

    move v0, v7

    .line 1929
    :goto_4
    if-ge v0, v1, :cond_6

    .line 1930
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 1931
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1932
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 1933
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$State;->c:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$State;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1939
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$State;->c(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    .line 1940
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v1, v7}, Landroid/support/v7/widget/RecyclerView$State;->a(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1942
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 1943
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView$State;->a(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1945
    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move v1, v7

    .line 1946
    :goto_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 1948
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v4

    .line 1949
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1946
    :cond_7
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_8
    move v2, v7

    .line 1952
    :goto_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    if-ge v2, v0, :cond_21

    .line 1953
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1954
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    if-ne v0, v4, :cond_9

    move v0, v9

    .line 1959
    :goto_8
    if-nez v0, :cond_7

    .line 1960
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-direct {v0, v2, v5, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1952
    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 1965
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 1966
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->c()V

    move-object v8, v3

    .line 1983
    :goto_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->d:I

    .line 1984
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0, v7}, Landroid/support/v7/widget/RecyclerView$State;->b(Landroid/support/v7/widget/RecyclerView$State;I)I

    .line 1987
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0, v7}, Landroid/support/v7/widget/RecyclerView$State;->b(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1988
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 1990
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0, v7}, Landroid/support/v7/widget/RecyclerView$State;->a(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1991
    iput-object v6, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 1994
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$State;->b(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_d

    move v0, v9

    :goto_a
    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView$State;->c(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1996
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$State;->b(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1998
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->c:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_e

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object v9, v0

    .line 2000
    :goto_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v11

    move v10, v7

    .line 2001
    :goto_c
    if-ge v10, v11, :cond_11

    .line 2002
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 2003
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2001
    :goto_d
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_c

    .line 1968
    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 1970
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->e()V

    .line 1971
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->c:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_20

    .line 1972
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v1

    move v0, v7

    .line 1973
    :goto_e
    if-ge v0, v1, :cond_20

    .line 1974
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 1975
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1976
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 1977
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$State;->c:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$State;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v7

    .line 1994
    goto/16 :goto_a

    :cond_e
    move-object v9, v6

    .line 1998
    goto :goto_b

    .line 2006
    :cond_f
    iget-object v5, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 2007
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v2

    .line 2008
    if-eqz v9, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->c:Landroid/support/v4/util/ArrayMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2009
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 2011
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$State;->b:Landroid/support/v4/util/ArrayMap;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v12, v1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 2015
    :cond_11
    invoke-direct {p0, v8}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v4/util/ArrayMap;)V

    .line 2017
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 2018
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_13

    .line 2019
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 2020
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$State;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2021
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;

    .line 2022
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$State;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2024
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 2025
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 2026
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;)V

    .line 2018
    :cond_12
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    .line 2030
    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 2031
    if-lez v0, :cond_17

    .line 2032
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_10
    if-ltz v3, :cond_17

    .line 2033
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v3}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 2034
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$State;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;

    .line 2035
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$State;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$State;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 2037
    :cond_14
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$State;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2038
    if-eqz v8, :cond_16

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 2040
    :goto_11
    iget v4, v1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->b:I

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->c:I

    invoke-direct {p0, v0, v2, v4, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/graphics/Rect;II)V

    .line 2032
    :cond_15
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_10

    :cond_16
    move-object v2, v6

    .line 2038
    goto :goto_11

    .line 2046
    :cond_17
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v10

    move v8, v7

    .line 2047
    :goto_12
    if-ge v8, v10, :cond_1a

    .line 2048
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 2049
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;

    .line 2050
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;

    .line 2051
    if-eqz v3, :cond_19

    if-eqz v5, :cond_19

    .line 2052
    iget v0, v3, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->b:I

    iget v2, v5, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->b:I

    if-ne v0, v2, :cond_18

    iget v0, v3, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->c:I

    iget v2, v5, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->c:I

    if-eq v0, v2, :cond_19

    .line 2053
    :cond_18
    invoke-virtual {v1, v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Z)V

    .line 2058
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget v2, v3, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->b:I

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->c:I

    iget v4, v5, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->b:I

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->c:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2060
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 2047
    :cond_19
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_12

    .line 2066
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->c:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 2068
    :goto_13
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_14
    if-ltz v2, :cond_1e

    .line 2069
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2070
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->c:Landroid/support/v4/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 2071
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 2072
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2068
    :cond_1b
    :goto_15
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_14

    :cond_1c
    move v0, v7

    .line 2066
    goto :goto_13

    .line 2077
    :cond_1d
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->a(Landroid/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->a(Landroid/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2079
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_15

    .line 2085
    :cond_1e
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2086
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 2087
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$State;->d:I

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->c(Landroid/support/v7/widget/RecyclerView$State;I)I

    .line 2088
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 2089
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0, v7}, Landroid/support/v7/widget/RecyclerView$State;->c(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2090
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0, v7}, Landroid/support/v7/widget/RecyclerView$State;->d(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2091
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->D:Z

    .line 2092
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-static {v0, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)Z

    .line 2093
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->a(Landroid/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2094
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->a(Landroid/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2096
    :cond_1f
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iput-object v6, v0, Landroid/support/v7/widget/RecyclerView$State;->c:Landroid/support/v4/util/ArrayMap;

    goto/16 :goto_0

    :cond_20
    move-object v8, v6

    goto/16 :goto_9

    :cond_21
    move v0, v7

    goto/16 :goto_8
.end method

.method j()V
    .locals 4

    .prologue
    .line 2252
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v2

    .line 2253
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 2254
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2255
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    .line 2253
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2257
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->i()V

    .line 2258
    return-void
.end method

.method k()V
    .locals 4

    .prologue
    .line 2361
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v1

    .line 2362
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2363
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 2368
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2369
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b()V

    .line 2362
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2372
    :cond_1
    return-void
.end method

.method l()V
    .locals 4

    .prologue
    .line 2375
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v1

    .line 2376
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2377
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 2378
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2379
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a()V

    .line 2376
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2382
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->h()V

    .line 2383
    return-void
.end method

.method m()V
    .locals 5

    .prologue
    .line 2497
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->b()I

    move-result v1

    .line 2498
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_7

    .line 2499
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 2501
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2498
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2504
    :cond_1
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2505
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_1

    .line 2506
    :cond_3
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2507
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget v4, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->a(I)I

    move-result v3

    .line 2508
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f()I

    move-result v4

    if-ne v4, v3, :cond_6

    .line 2510
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->v()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2511
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget v4, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    invoke-virtual {v3, v2, v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1

    .line 2516
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_1

    .line 2521
    :cond_6
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(I)V

    .line 2522
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_1

    .line 2526
    :cond_7
    return-void
.end method

.method n()V
    .locals 4

    .prologue
    .line 2533
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->c()I

    move-result v1

    .line 2534
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2535
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 2536
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2537
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(I)V

    .line 2534
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2540
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->j()V

    .line 2541
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->g()V

    .line 2542
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1409
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1410
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    .line 1411
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    .line 1412
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(Landroid/support/v7/widget/RecyclerView;)V

    .line 1415
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->V:Z

    .line 1416
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1420
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1421
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->c()V

    .line 1424
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    .line 1426
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 1427
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    .line 1428
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 1429
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1431
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1432
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 2323
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2325
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2326
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 2327
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p0, v3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2326
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2329
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/high16 v7, 0x3f00

    const/4 v2, 0x1

    .line 1547
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1548
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    .line 1622
    :cond_0
    :goto_0
    return v2

    .line 1552
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d()Z

    move-result v0

    .line 1553
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e()Z

    move-result v4

    .line 1555
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    if-nez v5, :cond_2

    .line 1556
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 1558
    :cond_2
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1560
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v5

    .line 1561
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v6

    .line 1563
    packed-switch v5, :pswitch_data_0

    .line 1622
    :cond_3
    :goto_1
    :pswitch_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    if-eq v0, v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 1565
    :pswitch_1
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 1566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    .line 1567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    .line 1569
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1570
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1571
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto :goto_1

    .line 1576
    :pswitch_2
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 1577
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    .line 1578
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    goto :goto_1

    .line 1582
    :pswitch_3
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 1583
    if-gez v5, :cond_4

    .line 1584
    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1586
    goto/16 :goto_0

    .line 1589
    :cond_4
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v6

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 1590
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 1591
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    if-eq v7, v2, :cond_3

    .line 1592
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    sub-int/2addr v6, v7

    .line 1593
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    sub-int/2addr v5, v7

    .line 1595
    if-eqz v0, :cond_8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    if-le v0, v7, :cond_8

    .line 1596
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    if-gez v6, :cond_6

    move v0, v1

    :goto_2
    mul-int/2addr v0, v8

    add-int/2addr v0, v7

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    move v0, v2

    .line 1599
    :goto_3
    if-eqz v4, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    if-le v4, v6, :cond_5

    .line 1600
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    if-gez v5, :cond_7

    :goto_4
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    move v0, v2

    .line 1603
    :cond_5
    if-eqz v0, :cond_3

    .line 1604
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1605
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 1596
    goto :goto_2

    :cond_7
    move v1, v2

    .line 1600
    goto :goto_4

    .line 1611
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1615
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1

    .line 1619
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    goto/16 :goto_1

    :cond_8
    move v0, v3

    goto :goto_3

    .line 1563
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2236
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 2237
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->i()V

    .line 2238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2239
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    .line 2240
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1739
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    if-eqz v0, :cond_0

    .line 1740
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 1741
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    .line 1743
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$State;->a(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1748
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->b(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1754
    :goto_0
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    .line 1755
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 1758
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 1759
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->d:I

    .line 1764
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 1765
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0, v3}, Landroid/support/v7/widget/RecyclerView$State;->b(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1766
    return-void

    .line 1751
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->e()V

    .line 1752
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0, v3}, Landroid/support/v7/widget/RecyclerView$State;->b(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    goto :goto_0

    .line 1761
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    iput v3, v0, Landroid/support/v7/widget/RecyclerView$State;->d:I

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 691
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 692
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 693
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/os/Parcelable;)V

    .line 696
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 677
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 678
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->k:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;->a(Landroid/support/v7/widget/RecyclerView$SavedState;Landroid/support/v7/widget/RecyclerView$SavedState;)V

    .line 686
    :goto_0
    return-object v0

    .line 680
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 681
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    goto :goto_0

    .line 683
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1770
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1771
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 1772
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->h()V

    .line 1774
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v8, 0x3f00

    const/4 v2, 0x1

    .line 1627
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1628
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    .line 1715
    :goto_0
    return v2

    .line 1632
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d()Z

    move-result v5

    .line 1633
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e()Z

    move-result v6

    .line 1635
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 1636
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 1638
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1640
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1641
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v7

    .line 1643
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1645
    :pswitch_1
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 1646
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    .line 1647
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    goto :goto_0

    .line 1651
    :pswitch_2
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 1652
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    .line 1653
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    goto :goto_0

    .line 1657
    :pswitch_3
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1658
    if-gez v0, :cond_2

    .line 1659
    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1661
    goto/16 :goto_0

    .line 1664
    :cond_2
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    add-float/2addr v4, v8

    float-to-int v4, v4

    .line 1665
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v7, v0

    .line 1666
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    if-eq v0, v2, :cond_4

    .line 1667
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    sub-int v0, v4, v0

    .line 1668
    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    sub-int v8, v7, v8

    .line 1670
    if-eqz v5, :cond_f

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    if-le v9, v10, :cond_f

    .line 1671
    iget v9, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    if-gez v0, :cond_6

    move v0, v1

    :goto_1
    mul-int/2addr v0, v10

    add-int/2addr v0, v9

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    move v0, v2

    .line 1674
    :goto_2
    if-eqz v6, :cond_3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    if-le v9, v10, :cond_3

    .line 1675
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    iget v9, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    if-gez v8, :cond_7

    :goto_3
    mul-int/2addr v1, v9

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    move v0, v2

    .line 1678
    :cond_3
    if-eqz v0, :cond_4

    .line 1679
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1680
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1683
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    if-ne v0, v2, :cond_5

    .line 1684
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    sub-int v0, v4, v0

    .line 1685
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    sub-int v8, v7, v1

    .line 1686
    if-eqz v5, :cond_8

    neg-int v0, v0

    move v1, v0

    :goto_4
    if-eqz v6, :cond_9

    neg-int v0, v8

    :goto_5
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    .line 1689
    :cond_5
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    .line 1690
    iput v7, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 1671
    goto :goto_1

    :cond_7
    move v1, v2

    .line 1675
    goto :goto_3

    :cond_8
    move v1, v3

    .line 1686
    goto :goto_4

    :cond_9
    move v0, v3

    goto :goto_5

    .line 1694
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1698
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    int-to-float v7, v7

    invoke-virtual {v0, v1, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1699
    if-eqz v5, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    move v1, v0

    .line 1701
    :goto_6
    if-eqz v6, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    invoke-static {v0, v5}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    .line 1703
    :goto_7
    cmpl-float v5, v1, v4

    if-nez v5, :cond_a

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_b

    :cond_a
    float-to-int v1, v1

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->c(II)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1704
    :cond_b
    invoke-direct {p0, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1706
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1707
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    goto/16 :goto_0

    :cond_d
    move v1, v4

    .line 1699
    goto :goto_6

    :cond_e
    move v0, v4

    .line 1701
    goto :goto_7

    .line 1711
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    goto/16 :goto_0

    :cond_f
    move v0, v3

    goto/16 :goto_2

    .line 1643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2101
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 2102
    if-eqz v0, :cond_0

    .line 2103
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2104
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->k()V

    .line 2110
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)V

    .line 2111
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 2112
    return-void

    .line 2105
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1386
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, p0, v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 1387
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1388
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1389
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1390
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/graphics/Rect;

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 1392
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1393
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1397
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2244
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-nez v0, :cond_0

    .line 2245
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2249
    :goto_0
    return-void

    .line 2247
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->y:Z

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 947
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 948
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->d()Z

    move-result v1

    .line 952
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->e()Z

    move-result v2

    .line 953
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 954
    :cond_1
    if-eqz v1, :cond_3

    :goto_0
    if-eqz v2, :cond_4

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    .line 956
    :cond_2
    return-void

    :cond_3
    move p1, v0

    .line 954
    goto :goto_0

    :cond_4
    move p2, v0

    goto :goto_1
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 941
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RecyclerView does not support scrolling to an absolute position."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 1
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    .line 322
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 323
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .parameter

    .prologue
    .line 563
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 564
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 565
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .parameter

    .prologue
    .line 498
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    if-eq p1, v0, :cond_0

    .line 499
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->h()V

    .line 501
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->l:Z

    .line 502
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 503
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 506
    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0
    .parameter

    .prologue
    .line 485
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    .line 486
    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V
    .locals 2
    .parameter

    .prologue
    .line 1788
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->c()V

    .line 1790
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->a(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 1792
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 1793
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    .line 1794
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->a(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 1796
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1
    .parameter

    .prologue
    .line 798
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->a(I)V

    .line 799
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 3
    .parameter

    .prologue
    .line 648
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    .line 673
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    .line 654
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 657
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 659
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->a()V

    .line 660
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->a()V

    .line 661
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 662
    if-eqz p1, :cond_4

    .line 663
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 664
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 668
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_4

    .line 669
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->c(Landroid/support/v7/widget/RecyclerView;)V

    .line 672
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .parameter

    .prologue
    .line 903
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 904
    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V
    .locals 1
    .parameter

    .prologue
    .line 772
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->a(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    .line 773
    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V
    .locals 0
    .parameter

    .prologue
    .line 632
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    .line 633
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4
    .parameter

    .prologue
    .line 518
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 519
    packed-switch p1, :pswitch_data_0

    .line 521
    const-string v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    .line 532
    :goto_0
    return-void

    .line 529
    :pswitch_1
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    goto :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V
    .locals 1
    .parameter

    .prologue
    .line 783
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->a(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V

    .line 784
    return-void
.end method
