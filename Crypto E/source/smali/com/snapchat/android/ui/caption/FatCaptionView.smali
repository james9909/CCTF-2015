.class public Lcom/snapchat/android/ui/caption/FatCaptionView;
.super Lcom/snapchat/android/ui/caption/SnapCaptionView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/ui/caption/SnapCaptionView",
        "<",
        "Lcom/snapchat/android/ui/caption/FatCaptionEditText;",
        ">;"
    }
.end annotation


# instance fields
.field private f:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getOrientationAngle()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->f:D

    .line 39
    return-void
.end method

.method private a(DFFII)[F
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 157
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    .line 158
    move/from16 v0, p3

    float-to-double v2, v0

    mul-double/2addr v2, v6

    move/from16 v0, p4

    float-to-double v4, v0

    mul-double/2addr v4, v8

    sub-double v4, v2, v4

    .line 159
    move/from16 v0, p3

    float-to-double v2, v0

    mul-double/2addr v2, v8

    move/from16 v0, p4

    float-to-double v10, v0

    mul-double/2addr v10, v6

    add-double/2addr v2, v10

    .line 161
    sub-double v10, v6, v8

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_0

    .line 162
    iget v10, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->d:I

    int-to-double v10, v10

    add-double/2addr v4, v10

    .line 164
    :cond_0
    add-double/2addr v6, v8

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    .line 165
    iget v6, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->c:I

    int-to-double v6, v6

    add-double/2addr v2, v6

    .line 168
    :cond_1
    double-to-float v4, v4

    div-int/lit8 v5, p5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 169
    double-to-float v2, v2

    div-int/lit8 v3, p6, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 171
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v2, v3, v4

    return-object v3
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 43
    invoke-super {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a()Landroid/os/Bundle;

    move-result-object v1

    .line 44
    const-string v0, "captionPreviousXPercentageOnScreen"

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getCaptionPositionX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->d:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 46
    new-instance v2, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-direct {v2, v0}, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;-><init>(Lcom/snapchat/android/ui/caption/FatCaptionEditText;)V

    .line 47
    const-string v0, "captionPositionState"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    const-string v0, "captionLastOrientationAngle"

    iget-wide v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->f:D

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 49
    const-string v2, "captionInFreeMode"

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->j:Z

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    const-string v2, "captionScaleEdited"

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:Z

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 51
    return-object v1
.end method

.method protected a(Landroid/content/Context;)Lcom/snapchat/android/ui/caption/FatCaptionEditText;
    .locals 2
    .parameter

    .prologue
    .line 232
    new-instance v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getAttributes()Landroid/util/AttributeSet;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/os/Bundle;DLcom/snapchat/android/ui/caption/FatCaptionEditText;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    const-string v0, "captionInFreeMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p4, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->j:Z

    .line 82
    const-string v0, "captionScaleEdited"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p4, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->t:Z

    .line 84
    const-string v0, "captionPositionState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;

    .line 86
    iget-wide v2, v0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->h:D

    iput-wide v2, p4, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->s:D

    .line 87
    iget-wide v2, v0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->i:D

    iput-wide v2, p4, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->r:D

    .line 89
    iget-boolean v1, p4, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->j:Z

    if-nez v1, :cond_0

    .line 90
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p4}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/CaptionEditText;)V

    .line 92
    const-string v0, "captionPreviousXPercentageOnScreen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p4, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setCaptionPositionX(F)V

    .line 130
    :goto_0
    return-void

    .line 98
    :cond_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->a:F

    move v9, v1

    .line 99
    :goto_1
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->b:F

    move v8, v1

    .line 101
    :goto_2
    const-string v1, "captionLastOrientationAngle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 102
    sub-double/2addr v2, p2

    .line 103
    iput-wide p2, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->f:D

    .line 106
    iget-object v1, v0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->c:[F

    const/4 v4, 0x0

    aget v4, v1, v4

    .line 107
    iget-object v1, v0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->c:[F

    const/4 v5, 0x1

    aget v5, v1, v5

    .line 109
    iget v6, v0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->f:I

    .line 110
    iget v7, v0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->g:I

    move-object v1, p0

    .line 112
    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/ui/caption/FatCaptionView;->a(DFFII)[F

    move-result-object v1

    .line 114
    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v1, v1, v5

    invoke-virtual {p4, v4, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(FF)V

    .line 116
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v1, v9

    iput v1, p4, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->p:F

    .line 118
    iput v8, p4, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->q:F

    .line 120
    iget v1, p4, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->p:F

    invoke-virtual {p4, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setRotation(F)V

    .line 121
    iget v1, p4, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->q:F

    invoke-virtual {p4, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setScaleX(F)V

    .line 122
    iget v1, p4, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->q:F

    invoke-virtual {p4, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setScaleY(F)V

    .line 125
    invoke-virtual {p4, v6}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setMaxWidth(I)V

    .line 126
    invoke-virtual {p4, v7}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setMaxHeight(I)V

    .line 128
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 129
    const/4 v2, 0x1

    iget-wide v4, v0, Lcom/snapchat/android/ui/caption/FatCaptionParcelableState;->h:D

    double-to-float v0, v4

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    invoke-virtual {p4, v2, v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setTextSize(IF)V

    goto :goto_0

    .line 98
    :cond_1
    const/4 v1, 0x0

    move v9, v1

    goto :goto_1

    .line 99
    :cond_2
    const/high16 v1, 0x3f80

    move v8, v1

    goto :goto_2
.end method

.method public a(Landroid/os/Bundle;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    if-eqz p1, :cond_0

    const-string v0, "captionMaxLength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const-string v1, "captionMaxLength"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setMaxTextLengthInputFilter(I)V

    .line 59
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Landroid/os/Bundle;Z)V

    .line 60
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->c()V

    .line 61
    return-void
.end method

.method protected bridge synthetic a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/CaptionEditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    check-cast p3, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/ui/caption/FatCaptionView;->a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/FatCaptionEditText;)V

    return-void
.end method

.method protected a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/FatCaptionEditText;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    if-nez p2, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getOrientationAngle()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/snapchat/android/ui/caption/FatCaptionView;->a(Landroid/os/Bundle;DLcom/snapchat/android/ui/caption/FatCaptionEditText;)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/CaptionEditText;)V

    .line 142
    invoke-virtual {p3}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->l()V

    goto :goto_0
.end method

.method protected synthetic b(Landroid/content/Context;)Lcom/snapchat/android/ui/caption/CaptionEditText;
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/caption/FatCaptionView;->a(Landroid/content/Context;)Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->j:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getCaptionPositionX()I

    move-result v1

    iget v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->d:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->c:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getCaptionPositionY()I

    move-result v2

    iget v3, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->c:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->d:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(FF)V

    .line 75
    :cond_0
    return-void
.end method

.method protected c()V
    .locals 6

    .prologue
    .line 237
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->d:I

    iget v2, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->c:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d59999a

    mul-float/2addr v1, v2

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setMaxFontSize(D)V

    .line 238
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-object v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v1, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getMaxFontSize()D

    move-result-wide v2

    const-wide/high16 v4, 0x4010

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setMinFontSize(D)V

    .line 240
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->j:Z

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->m()V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setVerticalFadingEdgeEnabled(Z)V

    .line 245
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setFadingEdgeLength(I)V

    .line 246
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->g()V

    .line 247
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->j:Z

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->j()V

    .line 250
    :cond_1
    return-void
.end method

.method public getCaptionType()Lcom/snapchat/android/ui/caption/CaptionTypeEnums;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->b:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    return-object v0
.end method

.method protected getLayout()Landroid/content/res/XmlResourceParser;
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method protected getOrientationAngle()D
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/ViewUtils;->c(Landroid/content/Context;)I

    move-result v2

    .line 176
    packed-switch v2, :pswitch_data_0

    .line 186
    :goto_0
    :pswitch_0
    return-wide v0

    .line 180
    :pswitch_1
    const-wide v0, 0x3ff921fb54442d18L

    goto :goto_0

    .line 182
    :pswitch_2
    const-wide v0, 0x400921fb54442d18L

    goto :goto_0

    .line 184
    :pswitch_3
    const-wide v0, -0x4006de04abbbd2e8L

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCaptionColorPickedEvent(Lcom/snapchat/android/ui/caption/CaptionColorPickedEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/CaptionColorPickedEvent;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setColor(I)V

    .line 269
    return-void
.end method

.method public onEditCaptionEvent(Lcom/snapchat/android/util/eventbus/EditCaptionEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/EditCaptionEvent;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->setBackgroundColor(I)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onGlobalLayoutEvent(Lcom/snapchat/android/util/eventbus/GlobalLayoutEvent;)V
    .locals 3
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->j:Z

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->j()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->h:Z

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->d()V

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/FatCaptionView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 203
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    sub-int/2addr v0, v1

    .line 209
    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    .line 215
    iget v1, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->c:I

    sub-int/2addr v1, v0

    .line 216
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->getKeyboardHeight()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 217
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->setKeyboardHeight(I)V

    .line 218
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->h:Z

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/FatCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    check-cast v0, Lcom/snapchat/android/ui/caption/FatCaptionEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/FatCaptionEditText;->a(Z)V

    .line 223
    :cond_2
    return-void
.end method
