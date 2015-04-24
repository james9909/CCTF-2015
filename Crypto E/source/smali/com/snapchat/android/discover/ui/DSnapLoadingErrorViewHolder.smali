.class public Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$3;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/view/ViewGroup;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/view/View;

.field private final h:Landroid/view/View;

.field private i:Z

.field private j:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/ui/DSnapView;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->i:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->j:Landroid/animation/Animator;

    .line 47
    const v0, 0x7f0a01ad

    invoke-virtual {p1, v0}, Lcom/snapchat/android/discover/ui/DSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a:Landroid/view/ViewGroup;

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a01b3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->h:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a01b2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->g:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a01b1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->e:Landroid/view/ViewGroup;

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a01b4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->f:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->e:Landroid/view/ViewGroup;

    new-instance v1, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$1;

    invoke-direct {v1, p0, p2}, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$1;-><init>(Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a01b0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->d:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a01ae

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->b:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0a01af

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->c:Landroid/widget/TextView;

    .line 66
    return-void
.end method

.method private a(JFZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a:Landroid/view/ViewGroup;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p3, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->j:Landroid/animation/Animator;

    .line 165
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->j:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->j:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3fc0

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->j:Landroid/animation/Animator;

    new-instance v1, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$2;

    invoke-direct {v1, p0, p4}, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$2;-><init>(Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 182
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->j:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 183
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->f:Landroid/widget/TextView;

    const v1, 0x7f0c0115

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 194
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 201
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->f:Landroid/widget/TextView;

    const v1, 0x7f0c00d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 199
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->e:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 110
    iget-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->i:Z

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->i:Z

    .line 115
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->j:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->j:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 118
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    .line 119
    const/high16 v1, 0x4396

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-long v2, v1

    .line 120
    const-string v1, "DSnapLoadingErrorViewHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOADING-STATE: Cancel slow and hide fast with duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-direct {p0, v2, v3, v0, v6}, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a(JFZ)V

    goto :goto_0

    .line 123
    :cond_1
    const-string v0, "DSnapLoadingErrorViewHolder"

    const-string v1, "LOADING-STATE: Hiding fast"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a(I)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->j:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string v0, "DSnapLoadingErrorViewHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOADING-STATE: Hiding with duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    int-to-long v0, p1

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a(JFZ)V

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/discover/model/MediaState;)V
    .locals 5
    .parameter

    .prologue
    const v2, 0x7f0c00ce

    const/4 v4, 0x0

    .line 76
    sget-object v0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder$3;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/MediaState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 93
    const v1, 0x7f0c00cb

    .line 94
    const v0, 0x7f020100

    .line 98
    :goto_0
    iget-object v3, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v2, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 102
    invoke-direct {p0, v4}, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a(Z)V

    .line 103
    return-void

    .line 78
    :pswitch_0
    const v2, 0x7f0c00ca

    .line 79
    const v1, 0x7f0c00c9

    .line 80
    const v0, 0x7f0200ff

    .line 81
    goto :goto_0

    .line 85
    :pswitch_1
    const v1, 0x7f0c00cd

    .line 86
    const v0, 0x7f020103

    .line 87
    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .prologue
    .line 132
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a(I)V

    .line 133
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->a:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->i:Z

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapLoadingErrorViewHolder;->j:Landroid/animation/Animator;

    .line 155
    return-void
.end method
