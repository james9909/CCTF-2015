.class Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/ptr/PtrFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollChecker"
.end annotation


# instance fields
.field final synthetic a:Lin/srain/cube/views/ptr/PtrFrameLayout;

.field private b:I

.field private c:Landroid/widget/Scroller;

.field private d:Z

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 2
    .parameter

    .prologue
    .line 847
    iput-object p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    const/4 v0, 0x0

    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->d:Z

    .line 848
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->c:Landroid/widget/Scroller;

    .line 849
    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;)Z
    .locals 1
    .parameter

    .prologue
    .line 839
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->d:Z

    return v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 872
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    iget-object v0, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v1, "finish, mCurrentPos:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-static {v4}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lin/srain/cube/util/CLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 875
    :cond_0
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->c()V

    .line 876
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->d()V

    .line 877
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 880
    iput-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->d:Z

    .line 881
    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->b:I

    .line 882
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 883
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 886
    iget-boolean v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->d:Z

    if-eqz v0, :cond_1

    .line 887
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->c:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 890
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->c()V

    .line 891
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->c()V

    .line 893
    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 896
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 912
    :goto_0
    return-void

    .line 899
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-static {v0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)I

    move-result v0

    iput v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->e:I

    .line 900
    iput p1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->f:I

    .line 901
    iget v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->e:I

    sub-int v4, p1, v0

    .line 902
    sget-boolean v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    iget-object v0, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v2, "tryToScrollTo: start: %s, distance:%s, to:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v0, v2, v3}, Lin/srain/cube/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 905
    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 907
    iput v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->b:I

    .line 908
    new-instance v0, Landroid/widget/Scroller;

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v2}, Lin/srain/cube/views/ptr/PtrFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->c:Landroid/widget/Scroller;

    .line 909
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->c:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 910
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 911
    iput-boolean v7, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->d:Z

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 852
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    .line 853
    :goto_0
    iget-object v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->c:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 854
    iget v4, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->b:I

    sub-int v4, v3, v4

    .line 855
    sget-boolean v5, Lin/srain/cube/views/ptr/PtrFrameLayout;->a:Z

    if-eqz v5, :cond_1

    .line 856
    if-eqz v4, :cond_1

    .line 857
    iget-object v5, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    iget-object v5, v5, Lin/srain/cube/views/ptr/PtrFrameLayout;->b:Ljava/lang/String;

    const-string v6, "scroll: %s, start: %s, to: %s, mCurrentPos: %s, current :%s, last: %s, delta: %s"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v1

    iget v1, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v2

    const/4 v1, 0x2

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-static {v2}, Lin/srain/cube/views/ptr/PtrFrameLayout;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x5

    iget v2, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v5, v6, v7}, Lin/srain/cube/util/CLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 862
    :cond_1
    if-nez v0, :cond_3

    .line 863
    iput v3, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->b:I

    .line 864
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    int-to-float v1, v4

    invoke-static {v0, v1}, Lin/srain/cube/views/ptr/PtrFrameLayout;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;F)V

    .line 865
    iget-object v0, p0, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->a:Lin/srain/cube/views/ptr/PtrFrameLayout;

    invoke-virtual {v0, p0}, Lin/srain/cube/views/ptr/PtrFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 869
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 852
    goto :goto_0

    .line 867
    :cond_3
    invoke-direct {p0}, Lin/srain/cube/views/ptr/PtrFrameLayout$ScrollChecker;->b()V

    goto :goto_1
.end method
