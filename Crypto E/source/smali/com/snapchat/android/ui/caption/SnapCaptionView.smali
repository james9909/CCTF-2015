.class public abstract Lcom/snapchat/android/ui/caption/SnapCaptionView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/snapchat/android/ui/caption/CaptionEditText;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/res/XmlResourceParser;

.field protected b:Lcom/snapchat/android/ui/caption/CaptionEditText;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected c:I

.field protected d:I

.field protected e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    iput-boolean v3, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    .line 62
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 66
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setFocusable(Z)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setFocusableInTouchMode(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getLayout()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a:Landroid/content/res/XmlResourceParser;

    .line 70
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b(Landroid/content/Context;)Lcom/snapchat/android/ui/caption/CaptionEditText;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    .line 72
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iput-boolean v2, v1, Lcom/snapchat/android/ui/caption/CaptionEditText;->e:Z

    .line 73
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->d()Z

    .line 74
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c()V

    .line 75
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iput-boolean v3, v1, Lcom/snapchat/android/ui/caption/CaptionEditText;->e:Z

    .line 77
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setKeyboardManager(Landroid/view/inputmethod/InputMethodManager;)V

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCaptionPositionY(F)V

    .line 240
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->a(Z)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 6
    .parameter

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 120
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d59999a

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 122
    float-to-double v2, v1

    const-wide v4, 0x3ffaa7ef9db22d0eL

    mul-double/2addr v2, v4

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method protected a(FI)F
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 219
    iget v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 220
    int-to-float v1, p2

    add-float/2addr v1, v0

    iget v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 221
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 222
    sub-float/2addr v0, v1

    .line 224
    :cond_0
    return v0
.end method

.method public a()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    iget-object v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getKeyboardHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/model/UserPrefs;->a(ZI)V

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    const-string v1, "captionPreviousYPercentageOnScreen"

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getCaptionPositionY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 135
    const-string v1, "captionViewText"

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "isEditing"

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v2, v2, Lcom/snapchat/android/ui/caption/CaptionEditText;->h:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    const-string v1, "captionType"

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getCaptionType()Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string v1, "keyboardHeight"

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getKeyboardHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v1, "captionInitializationColorSpans"

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getColorSpans()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 141
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget v1, v1, Lcom/snapchat/android/ui/caption/CaptionEditText;->g:I

    if-lez v1, :cond_0

    .line 142
    const-string v1, "captionMaxLength"

    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget v2, v2, Lcom/snapchat/android/ui/caption/CaptionEditText;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    :cond_0
    return-object v0
.end method

.method public a(Landroid/os/Bundle;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 152
    if-nez p1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const-string v3, "keyboardHeight"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setKeyboardHeight(I)V

    .line 157
    const-string v2, "captionViewText"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    if-eqz v2, :cond_2

    .line 159
    iget-object v3, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iput-boolean v1, v3, Lcom/snapchat/android/ui/caption/CaptionEditText;->e:Z

    .line 160
    iget-object v3, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v3, v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v3, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iput-boolean v0, v3, Lcom/snapchat/android/ui/caption/CaptionEditText;->e:Z

    .line 163
    :cond_2
    if-nez p2, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setVisibility(I)V

    .line 169
    :goto_1
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCursorVisible(Z)V

    .line 170
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const-string v3, "isEditing"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/snapchat/android/ui/caption/CaptionEditText;->h:Z

    .line 172
    const-string v2, "captionInitializationColorSpans"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v3, v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setColorSpans(Ljava/util/ArrayList;)V

    .line 176
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {p0, p1, p2, v2}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/CaptionEditText;)V

    .line 179
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 180
    if-eqz p2, :cond_4

    .line 181
    iget-object v1, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->f()V

    .line 191
    :goto_2
    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/EditCaptionEvent;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->g()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/EditCaptionEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 166
    :cond_3
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setVisibility(I)V

    goto :goto_1

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->d()V

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setSelection(I)V

    .line 187
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCursorVisible(Z)V

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method protected a(Landroid/os/Bundle;ZLcom/snapchat/android/ui/caption/CaptionEditText;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "ZTT;)V"
        }
    .end annotation

    .prologue
    .line 205
    const-string v0, "captionPreviousYPercentageOnScreen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p3}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(FI)F

    move-result v0

    .line 208
    invoke-virtual {p3, v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCaptionPositionY(F)V

    .line 209
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->b(Z)V

    goto :goto_0
.end method

.method protected abstract b(Landroid/content/Context;)Lcom/snapchat/android/ui/caption/CaptionEditText;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getCaptionPositionY()I

    move-result v1

    iget v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->d:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCaptionPositionY(F)V

    .line 107
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 378
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->c(Z)V

    .line 379
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 372
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public d()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    iget-boolean v3, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    .line 87
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    .line 88
    iget-boolean v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    if-eq v0, v3, :cond_2

    .line 90
    :goto_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 91
    iget-boolean v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    invoke-static {v0, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/util/DisplayMetrics;Z)I

    move-result v2

    iput v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->d:I

    .line 92
    iget-boolean v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    invoke-static {v0, v2}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/util/DisplayMetrics;Z)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setLandscapeMode(Z)V

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->e:Z

    invoke-static {v2}, Lcom/snapchat/android/model/UserPrefs;->t(Z)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setKeyboardHeight(I)V

    .line 98
    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b()V

    .line 102
    :cond_0
    return v1

    :cond_1
    move v0, v2

    .line 87
    goto :goto_0

    :cond_2
    move v1, v2

    .line 88
    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(I)V

    .line 233
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a(Z)V

    .line 253
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->h:Z

    return v0
.end method

.method protected getAttributes()Landroid/util/AttributeSet;
    .locals 4

    .prologue
    .line 313
    const/4 v1, 0x0

    .line 315
    const/4 v2, 0x0

    .line 318
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a:Landroid/content/res/XmlResourceParser;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 322
    :goto_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 323
    iget-object v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a:Landroid/content/res/XmlResourceParser;

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EditText"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->a:Landroid/content/res/XmlResourceParser;

    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 330
    :goto_2
    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    :goto_3
    const-string v3, "SnapCaptionView"

    invoke-static {v3, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_1

    .line 328
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move-object v0, v1

    goto :goto_2

    .line 319
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method public getCaptionAnalyticsDetails()Lcom/snapchat/android/ui/caption/CaptionAnalyticData;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getAnalyticsDetails()Lcom/snapchat/android/ui/caption/CaptionAnalyticData;

    move-result-object v0

    return-object v0
.end method

.method protected getCaptionPositionX()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getLastSelectedPositionX()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getCaptionPositionY()I
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getLastSelectedPositionY()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCaptionTop()I
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getTop()I

    move-result v0

    return v0
.end method

.method public abstract getCaptionType()Lcom/snapchat/android/ui/caption/CaptionTypeEnums;
.end method

.method protected abstract getLayout()Landroid/content/res/XmlResourceParser;
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->i:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->d:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->c()Z

    move-result v0

    return v0
.end method

.method public onKeyDownEvent(Lcom/snapchat/android/util/eventbus/HardwareKeyEvent;)V
    .locals 4
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/caption/CaptionEditText;->h:Z

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/HardwareKeyEvent;->b:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-wide v0, 0x3fe3d70a3d70a3d7L

    iget v2, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setCaptionPositionY(I)V

    .line 293
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->a(Z)V

    .line 294
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/HardwareKeyEvent;->b:Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setCaptionPositionX(I)V
    .locals 2
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCaptionPositionX(F)V

    .line 395
    return-void
.end method

.method protected setCaptionPositionY(I)V
    .locals 2
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setCaptionPositionY(F)V

    .line 387
    return-void
.end method

.method public setInterface(Lcom/snapchat/android/ui/caption/SnapCaptionViewInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setInterface(Lcom/snapchat/android/ui/caption/SnapCaptionViewInterface;)V

    .line 111
    return-void
.end method

.method public setIsVideoSnap(Z)V
    .locals 1
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setIsVideoSnap(Z)V

    .line 399
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 342
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/caption/CaptionEditText;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/view/View;)I

    move-result v0

    .line 345
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 346
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->ab:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 348
    if-ne v1, v3, :cond_0

    .line 349
    iget v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->c:I

    int-to-float v0, v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setCaptionPositionY(I)V

    .line 353
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/SnapCaptionView;->b:Lcom/snapchat/android/ui/caption/CaptionEditText;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->getCaptionPositionY()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->a(II)V

    .line 354
    return-void

    .line 351
    :cond_0
    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/SnapCaptionView;->setCaptionPositionY(I)V

    goto :goto_0
.end method
