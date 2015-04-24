.class public Lcom/snapchat/android/InAppNotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/InAppNotificationManager$NotificationItem;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/content/res/Resources;

.field private d:I

.field private e:Z

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/animation/AnimatorSet;

.field private m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/snapchat/android/InAppNotificationManager$NotificationItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const v2, 0x7f09005f

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/InAppNotificationManager;->e:Z

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->m:Ljava/util/Queue;

    .line 59
    iput-object p2, p0, Lcom/snapchat/android/InAppNotificationManager;->f:Landroid/view/View;

    .line 60
    const v0, 0x7f0a0200

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->g:Landroid/view/View;

    .line 61
    const v0, 0x7f0a01d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->h:Landroid/view/View;

    .line 62
    const v0, 0x7f0a0202

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->i:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0a0203

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->j:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0a0201

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->k:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->c:Landroid/content/res/Resources;

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->c:Landroid/content/res/Resources;

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/InAppNotificationManager;->b:I

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/InAppNotificationManager;->a:I

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->c:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/InAppNotificationManager;->d:I

    .line 69
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/InAppNotificationManager;->a(I)V

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/InAppNotificationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/snapchat/android/InAppNotificationManager;->d()V

    return-void
.end method

.method private b(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->l:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->f:Landroid/view/View;

    const-string v1, "translationY"

    new-array v2, v7, [F

    neg-int v3, p1

    int-to-float v3, v3

    aput v3, v2, v5

    aput v4, v2, v6

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/snapchat/android/InAppNotificationManager$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/InAppNotificationManager$1;-><init>(Lcom/snapchat/android/InAppNotificationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    iget-object v1, p0, Lcom/snapchat/android/InAppNotificationManager;->f:Landroid/view/View;

    const-string v2, "translationY"

    new-array v3, v7, [F

    aput v4, v3, v5

    neg-int v4, p1

    int-to-float v4, v4

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 201
    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 202
    new-instance v2, Lcom/snapchat/android/InAppNotificationManager$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/InAppNotificationManager$2;-><init>(Lcom/snapchat/android/InAppNotificationManager;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 222
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/snapchat/android/InAppNotificationManager;->l:Landroid/animation/AnimatorSet;

    .line 223
    iget-object v2, p0, Lcom/snapchat/android/InAppNotificationManager;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 224
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 225
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 136
    invoke-direct {p0}, Lcom/snapchat/android/InAppNotificationManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/snapchat/android/InAppNotificationManager;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;

    .line 139
    iget-object v1, p0, Lcom/snapchat/android/InAppNotificationManager;->f:Landroid/view/View;

    iget v2, v0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->d:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 140
    iget-object v1, p0, Lcom/snapchat/android/InAppNotificationManager;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 141
    iget v2, v0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->f:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    iget-object v2, p0, Lcom/snapchat/android/InAppNotificationManager;->f:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget v1, v0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->a:I

    if-nez v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/snapchat/android/InAppNotificationManager;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    :goto_0
    iget-object v1, v0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->b:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/snapchat/android/InAppNotificationManager;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    :goto_1
    iget-object v1, v0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->c:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    .line 160
    iget-object v1, p0, Lcom/snapchat/android/InAppNotificationManager;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    :goto_2
    iget-object v1, p0, Lcom/snapchat/android/InAppNotificationManager;->g:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/snapchat/android/InAppNotificationManager;->h:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget v0, v0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->f:I

    invoke-direct {p0, v0}, Lcom/snapchat/android/InAppNotificationManager;->b(I)V

    .line 172
    :cond_1
    return-void

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/InAppNotificationManager;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v1, p0, Lcom/snapchat/android/InAppNotificationManager;->k:Landroid/widget/ImageView;

    iget v2, v0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/snapchat/android/InAppNotificationManager;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcom/snapchat/android/InAppNotificationManager;->i:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, p0, Lcom/snapchat/android/InAppNotificationManager;->i:Landroid/widget/TextView;

    iget v2, v0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 162
    :cond_4
    iget-object v1, p0, Lcom/snapchat/android/InAppNotificationManager;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/snapchat/android/InAppNotificationManager;->j:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/snapchat/android/InAppNotificationManager;->j:Landroid/widget/TextView;

    iget v2, v0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/snapchat/android/InAppNotificationManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget v0, p0, Lcom/snapchat/android/InAppNotificationManager;->b:I

    invoke-direct {p0, v0}, Lcom/snapchat/android/InAppNotificationManager;->b(I)V

    .line 122
    :cond_0
    return-void
.end method

.method protected a(I)V
    .locals 2
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->f:Landroid/view/View;

    iget-boolean v1, p0, Lcom/snapchat/android/InAppNotificationManager;->e:Z

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    return-void

    .line 228
    :cond_0
    const/16 p1, 0x8

    goto :goto_0
.end method

.method public a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;III)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v8, p0, Lcom/snapchat/android/InAppNotificationManager;->m:Ljava/util/Queue;

    new-instance v0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;-><init>(Lcom/snapchat/android/InAppNotificationManager;ILjava/lang/CharSequence;Ljava/lang/CharSequence;III)V

    invoke-interface {v8, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 109
    invoke-direct {p0}, Lcom/snapchat/android/InAppNotificationManager;->d()V

    .line 110
    return-void
.end method

.method public a(Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;)V
    .locals 7
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->d:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/snapchat/android/InAppNotificationManager;->a()V

    .line 99
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->e:Z

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->c:Landroid/content/res/Resources;

    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->c:Landroid/content/res/Resources;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 88
    :goto_1
    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->h:Z

    if-eqz v0, :cond_2

    .line 89
    iget v6, p0, Lcom/snapchat/android/InAppNotificationManager;->a:I

    .line 94
    :goto_2
    iget v1, p1, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->a:I

    iget-object v2, p1, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->c:Ljava/lang/CharSequence;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/snapchat/android/InAppNotificationManager;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 83
    :cond_1
    iget v4, p1, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->f:I

    .line 84
    iget v5, p1, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->g:I

    goto :goto_1

    .line 91
    :cond_2
    iget v6, p0, Lcom/snapchat/android/InAppNotificationManager;->b:I

    goto :goto_2
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/snapchat/android/InAppNotificationManager;->e:Z

    .line 233
    iget-boolean v0, p0, Lcom/snapchat/android/InAppNotificationManager;->e:Z

    if-nez v0, :cond_0

    .line 234
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/InAppNotificationManager;->a(I)V

    .line 236
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/snapchat/android/InAppNotificationManager;->d:I

    int-to-float v0, v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 240
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
