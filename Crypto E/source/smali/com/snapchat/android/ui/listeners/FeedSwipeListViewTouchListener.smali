.class public Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;
.super Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;

.field private final h:F

.field private i:Z

.field private j:I

.field private k:Z

.field private l:Landroid/content/Context;

.field private m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

.field private n:Lcom/snapchat/android/chat/FeedIconManager;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;Landroid/content/Context;Lcom/snapchat/android/fragments/feed/FeedAdapter;Lcom/snapchat/android/chat/FeedIconManager;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;-><init>(Landroid/widget/ListView;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeDirection;Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener$SwipeableListItemInterface;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->i:Z

    .line 64
    iput-object p3, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;

    .line 65
    const/high16 v0, 0x4200

    invoke-static {v0, p4}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->h:F

    .line 66
    iput-object p4, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->l:Landroid/content/Context;

    .line 67
    iput-object p5, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    .line 68
    iput-object p6, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->n:Lcom/snapchat/android/chat/FeedIconManager;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;)F
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->h:F

    return v0
.end method

.method private a(Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)Landroid/animation/Animator;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x12c

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v3

    .line 308
    iget-object v0, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x4000

    div-float/2addr v0, v4

    .line 309
    iget-object v4, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a:Landroid/widget/TextView;

    const-string v5, "translationY"

    new-array v6, v1, [F

    aput v0, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 311
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->as()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->ak()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 313
    :goto_0
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 314
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->U()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/snapchat/android/util/DateTimeUtils;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 316
    const v7, 0x7f0c0209

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    iget-object v6, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    const-string v7, "alpha"

    new-array v8, v1, [F

    const/high16 v9, 0x3f80

    aput v9, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 319
    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 320
    new-instance v7, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$4;

    invoke-direct {v7, p0, p1, v3}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$4;-><init>(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 329
    iget-object v3, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    const-string v7, "alpha"

    new-array v8, v1, [F

    aput v12, v8, v2

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 330
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 331
    new-instance v7, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$5;

    invoke-direct {v7, p0, p1, p2}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$5;-><init>(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 353
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 355
    iget-object v6, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;

    invoke-interface {v6}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;->b()Z

    move-result v6

    if-nez v6, :cond_0

    .line 356
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 360
    :cond_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 361
    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 362
    iget-object v6, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    const-string v7, "alpha"

    new-array v1, v1, [F

    aput v12, v1, v2

    invoke-static {v6, v7, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 363
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 364
    new-instance v2, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;

    invoke-direct {v2, p0, v5, p1, p2}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$6;-><init>(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;Landroid/animation/AnimatorSet;Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 394
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;

    invoke-interface {v0}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    :cond_1
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 399
    :goto_1
    return-object v3

    :cond_2
    move v0, v2

    .line 311
    goto/16 :goto_0

    .line 397
    :cond_3
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1
.end method

.method static synthetic a(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)Landroid/animation/Animator;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a(Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 404
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 405
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 406
    const-string v0, ""

    .line 410
    :goto_0
    return-object v0

    .line 407
    :cond_0
    if-eqz v0, :cond_1

    .line 408
    const-string p1, ""

    .line 410
    :cond_1
    const v0, 0x7f0c00f5

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 219
    if-nez p1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    .line 221
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->ay()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;

    invoke-interface {v1}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->aw()Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v5

    .line 229
    if-nez v5, :cond_2

    .line 230
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->n:Lcom/snapchat/android/chat/FeedIconManager;

    invoke-virtual {v1, p2, v2}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 232
    :cond_2
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v6

    .line 234
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->as()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->ak()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 236
    :goto_1
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->U()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/snapchat/android/util/DateTimeUtils;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 237
    const v4, 0x7f0c0209

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 238
    if-eqz v1, :cond_4

    .line 239
    const v1, 0x7f0c016e

    invoke-virtual {v6, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    :goto_2
    invoke-static {v6, v7, v1}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    iget-object v4, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v4, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080042

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v4, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 250
    iput-boolean v3, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->e:Z

    .line 251
    iget-object v2, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 252
    iget-object v2, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAnimation()V

    .line 253
    iget-object v2, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAnimation()V

    .line 254
    invoke-virtual {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a()V

    .line 255
    iget-object v2, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-direct {p0, v0, p2}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a(Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    .line 257
    invoke-direct {p0, p2}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 258
    iget-object v0, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 234
    goto :goto_1

    .line 240
    :cond_4
    if-eqz v5, :cond_6

    .line 241
    invoke-interface {v5}, Lcom/snapchat/android/model/chat/ChatFeedItem;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 262
    :cond_5
    iget-object v1, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x4000

    div-float/2addr v1, v4

    .line 263
    iget-object v4, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a:Landroid/widget/TextView;

    const-string v5, "translationY"

    new-array v2, v2, [F

    const/high16 v6, -0x4080

    mul-float/2addr v1, v6

    aput v1, v2, v3

    invoke-static {v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 264
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 265
    new-instance v2, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$3;

    invoke-direct {v2, p0, v0, p2}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$3;-><init>(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    iput-object v1, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    .line 290
    invoke-direct {p0, p2}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 291
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    :cond_6
    move-object v1, v4

    goto/16 :goto_2
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 4
    .parameter

    .prologue
    .line 296
    const-wide/16 v0, 0xce4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 298
    iget-object v2, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->m:Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-virtual {v2}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->a()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    .line 133
    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "teamsnapchat"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->k:Z

    .line 137
    invoke-direct {p0}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->c()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->k:Z

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->l:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->x:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 147
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->c()V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;)Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 195
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->e:Landroid/view/View;

    if-nez v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->e:Landroid/view/View;

    const v1, 0x7f0a01d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 199
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->h:F

    invoke-direct {v1, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 200
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 201
    new-instance v2, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$2;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$2;-><init>(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 215
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 150
    iget-boolean v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->k:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    .line 152
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "teamsnapchat"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const v1, 0x7f0a01d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_0

    .line 157
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->h:F

    invoke-direct {v2, v4, v3, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 158
    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 159
    new-instance v3, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;

    invoke-direct {v3, p0, p2, p1, v1}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$1;-><init>(Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;ILandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 190
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 191
    iget-object v0, v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-static {}, Lcom/snapchat/android/util/SnapListItemHandler;->a()Lcom/snapchat/android/util/SnapListItemHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/util/SnapListItemHandler;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;

    invoke-interface {v1, p2}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;->a(Landroid/view/MotionEvent;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 79
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 85
    :cond_3
    invoke-static {v1}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    move-result v2

    .line 86
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 118
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/ui/listeners/SwipeableListItemTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 121
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 123
    :pswitch_0
    iget-object v2, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->f:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a(Landroid/view/View;Lcom/snapchat/android/model/chat/ChatConversation;)V

    goto :goto_0

    .line 89
    :pswitch_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->i:Z

    .line 90
    iput v3, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->j:I

    .line 91
    invoke-direct {p0}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->b()V

    .line 92
    if-eqz v2, :cond_4

    goto :goto_0

    .line 97
    :pswitch_2
    invoke-static {}, Lcom/snapchat/android/util/SnapListItemHandler;->a()Lcom/snapchat/android/util/SnapListItemHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/util/SnapListItemHandler;->e()V

    .line 98
    iget-boolean v3, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->i:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->d:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->g:Z

    if-nez v3, :cond_4

    .line 99
    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->ao()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 100
    invoke-static {}, Lcom/snapchat/android/chat/SendingMailman;->a()Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 101
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/util/eventbus/RetryFailedSnapEvent;

    invoke-direct {v4}, Lcom/snapchat/android/util/eventbus/RetryFailedSnapEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 102
    if-nez v2, :cond_0

    .line 106
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->a:Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;

    invoke-interface {v0, p2}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener$FeedTouchInterface;->b(Landroid/view/MotionEvent;)Z

    .line 107
    invoke-direct {p0}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->d()V

    goto :goto_1

    .line 111
    :pswitch_3
    iget v2, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->j:I

    sub-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 112
    iget v4, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->b:I

    if-le v2, v4, :cond_6

    iput-boolean v0, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->i:Z

    .line 113
    :cond_6
    iput v3, p0, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->j:I

    .line 114
    invoke-direct {p0}, Lcom/snapchat/android/ui/listeners/FeedSwipeListViewTouchListener;->b()V

    goto :goto_1

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 121
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
