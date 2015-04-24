.class public Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$HideButtonRunnable;
    }
.end annotation


# instance fields
.field private a:Lcom/snapchat/android/ui/SnapEditorView;

.field private b:Lcom/snapchat/android/ui/CanvasViewBase;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/view/View;

.field private e:Z

.field private f:Z

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/ImageButton;

.field private j:Z

.field private k:Landroid/widget/ImageButton;

.field private l:Landroid/widget/ImageButton;

.field private m:I

.field private n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

.field private o:Landroid/view/View;

.field private p:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;

.field private q:Landroid/os/Handler;

.field private r:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$HideButtonRunnable;

.field private s:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->e:Z

    .line 54
    iput-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->f:Z

    .line 59
    iput-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->j:Z

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->q:Landroid/os/Handler;

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->s:J

    .line 440
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->k()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->k:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->o()V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->r()V

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->j:Z

    return v0
.end method

.method static synthetic f(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->q()V

    return-void
.end method

.method static synthetic g(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->p()V

    return-void
.end method

.method static synthetic h(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->t()V

    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->getNumberOfStrokes()I

    move-result v0

    if-lez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    if-nez v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->j:Z

    if-eqz v0, :cond_1

    .line 283
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/Mediabryo;->I()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 288
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Mediabryo;->H()V

    goto :goto_1
.end method

.method private n()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->k:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$2;-><init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$3;-><init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$4;-><init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->i:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$5;-><init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->l:Landroid/widget/ImageButton;

    new-instance v1, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$6;-><init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 334
    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getDrawingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->h:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 341
    :goto_0
    iget-boolean v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->e:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->e:Z

    .line 342
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    iget-boolean v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->e:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->setDrawingEnabled(Z)V

    .line 343
    return-void

    .line 338
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->i()V

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 348
    new-instance v1, Lcom/snapchat/android/util/cache/SaveImageToGalleryTask;

    iget-object v2, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/SnapEditorView;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/snapchat/android/util/cache/SaveImageToGalleryTask;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/cache/SaveImageToGalleryTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 350
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 353
    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    if-nez v1, :cond_0

    move-object v1, v0

    .line 354
    :goto_0
    if-nez v1, :cond_1

    .line 355
    :goto_1
    new-instance v1, Lcom/snapchat/android/util/cache/SaveVideoToGalleryTask;

    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/snapchat/android/util/cache/SaveVideoToGalleryTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/cache/SaveVideoToGalleryTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 356
    return-void

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v1

    goto :goto_0

    .line 354
    :cond_1
    invoke-virtual {v1}, Lcom/snapchat/android/model/Mediabryo;->I()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method private r()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->c()V

    .line 360
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->getNumberOfStrokes()I

    move-result v0

    if-lez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 362
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getLastColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->i:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->o:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    iget v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->m:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->a(I)V

    .line 389
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->m:I

    .line 390
    return-void
.end method

.method private t()V
    .locals 4

    .prologue
    .line 412
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 413
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 414
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 415
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->s:J

    .line 416
    const v1, 0x7f0a02c2

    invoke-virtual {p0, v1}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 417
    const v1, 0x7f0a02c8

    invoke-virtual {p0, v1}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 418
    const v1, 0x7f0a02c0

    invoke-virtual {p0, v1}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 419
    return-void
.end method

.method private u()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/high16 v1, 0x3f80

    .line 422
    iget-wide v2, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->s:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 423
    :cond_0
    const v0, 0x5368d4a5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->s:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float/2addr v0, v2

    const/high16 v2, 0x43c8

    div-float/2addr v0, v2

    .line 424
    iput-wide v6, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->s:J

    .line 425
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    move v0, v1

    .line 427
    :cond_1
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    mul-float/2addr v0, v3

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 428
    const-wide/16 v0, 0x190

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 429
    const v0, 0x7f0a02c2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 430
    const v0, 0x7f0a02c8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 431
    const v0, 0x7f0a02c0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Mediabryo;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 198
    iput-boolean v2, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->j:Z

    .line 199
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 209
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n()V

    .line 211
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->j:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setIsVideoSnap(Z)V

    .line 213
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->p:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;

    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->setMediabryo(Lcom/snapchat/android/model/Mediabryo;)V

    .line 219
    :goto_1
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->s()V

    .line 220
    return-void

    .line 203
    :cond_1
    iput-boolean v3, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->j:Z

    .line 204
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    invoke-direct {v1, v3}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->p:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;)V

    goto :goto_1
.end method

.method public e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 224
    iget-boolean v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->f:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    if-nez v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    new-instance v0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$1;

    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c002d

    invoke-virtual {p0, v2}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$1;-><init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->show()V

    .line 243
    const/4 v0, 0x1

    goto :goto_0

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    if-eqz v1, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->k()V

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->k:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBottom()I

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public onColorPickedEvent(Lcom/snapchat/android/util/eventbus/ColorPickedEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/ColorPickedEvent;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->setColor(I)V

    .line 437
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 438
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->G()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 78
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 79
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "SnapKidzPreviewFragment"

    const-string v1, "mSnapCapturedEvent is null. Getting a new one from LandingPageActivity"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/SnapkidzHomeActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapkidzHomeActivity;->a()Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    .line 89
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;-><init>(Lcom/snapchat/android/model/Mediabryo;)V

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->f:Z

    .line 92
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->x:Landroid/view/View;

    .line 121
    :goto_0
    return-object v0

    .line 98
    :cond_0
    const v0, 0x7f04007f

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->x:Landroid/view/View;

    .line 101
    const v0, 0x7f0a02c5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->o:Landroid/view/View;

    .line 102
    const v0, 0x7f0a02c3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d:Landroid/view/View;

    .line 103
    const v0, 0x7f0a02c0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->k:Landroid/widget/ImageButton;

    .line 104
    const v0, 0x7f0a02c1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->c:Landroid/widget/ImageButton;

    .line 105
    const v0, 0x7f0a02c4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->g:Landroid/widget/ImageButton;

    .line 106
    const v0, 0x7f0a02c6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->i:Landroid/widget/ImageButton;

    .line 107
    const v0, 0x7f0a02c9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->l:Landroid/widget/ImageButton;

    .line 108
    const v0, 0x7f0a02c2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->h:Landroid/view/View;

    .line 110
    const v0, 0x7f0a02bf

    invoke-virtual {p0, v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SnapEditorView;

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ui/SnapEditorView;->setInterface(Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewInterface;)V

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCanvasView()Lcom/snapchat/android/ui/CanvasViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    .line 114
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b()V

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getLastColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 121
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->x:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroy()V

    .line 184
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Mediabryo;->H()V

    .line 185
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    .line 187
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->G()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 188
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 189
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 190
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroyView()V

    .line 157
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->b()V

    .line 175
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->G()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 176
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 177
    invoke-virtual {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 178
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

    .line 394
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->r:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$HideButtonRunnable;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->r:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$HideButtonRunnable;

    invoke-virtual {v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$HideButtonRunnable;->a()V

    .line 396
    iput-object v3, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->r:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$HideButtonRunnable;

    .line 399
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/DrawingEvent;->a()Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->b:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    if-ne v0, v1, :cond_2

    .line 400
    new-instance v0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$HideButtonRunnable;

    invoke-direct {v0, p0, v3}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$HideButtonRunnable;-><init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$1;)V

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->r:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$HideButtonRunnable;

    .line 401
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->r:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$HideButtonRunnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    :cond_1
    :goto_0
    return-void

    .line 402
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/DrawingEvent;->a()Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;->a:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    if-ne v0, v1, :cond_1

    .line 403
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->u()V

    .line 405
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CanvasViewBase;->getLastColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 139
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->f()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CanvasViewBase;->a()V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->a()Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->p:Lcom/snapchat/android/ui/SnapEditorView$SnapEditorViewBundle;

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SnapEditorView;->c()V

    .line 151
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 127
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/SnapEditorView;->getCaptionView()Lcom/snapchat/android/ui/caption/SnapCaptionView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b:Lcom/snapchat/android/ui/CanvasViewBase;

    iget-boolean v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->e:Z

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/CanvasViewBase;->setDrawingEnabled(Z)V

    .line 130
    iget-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->e:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->i()V

    .line 133
    :cond_0
    return-void
.end method

.method protected s_()V
    .locals 3

    .prologue
    .line 255
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 257
    iget-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v0

    instance-of v0, v0, Lcom/snapchat/android/model/Snapbryo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Snapbryo;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snapbryo;->B()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangeOrientationEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 262
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->j:Z

    if-eqz v0, :cond_1

    .line 263
    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a:Lcom/snapchat/android/ui/SnapEditorView;

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    invoke-virtual {v0}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Snapbryo;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/SnapEditorView;->a(Lcom/snapchat/android/model/Snapbryo;)V

    .line 265
    :cond_1
    return-void
.end method
