.class public Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener$SelectableListItemInterface;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener$SelectableListItemInterface;

.field private c:I

.field private d:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(ILcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener$SelectableListItemInterface;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->c:I

    .line 35
    iput-object p2, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->b:Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener$SelectableListItemInterface;

    .line 36
    iput p1, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->c:I

    .line 37
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 65
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 68
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->c:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->c:I

    .line 71
    iget v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->c:I

    const/16 v1, 0x12c

    invoke-static {p1, v2, v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;III)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->d:Landroid/animation/ValueAnimator;

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 74
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->b:Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener$SelectableListItemInterface;

    invoke-interface {v0}, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener$SelectableListItemInterface;->b()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->a:Landroid/view/View;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->b:Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener$SelectableListItemInterface;

    invoke-interface {v0}, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener$SelectableListItemInterface;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->c(Landroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->d:Landroid/animation/ValueAnimator;

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->b:Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener$SelectableListItemInterface;

    invoke-interface {v0}, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener$SelectableListItemInterface;->a()V

    .line 59
    :cond_3
    :goto_0
    return-void

    .line 53
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 54
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->b:Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener$SelectableListItemInterface;

    iget-object v1, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener$SelectableListItemInterface;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/listeners/SelectableListItemOnClickListener;->a(Landroid/view/View;)V

    goto :goto_0
.end method
