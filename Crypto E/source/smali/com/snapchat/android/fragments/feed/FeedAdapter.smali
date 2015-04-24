.class public Lcom/snapchat/android/fragments/feed/FeedAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;,
        Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/snapchat/android/model/chat/ChatConversation;",
        ">;",
        "Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface",
        "<",
        "Lcom/snapchat/android/model/chat/ChatConversation;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/snapchat/android/util/debug/ExceptionReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;

.field private final c:Lcom/snapchat/android/util/ListViewAdapterList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/util/ListViewAdapterList",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/snapchat/android/chat/FeedIconManager;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/snapchat/android/fragments/feed/FeedFilter;

.field private g:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/snapchat/android/util/ListViewAdapterList;Lcom/snapchat/android/chat/FeedIconManager;Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/snapchat/android/util/ListViewAdapterList",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;",
            "Lcom/snapchat/android/chat/FeedIconManager;",
            "Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    const v0, 0x7f04004b

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->h:Ljava/util/Map;

    .line 84
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 85
    iput-object p2, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->c:Lcom/snapchat/android/util/ListViewAdapterList;

    .line 86
    iput-object p2, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->e:Ljava/util/List;

    .line 87
    iput-object p3, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->d:Lcom/snapchat/android/chat/FeedIconManager;

    .line 88
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->b:Landroid/view/LayoutInflater;

    .line 89
    iput-object p4, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->g:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;

    .line 90
    return-void
.end method

