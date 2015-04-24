.class public Lcom/snapchat/android/ui/FitWidthImageResourceView;
.super Lcom/snapchat/android/ui/ImageResourceView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/ImageResourceView;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/ImageResourceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/ui/ImageResourceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/ui/ImageResourceView;->onMeasure(II)V

    .line 28
    iget-object v0, p0, Lcom/snapchat/android/ui/FitWidthImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/FitWidthImageResourceView;->a:Lcom/snapchat/android/ui/ImageResource;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ImageResource;->c()Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->c:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    if-ne v0, v1, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FitWidthImageResourceView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 32
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 33
    if-lez v2, :cond_0

    .line 34
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/ui/FitWidthImageResourceView;->setMeasuredDimension(II)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/FitWidthImageResourceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 45
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v0, v1, v0

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/snapchat/android/ui/FitWidthImageResourceView;->setMeasuredDimension(II)V

    goto :goto_0
.end method
