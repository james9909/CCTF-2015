.class public Lcom/snapchat/android/ui/SendToBottomPanelView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/HorizontalScrollView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/animation/Animator;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->g:Z

    .line 32
    iput-boolean v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->h:Z

    .line 44
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 45
    const v1, 0x7f040076

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    const v0, 0x7f0a0278

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->a:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f0a0279

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->b:Landroid/widget/HorizontalScrollView;

    .line 49
    const v0, 0x7f0a027a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->c:Landroid/widget/LinearLayout;

    .line 50
    const v0, 0x7f0a027b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->d:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0a027c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->e:Landroid/widget/TextView;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/SendToBottomPanelView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/ui/SendToBottomPanelView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->e:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->f:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->f:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->e:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 92
    iget-object v1, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->d:Landroid/widget/TextView;

    const-string v2, "translationY"

    new-array v3, v7, [F

    const/high16 v4, -0x4080

    mul-float/2addr v4, v0

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 95
    new-instance v2, Lcom/snapchat/android/ui/SendToBottomPanelView$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/ui/SendToBottomPanelView$1;-><init>(Lcom/snapchat/android/ui/SendToBottomPanelView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    iget-object v2, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->e:Landroid/widget/TextView;

    const-string v3, "alpha"

    new-array v4, v7, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 115
    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 116
    iget-object v3, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->d:Landroid/widget/TextView;

    const-string v4, "translationY"

    new-array v5, v7, [F

    aput v0, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 119
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 120
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 123
    new-instance v0, Lcom/snapchat/android/ui/SendToBottomPanelView$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/SendToBottomPanelView$2;-><init>(Lcom/snapchat/android/ui/SendToBottomPanelView;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 137
    iput-object v3, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->f:Landroid/animation/Animator;

    .line 138
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 142
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 144
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 145
    if-eqz p1, :cond_0

    .line 146
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setVisibility(I)V

    .line 150
    :goto_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->h:Z

    .line 152
    return-void

    .line 148
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getScrollView()Landroid/widget/HorizontalScrollView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->b:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method public getSendButton()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAnimationEnd()V

    .line 157
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->h:Z

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->a(Z)V

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->g:Z

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setVisibility(I)V

    .line 163
    :cond_1
    return-void
.end method

.method protected onAnimationStart()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 167
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAnimationStart()V

    .line 169
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SendToBottomPanelView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->g:Z

    .line 171
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SendToBottomPanelView;->setVisibility(I)V

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->g:Z

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->b:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void
.end method

.method public setSendButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public setSendButtonOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lcom/snapchat/android/ui/SendToBottomPanelView;->a:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
