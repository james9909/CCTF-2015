.class public Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;
.super Lcom/snapchat/android/ui/caption/CaptionEditText;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/ui/caption/CaptionEditText;",
        "Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas",
        "<",
        "Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;",
        ">;"
    }
.end annotation


# instance fields
.field private n:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController",
            "<",
            "Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/caption/CaptionEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;-><init>(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->n:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;

    .line 45
    const/16 v0, 0x40c1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setInputType(I)V

    .line 52
    new-instance v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$1;-><init>(Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->m:Landroid/text/TextWatcher;

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->m:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    return-void
.end method

.method private a(F)F
    .locals 1
    .parameter

    .prologue
    .line 295
    iget v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->l:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 296
    iget v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->l:I

    int-to-float p1, v0

    .line 299
    :cond_0
    iget v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->k:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 300
    iget v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->k:I

    int-to-float p1, v0

    .line 303
    :cond_1
    return p1
.end method


# virtual methods
.method public a(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;
    .locals 0
    .parameter

    .prologue
    .line 263
    return-object p0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 113
    .line 114
    :goto_0
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 117
    :cond_0
    return-object p1
.end method

.method public a(Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 270
    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getScaleX()F

    move-result v4

    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getScaleX()F

    move-result v6

    invoke-virtual {p1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getScaleY()F

    move-result v7

    move-object v0, p2

    move v5, v3

    move v8, v3

    move v9, v1

    invoke-virtual/range {v0 .. v9}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->a(FFZFZFFZF)V

    .line 279
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    check-cast p1, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->a(Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    check-cast p1, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->a(Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)V

    return-void
.end method

.method protected a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 131
    iput-boolean v4, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->h:Z

    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText$2;-><init>(Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;)V

    .line 145
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    iget v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getKeyboardManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 151
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->b()V

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-super {p0, p1}, Lcom/snapchat/android/ui/caption/CaptionEditText;->a(Z)V

    .line 158
    iput-boolean v4, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->e:Z

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    invoke-virtual {p2}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->b()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->a(F)F

    move-result v0

    .line 286
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->a(FF)V

    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    check-cast p1, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->a(Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)Z

    move-result v0

    return v0
.end method

.method public synthetic b(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->a(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->n:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->a(Landroid/view/MotionEvent;)Z

    .line 239
    return-void
.end method

.method public b(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 173
    iput-boolean v4, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->h:Z

    .line 174
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->a()Z

    move-result v0

    .line 176
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getKeyboardManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->a:Lcom/snapchat/android/ui/caption/CaptionEditText$IMMResult;

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 179
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->c()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setVisibility(I)V

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->clearFocus()V

    .line 185
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 186
    invoke-virtual {p0, v4}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setCursorVisible(Z)V

    .line 187
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setGravity(I)V

    .line 189
    if-eqz p1, :cond_3

    .line 190
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getCloseAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 198
    :cond_2
    :goto_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/EditCaptionEvent;

    invoke-direct {v1, v4}, Lcom/snapchat/android/util/eventbus/EditCaptionEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 199
    return-void

    .line 194
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getLastSelectedPositionY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->a(I)V

    .line 196
    invoke-virtual {p0, v4}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setVisibility(I)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    const v1, 0x3f79999a

    iget v2, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->p:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 247
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 248
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 251
    const/4 v3, 0x2

    new-array v3, v3, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v3, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    aput v4, v3, v0

    .line 252
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 254
    aget v2, v3, v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    aget v2, v3, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 257
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setGravity(I)V

    .line 164
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 204
    invoke-super {p0}, Lcom/snapchat/android/ui/caption/CaptionEditText;->f()V

    .line 205
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setGravity(I)V

    .line 206
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->requestFocus()Z

    .line 207
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setSelection(I)V

    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->setCursorVisible(Z)V

    .line 209
    return-void
.end method

.method protected getAnalyticsDetails()Lcom/snapchat/android/ui/caption/CaptionAnalyticData;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 308
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionAnalyticData;

    sget-object v1, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->a:Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/snapchat/android/ui/caption/CaptionAnalyticData;-><init>(Lcom/snapchat/android/ui/caption/CaptionTypeEnums;ZZZ)V

    return-object v0
.end method

.method protected getCaptionEditPosition()I
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->c:I

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getCloseAnimation()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;

    invoke-direct {v0, p0, v2}, Lcom/snapchat/android/ui/caption/CaptionEditText$FadeAnimation;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText;Z)V

    .line 224
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getCaptionEditPosition()I

    move-result v4

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getLastSelectedPositionY()F

    move-result v1

    float-to-int v5, v1

    const/4 v6, 0x1

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText;IIIIZ)V

    goto :goto_0
.end method

.method protected getOpenAnimation()Landroid/view/animation/Animation;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 213
    new-instance v0, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getLastSelectedPositionY()F

    move-result v1

    float-to-int v4, v1

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getCaptionEditPosition()I

    move-result v5

    const/4 v6, 0x1

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/ui/caption/CaptionEditText$SlideAnimation;-><init>(Lcom/snapchat/android/ui/caption/CaptionEditText;IIIIZ)V

    return-object v0
.end method

.method protected j()Z
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    const v1, 0x3f79999a

    iget v2, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->p:I

    iget v3, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->o:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setHeightPixels(I)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput p1, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->o:I

    .line 234
    return-void
.end method

.method protected setWidthPixels(I)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput p1, p0, Lcom/snapchat/android/ui/caption/VanillaCaptionEditText;->p:I

    .line 230
    return-void
.end method
