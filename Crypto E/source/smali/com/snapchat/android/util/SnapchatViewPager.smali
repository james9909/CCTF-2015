.class public Lcom/snapchat/android/util/SnapchatViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/ShiftAnimator$ShiftAnimatorInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/snapchat/android/util/SnapchatPagerAdapter;

.field private d:I

.field private e:I

.field private f:F

.field private g:Lcom/snapchat/android/util/eventbus/UserSwipedIntoChatEvent;

.field private h:Lcom/snapchat/android/analytics/NetworkAnalytics;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 54
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->a:Z

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->b:Z

    .line 44
    iput v1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->d:I

    .line 45
    iput v1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->e:I

    .line 47
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->f:F

    .line 50
    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->h:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 55
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/SnapchatViewPager;->setOffscreenPageLimit(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->a:Z

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->b:Z

    .line 44
    iput v1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->d:I

    .line 45
    iput v1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->e:I

    .line 47
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->f:F

    .line 50
    invoke-static {}, Lcom/snapchat/android/analytics/NetworkAnalytics;->a()Lcom/snapchat/android/analytics/NetworkAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->h:Lcom/snapchat/android/analytics/NetworkAnalytics;

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/SnapchatViewPager;->setOffscreenPageLimit(I)V

    .line 62
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->g:Lcom/snapchat/android/util/eventbus/UserSwipedIntoChatEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->g:Lcom/snapchat/android/util/eventbus/UserSwipedIntoChatEvent;

    iget-object v0, v0, Lcom/snapchat/android/util/eventbus/UserSwipedIntoChatEvent;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->g:Lcom/snapchat/android/util/eventbus/UserSwipedIntoChatEvent;

    iget-object v0, v0, Lcom/snapchat/android/util/eventbus/UserSwipedIntoChatEvent;->a:Landroid/view/View;

    const v1, 0x7f0a01d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    new-instance v1, Lcom/snapchat/android/util/ShiftAnimator;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/snapchat/android/util/ShiftAnimator;-><init>(Landroid/view/View;IILcom/snapchat/android/util/ShiftAnimator$ShiftAnimatorInterface;)V

    .line 138
    invoke-virtual {v1}, Lcom/snapchat/android/util/ShiftAnimator;->a()V

    .line 141
    iget-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->g:Lcom/snapchat/android/util/eventbus/UserSwipedIntoChatEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->g:Lcom/snapchat/android/util/eventbus/UserSwipedIntoChatEvent;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/snapchat/android/util/eventbus/UserSwipedIntoChatEvent;->a:Landroid/view/View;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->g:Lcom/snapchat/android/util/eventbus/UserSwipedIntoChatEvent;

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;->b:Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    .line 166
    :goto_0
    return-object v0

    .line 149
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    :cond_2
    :goto_1
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->f:F

    .line 166
    sget-object v0, Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;->b:Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->f:F

    goto :goto_1

    .line 154
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->f:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 157
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->d:I

    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->e:I

    if-eqz v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->d:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->e:I

    if-nez v0, :cond_2

    .line 159
    :cond_4
    sget-object v0, Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;->a:Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private e()V
    .locals 2

    .prologue
    .line 179
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 180
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 184
    const-string v1, "SnapchatViewPager"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->g:Lcom/snapchat/android/util/eventbus/UserSwipedIntoChatEvent;

    .line 104
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 249
    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->f()V

    .line 250
    return-void
.end method

.method public b(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;
    .locals 1
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->c:Lcom/snapchat/android/util/SnapchatPagerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->c:Lcom/snapchat/android/util/SnapchatPagerAdapter;

    invoke-virtual {v0, p0, p1}, Lcom/snapchat/android/util/SnapchatPagerAdapter;->b(Landroid/view/ViewGroup;I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->h:Lcom/snapchat/android/analytics/NetworkAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/NetworkAnalytics;->c()V

    .line 254
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->h:Lcom/snapchat/android/analytics/NetworkAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/NetworkAnalytics;->d()V

    .line 258
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->y(Z)V

    .line 262
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public onAllowAccessToChatFragmentEvent(Lcom/snapchat/android/util/eventbus/AllowAccessToChatFragmentEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 119
    iget-boolean v0, p1, Lcom/snapchat/android/util/eventbus/AllowAccessToChatFragmentEvent;->a:Z

    iput-boolean v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->b:Z

    .line 120
    return-void
.end method

.method public onArtificialMotionDown(Lcom/snapchat/android/util/eventbus/SimulatedViewPagerDownEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/SimulatedViewPagerDownEvent;->a:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/SnapchatViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 125
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_1

    move v0, v1

    .line 72
    :goto_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/SnapchatViewPager;->a(Landroid/view/MotionEvent;)Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    move-result-object v3

    .line 73
    iget-boolean v4, p0, Lcom/snapchat/android/util/SnapchatViewPager;->a:Z

    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;->a:Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    if-ne v3, v0, :cond_2

    :cond_0
    move v1, v2

    .line 82
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 71
    goto :goto_0

    .line 78
    :cond_2
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onPageScrolled(IFI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    .line 195
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 197
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->d:I

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->d:I

    .line 198
    :cond_0
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->e:I

    if-ne v0, v1, :cond_1

    iput p3, p0, Lcom/snapchat/android/util/SnapchatViewPager;->e:I

    .line 200
    :cond_1
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    if-eq p1, v2, :cond_4

    :cond_2
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->d:I

    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->e:I

    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    if-eq p1, v4, :cond_4

    :cond_3
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->d:I

    if-nez v0, :cond_5

    if-ne p1, v2, :cond_5

    .line 203
    :cond_4
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    invoke-direct {v1, v5}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 204
    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->SWIPE:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    .line 207
    :cond_5
    if-ne p1, v4, :cond_6

    cmpl-float v0, p2, v3

    if-eqz v0, :cond_8

    :cond_6
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->d:I

    if-ne v0, v2, :cond_7

    if-gt p1, v2, :cond_8

    :cond_7
    iget v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->d:I

    if-ne v0, v4, :cond_9

    if-ge p1, v4, :cond_9

    .line 210
    :cond_8
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/TitleBarEvent;

    invoke-direct {v1, v4}, Lcom/snapchat/android/util/eventbus/TitleBarEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 213
    :cond_9
    if-nez p1, :cond_a

    iget-boolean v0, p0, Lcom/snapchat/android/util/SnapchatViewPager;->b:Z

    if-nez v0, :cond_a

    .line 214
    invoke-direct {p0}, Lcom/snapchat/android/util/SnapchatViewPager;->e()V

    .line 217
    :cond_a
    if-ne p1, v4, :cond_b

    cmpl-float v0, p2, v3

    if-nez v0, :cond_b

    .line 218
    iput-boolean v5, p0, Lcom/snapchat/android/util/SnapchatViewPager;->b:Z

    .line 221
    :cond_b
    if-nez p3, :cond_c

    .line 222
    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    .line 223
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapchatViewPager;->b()V

    .line 231
    :cond_c
    :goto_0
    iput p1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->d:I

    .line 232
    iput p3, p0, Lcom/snapchat/android/util/SnapchatViewPager;->e:I

    .line 234
    const-string v0, "SnapchatViewPager"

    const-string v1, "onPageScrolled position [%d] offset [%d]"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/snapchat/android/util/SnapchatViewPager;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/snapchat/android/util/SnapchatViewPager;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v5, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 235
    return-void

    .line 224
    :cond_d
    if-ne p1, v4, :cond_e

    .line 225
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapchatViewPager;->c()V

    goto :goto_0

    .line 226
    :cond_e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 227
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapchatViewPager;->d()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    .line 285
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 286
    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(I)V

    .line 287
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/SnapchatViewPager;->a(Landroid/view/MotionEvent;)Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    move-result-object v1

    .line 89
    sget-object v2, Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;->a:Lcom/snapchat/android/util/SnapchatViewPager$MotionHandledEnum;

    if-ne v1, v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    iget-boolean v1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->a:Z

    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 97
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onUserFlingedIntoChatEvent(Lcom/snapchat/android/util/eventbus/UserFlingedIntoChatEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 113
    iput-boolean v1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->b:Z

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/util/SnapchatViewPager;->setCurrentItem(IZ)V

    .line 115
    return-void
.end method

.method public onUserSwipedIntoChatEvent(Lcom/snapchat/android/util/eventbus/UserSwipedIntoChatEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 108
    iput-object p1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->g:Lcom/snapchat/android/util/eventbus/UserSwipedIntoChatEvent;

    .line 109
    return-void
.end method

.method public setAdapter(Lcom/snapchat/android/util/SnapchatPagerAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 66
    iput-object p1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->c:Lcom/snapchat/android/util/SnapchatPagerAdapter;

    .line 67
    return-void
.end method

.method public setChatFragmentAccessible(Z)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->b:Z

    .line 239
    return-void
.end method

.method public setPagingEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/snapchat/android/util/SnapchatViewPager;->a:Z

    .line 246
    return-void
.end method
