.class public Lcom/snapchat/android/ui/SelfScalingImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/SelfScalingImageView$1;,
        Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/SelfScalingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/ui/SelfScalingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/16 v0, 0x11

    iput v0, p0, Lcom/snapchat/android/ui/SelfScalingImageView;->a:I

    .line 47
    return-void
.end method

.method private static a(FF)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 233
    div-float v0, p0, p1

    return v0
.end method

.method protected static a(IIIII)Landroid/graphics/Rect;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 122
    invoke-static {p0, p1, p2, p3}, Lcom/snapchat/android/ui/SelfScalingImageView;->a(IIII)Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;

    move-result-object v0

    .line 124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 126
    invoke-static {p4}, Lcom/snapchat/android/util/ViewUtils;->e(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    iget v2, v0, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;->a:I

    sub-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 132
    :cond_0
    :goto_0
    invoke-static {p4}, Lcom/snapchat/android/util/ViewUtils;->c(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    iget v0, v0, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;->b:I

    sub-int/2addr v0, p3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 138
    :cond_1
    :goto_1
    return-object v1

    .line 128
    :cond_2
    invoke-static {p4}, Lcom/snapchat/android/util/ViewUtils;->f(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    iget v2, v0, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;->a:I

    sub-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 134
    :cond_3
    invoke-static {p4}, Lcom/snapchat/android/util/ViewUtils;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    iget v0, v0, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;->b:I

    sub-int/2addr v0, p3

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method protected static a(II)Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;
    .locals 1
    .parameter
    .parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;-><init>(II)V

    return-object v0
.end method

.method protected static a(IIII)Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 147
    int-to-float v0, p0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/SelfScalingImageView;->a(FF)F

    move-result v0

    .line 148
    int-to-float v1, p2

    int-to-float v2, p3

    invoke-static {v1, v2}, Lcom/snapchat/android/ui/SelfScalingImageView;->a(FF)F

    move-result v1

    .line 150
    div-float/2addr v0, v1

    .line 152
    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 154
    new-instance v0, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;

    mul-int v1, p0, p3

    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v1, p3}, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;-><init>(II)V

    .line 157
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;

    mul-int v1, p1, p2

    int-to-float v1, v1

    int-to-float v2, p0

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, p2, v1}, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;-><init>(II)V

    goto :goto_0
.end method

.method protected static a(IIIILandroid/widget/ImageView$ScaleType;)Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;
    .locals 3
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 182
    sget-object v0, Lcom/snapchat/android/ui/SelfScalingImageView$1;->a:[I

    invoke-virtual {p4}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScaleType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_0
    invoke-static {p2, p3}, Lcom/snapchat/android/ui/SelfScalingImageView;->a(II)Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    .line 186
    :pswitch_1
    invoke-static {p0, p1, p2, p3}, Lcom/snapchat/android/ui/SelfScalingImageView;->b(IIII)Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;

    move-result-object v0

    goto :goto_0

    .line 188
    :pswitch_2
    invoke-static {p0, p1, p2, p3}, Lcom/snapchat/android/ui/SelfScalingImageView;->c(IIII)Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;

    move-result-object v0

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    const-string v0, "SelfScalingImageView"

    const-string v1, "View has no parent. Aborting."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 76
    if-nez v1, :cond_2

    .line 77
    const-string v0, "SelfScalingImageView"

    const-string v1, "View has no background drawable. Aborting."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    invoke-static {v2, v1, v3, v0, v4}, Lcom/snapchat/android/ui/SelfScalingImageView;->a(IIIILandroid/widget/ImageView$ScaleType;)Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;

    move-result-object v0

    .line 87
    iget v1, v0, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;->a:I

    iget v0, v0, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;->b:I

    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/ui/SelfScalingImageView;->b(II)V

    goto :goto_0
.end method

.method protected static b(IIII)Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 202
    int-to-float v0, p0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/SelfScalingImageView;->a(FF)F

    move-result v0

    .line 203
    int-to-float v1, p2

    int-to-float v2, p3

    invoke-static {v1, v2}, Lcom/snapchat/android/ui/SelfScalingImageView;->a(FF)F

    move-result v1

    .line 205
    div-float v1, v0, v1

    .line 207
    const/high16 v0, 0x3f80

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    .line 209
    new-instance v0, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;

    int-to-float v2, p3

    div-float v1, v2, v1

    float-to-int v1, v1

    invoke-direct {v0, p2, v1}, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;-><init>(II)V

    .line 212
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;

    int-to-float v2, p2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v1, p3}, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;-><init>(II)V

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-direct {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getParentViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    const-string v0, "SelfScalingImageView"

    const-string v1, "View has no parent. Aborting."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 101
    if-nez v1, :cond_1

    .line 102
    const-string v0, "SelfScalingImageView"

    const-string v1, "View has no background drawable. Aborting."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v2, v3, :cond_2

    .line 107
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v4, p0, Lcom/snapchat/android/ui/SelfScalingImageView;->a:I

    invoke-static {v2, v1, v3, v0, v4}, Lcom/snapchat/android/ui/SelfScalingImageView;->a(IIIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 109
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/snapchat/android/ui/SelfScalingImageView;->setPadding(IIII)V

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/snapchat/android/ui/SelfScalingImageView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x2

    .line 172
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 173
    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to add this to a View first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    if-nez p1, :cond_1

    move p1, v0

    :cond_1
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 175
    if-nez p2, :cond_2

    :goto_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    invoke-virtual {p0, v1}, Lcom/snapchat/android/ui/SelfScalingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    return-void

    :cond_2
    move v0, p2

    .line 175
    goto :goto_0
.end method

.method protected static c(IIII)Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 218
    int-to-float v0, p0

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/snapchat/android/ui/SelfScalingImageView;->a(FF)F

    move-result v0

    .line 219
    int-to-float v1, p2

    int-to-float v2, p3

    invoke-static {v1, v2}, Lcom/snapchat/android/ui/SelfScalingImageView;->a(FF)F

    move-result v1

    .line 221
    div-float v1, v0, v1

    .line 223
    const/high16 v0, 0x3f80

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    .line 225
    new-instance v0, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;

    int-to-float v2, p2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {v0, v1, p3}, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;-><init>(II)V

    .line 228
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;

    int-to-float v2, p3

    div-float v1, v2, v1

    float-to-int v1, v1

    invoke-direct {v0, p2, v1}, Lcom/snapchat/android/ui/SelfScalingImageView$WidthHeightPair;-><init>(II)V

    goto :goto_0
.end method

.method private getParentViewGroup()Landroid/view/ViewGroup;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 164
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 165
    check-cast v0, Landroid/view/ViewGroup;

    .line 167
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setGravity(I)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput p1, p0, Lcom/snapchat/android/ui/SelfScalingImageView;->a:I

    .line 61
    invoke-direct {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->b()V

    .line 62
    invoke-direct {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->a()V

    .line 63
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    invoke-direct {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->b()V

    .line 53
    invoke-direct {p0}, Lcom/snapchat/android/ui/SelfScalingImageView;->a()V

    .line 54
    return-void
.end method