.method private a(Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;)Landroid/animation/Animator;
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x12c

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 307
    iget-object v0, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 308
    iget-object v1, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a:Landroid/widget/TextView;

    const-string v2, "translationY"

    new-array v3, v4, [F

    aput v0, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 309
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 310
    iget-object v2, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    const-string v3, "alpha"

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 314
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 315
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 317
    new-instance v3, Lcom/snapchat/android/fragments/feed/FeedAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/snapchat/android/fragments/feed/FeedAdapter$1;-><init>(Lcom/snapchat/android/fragments/feed/FeedAdapter;Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 327
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 328
    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/snapchat/android/util/ListViewAdapterList;Lcom/snapchat/android/chat/FeedIconManager;Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;)Lcom/snapchat/android/fragments/feed/FeedAdapter;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/snapchat/android/util/ListViewAdapterList",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;",
            "Lcom/snapchat/android/chat/FeedIconManager;",
            "Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;",
            ")",
            "Lcom/snapchat/android/fragments/feed/FeedAdapter;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/snapchat/android/fragments/feed/FeedAdapter;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/snapchat/android/fragments/feed/FeedAdapter;-><init>(Landroid/content/Context;Lcom/snapchat/android/util/ListViewAdapterList;Lcom/snapchat/android/chat/FeedIconManager;Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;)V

    .line 77
    invoke-virtual {p1, v0}, Lcom/snapchat/android/util/ListViewAdapterList;->a(Landroid/widget/BaseAdapter;)V

    .line 78
    return-object v0
.end method

.method private a(Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem;
    .locals 8
    .parameter
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 273
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->d:Lcom/snapchat/android/chat/FeedIconManager;

    invoke-virtual {v0, p2, v6}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 275
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->ax()Ljava/util/List;

    move-result-object v1

    .line 277
    iget-object v0, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->h:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v0, v1, p2}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setDisplayedIcon(Ljava/util/List;Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 278
    iget-object v0, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->h:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v0, v6}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setVisibility(I)V

    .line 279
    iget-object v0, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->i:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 280
    iget-object v0, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->j:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const/4 v0, 0x0

    .line 283
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 286
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 287
    instance-of v1, v0, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 288
    check-cast v1, Lcom/snapchat/android/model/ReceivedSnap;

    .line 289
    invoke-virtual {v1}, Lcom/snapchat/android/model/ReceivedSnap;->N()D

    move-result-wide v2

    .line 290
    invoke-virtual {v1}, Lcom/snapchat/android/model/ReceivedSnap;->K()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 291
    iget-object v2, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/snapchat/android/model/ReceivedSnap;->N()D

    move-result-wide v4

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :cond_0
    invoke-virtual {v1}, Lcom/snapchat/android/model/ReceivedSnap;->Z()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 295
    iget-object v1, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->h:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v1, v7}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setVisibility(I)V

    .line 303
    :cond_1
    :goto_0
    return-object v0

    .line 297
    :cond_2
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->V()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 299
    iget-object v1, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->h:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v1, v7}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 6
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 217
    const-string v0, ""

    .line 218
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->U()J

    move-result-wide v2

    .line 219
    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/util/DateTimeUtils;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_0
    if-eqz p3, :cond_2

    .line 224
    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-interface {p3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v0, v1

    .line 253
    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    return-void

    .line 230
    :cond_3
    instance-of v0, p3, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v0, :cond_7

    .line 231
    check-cast p3, Lcom/snapchat/android/model/ReceivedSnap;

    .line 232
    invoke-virtual {p3}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 233
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->h:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->h:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->g:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 236
    invoke-virtual {p1}, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b()V

    move-object v0, v1

    goto :goto_0

    .line 238
    :cond_5
    invoke-virtual {p1}, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a()V

    .line 239
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->g:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 240
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->h:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 241
    const-wide/16 v2, 0xbb8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 242
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->h:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->h:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 245
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->a(Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    .line 246
    iget-object v0, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 247
    iget-object v0, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private a(Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;ZLcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 6
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const v4, 0x7f0c0209

    .line 163
    invoke-direct {p0, p1, p2, p4}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->b(Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 164
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->ay()Z

    move-result v1

    if-nez v1, :cond_2

    .line 171
    :cond_0
    iget-object v1, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->e:Z

    .line 173
    iget-object v1, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->d:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 175
    :cond_1
    iget-object v1, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 176
    iget-object v1, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 179
    :cond_2
    iget-object v1, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->g:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;

    invoke-interface {v1}, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 182
    invoke-static {v0}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v1

    .line 183
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/snapchat/android/util/FriendUtils;->c(Ljava/lang/String;Lcom/snapchat/android/model/User;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 184
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->aC()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    iget-object v1, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_0
    iget-object v0, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :goto_1
    return-void

    .line 188
    :cond_3
    iget-object v1, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->U()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/util/DateTimeUtils;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 192
    :cond_4
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->aC()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 193
    iget-object v1, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 195
    :cond_5
    iget-object v1, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->U()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/util/DateTimeUtils;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 199
    :cond_6
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->ay()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 200
    if-eqz p4, :cond_7

    .line 202
    invoke-direct {p0, p1, p2, p4}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->a(Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    goto :goto_1

    .line 204
    :cond_7
    invoke-virtual {p1}, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b()V

    goto :goto_1

    .line 207
    :cond_8
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->ao()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 208
    iget-object v1, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 211
    :cond_9
    invoke-direct {p0, p1, p2, p4}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->a(Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    goto :goto_1
.end method

.method private b(Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 5
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v4, 0x0

    .line 257
    iget-object v0, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/snapchat/android/chat/ConversationUtils;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->ak()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->as()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->al()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p3, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p3, Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {p3}, Lcom/snapchat/android/model/ReceivedSnap;->N()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 265
    :cond_0
    iget-object v0, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 1
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    return-object v0
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->h:Ljava/util/Map;

    return-object v0
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
    .line 339
    if-nez p1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->c:Lcom/snapchat/android/util/ListViewAdapterList;

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->e:Ljava/util/List;

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->g:Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedAdapterInterface;->a(Ljava/util/List;)V

    .line 345
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->notifyDataSetChanged()V

    .line 346
    return-void

    .line 342
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->e:Ljava/util/List;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->f:Lcom/snapchat/android/fragments/feed/FeedFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/snapchat/android/fragments/feed/FeedFilter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->c:Lcom/snapchat/android/util/ListViewAdapterList;

    iget-object v2, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->a:Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-direct {v0, v1, v2, p0}, Lcom/snapchat/android/fragments/feed/FeedFilter;-><init>(Ljava/util/List;Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->f:Lcom/snapchat/android/fragments/feed/FeedFilter;

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->f:Lcom/snapchat/android/fragments/feed/FeedFilter;

    return-object v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->a(I)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    if-nez p2, :cond_1

    .line 103
    new-instance v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    invoke-direct {v1}, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f04004b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 105
    const v0, 0x7f0a01d5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->f:Landroid/widget/FrameLayout;

    .line 106
    const v0, 0x7f0a01d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->g:Landroid/widget/ImageView;

    .line 107
    const v0, 0x7f0a01d8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FeedReplayAnimationView;

    iput-object v0, v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->h:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    .line 108
    const v0, 0x7f0a016b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->a:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0a01db

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0a01d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->i:Landroid/widget/ProgressBar;

    .line 111
    const v0, 0x7f0a01dc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->j:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0a006e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->k:Landroid/view/View;

    .line 113
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->e:Ljava/util/List;

    monitor-enter v2

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/feed/FeedAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 121
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    if-nez v0, :cond_2

    .line 143
    :cond_0
    :goto_1
    return-object p2

    .line 115
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 126
    :cond_2
    iget-object v2, v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 127
    iput-object v0, v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->c:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 129
    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->a(Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v3

    .line 130
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/snapchat/android/fragments/feed/FeedAdapter;->a(Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;ZLcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 132
    iget-object v2, v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->ak()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f02002d

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 137
    iget-object v0, v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 138
    iget-object v0, v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 139
    iget-object v0, v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, v1, Lcom/snapchat/android/fragments/feed/FeedAdapter$FeedViewHolder;->b:Landroid/widget/TextView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    .line 132
    :cond_3
    const v0, 0x7f02002c

    goto :goto_2
.end method
