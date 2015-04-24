.class public Lcom/snapchat/android/ui/FitWidthViewGroup;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/FitWidthViewGroup$Gravity;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/ui/FitWidthViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/ui/FitWidthViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const-string v0, "FitWidthViewGroup"

    iput-object v0, p0, Lcom/snapchat/android/ui/FitWidthViewGroup;->a:Ljava/lang/String;

    .line 18
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/FitWidthViewGroup;->b:I

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/FitWidthViewGroup;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 48
    sget-object v0, Lcom/snapchat/android/R$styleable;->FitWidthViewGroup:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/FitWidthViewGroup;->setGravity(I)V

    .line 50
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method


# virtual methods
.method public getGravity()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/snapchat/android/ui/FitWidthViewGroup;->c:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 75
    sub-int v3, p5, p3

    .line 76
    sub-int v4, p4, p2

    .line 78
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FitWidthViewGroup;->getChildCount()I

    move-result v5

    move v2, v1

    .line 79
    :goto_0
    if-ge v2, v5, :cond_0

    .line 80
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/FitWidthViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 81
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 82
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 84
    sub-int v0, v4, v8

    div-int/lit8 v9, v0, 0x2

    .line 88
    iget v0, p0, Lcom/snapchat/android/ui/FitWidthViewGroup;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 100
    :goto_1
    add-int/2addr v8, v9

    add-int/2addr v7, v0

    invoke-virtual {v6, v9, v0, v8, v7}, Landroid/view/View;->layout(IIII)V

    .line 79
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 90
    :pswitch_1
    sub-int v0, v3, v7

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 93
    :pswitch_2
    sub-int v0, v3, v7

    .line 94
    goto :goto_1

    .line 102
    :cond_0
    return-void

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 60
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 63
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FitWidthViewGroup;->getChildCount()I

    move-result v2

    .line 64
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 65
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/FitWidthViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 66
    iget v4, p0, Lcom/snapchat/android/ui/FitWidthViewGroup;->b:I

    invoke-virtual {v3, v1, v4}, Landroid/view/View;->measure(II)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 3
    .parameter

    .prologue
    .line 108
    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FitWidthViewGroup cannot have gravity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    iput p1, p0, Lcom/snapchat/android/ui/FitWidthViewGroup;->c:I

    .line 112
    return-void
.end method
