.class public Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;
.super Lcom/snapchat/android/camera/cameradecor/CameraDecor;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$CameraTapListener;,
        Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$ZoomListener;
    }
.end annotation


# instance fields
.field protected final b:Landroid/content/Context;

.field protected final c:Landroid/content/SharedPreferences;

.field protected final d:Landroid/widget/ImageButton;

.field protected final e:Landroid/widget/ImageButton;

.field protected final f:Landroid/widget/TextView;

.field protected final g:Landroid/widget/TextView;

.field protected final h:Lcom/snapchat/android/ui/TakeSnapButton;

.field protected final i:Landroid/widget/ImageButton;

.field protected final j:Lcom/snapchat/android/util/BouncyToucher;

.field protected final k:Landroid/view/View;

.field protected final l:Landroid/view/View;

.field protected final m:Landroid/widget/TextView;

.field private n:Z

.field private o:Landroid/view/ScaleGestureDetector;

.field private p:Landroid/view/GestureDetector;

.field private q:Lcom/snapchat/android/camera/AutofocusCrosshair;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    .line 63
    iput-boolean v6, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->n:Z

    .line 74
    iput-object p1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->b:Landroid/content/Context;

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->c:Landroid/content/SharedPreferences;

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 78
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 79
    invoke-virtual {p2, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    const v1, 0x7f04000f

    invoke-virtual {v0, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 82
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0173

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Lcom/snapchat/android/util/EmojiUtils;->d:[B

    invoke-static {v4}, Lcom/snapchat/android/util/EmojiUtils;->a([B)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->r:Ljava/lang/String;

    .line 87
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->b:Landroid/content/Context;

    new-instance v3, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$ZoomListener;

    invoke-direct {v3, p0, v7}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$ZoomListener;-><init>(Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->o:Landroid/view/ScaleGestureDetector;

    .line 88
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->b:Landroid/content/Context;

    new-instance v3, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$CameraTapListener;

    invoke-direct {v3, p0, v7}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$CameraTapListener;-><init>(Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->p:Landroid/view/GestureDetector;

    .line 89
    new-instance v1, Lcom/snapchat/android/camera/AutofocusCrosshair;

    iget-object v2, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/snapchat/android/camera/AutofocusCrosshair;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->q:Lcom/snapchat/android/camera/AutofocusCrosshair;

    .line 90
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->q:Lcom/snapchat/android/camera/AutofocusCrosshair;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 93
    const v1, 0x7f0a008a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->d:Landroid/widget/ImageButton;

    .line 94
    const v1, 0x7f0a008f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->e:Landroid/widget/ImageButton;

    .line 95
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->l_()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->a(Z)V

    .line 97
    const v1, 0x7f0a0093

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->f:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f0a0094

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->g:Landroid/widget/TextView;

    .line 99
    const v1, 0x7f0a0090

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/ui/TakeSnapButton;

    iput-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->h:Lcom/snapchat/android/ui/TakeSnapButton;

    .line 101
    const v1, 0x7f0a008c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->i:Landroid/widget/ImageButton;

    .line 102
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->i:Landroid/widget/ImageButton;

    new-instance v2, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$1;-><init>(Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->d:Landroid/widget/ImageButton;

    new-instance v2, Lcom/snapchat/android/util/BouncyToucher;

    iget-object v3, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->d:Landroid/widget/ImageButton;

    invoke-direct {v2, v3}, Lcom/snapchat/android/util/BouncyToucher;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    new-instance v1, Lcom/snapchat/android/util/BouncyToucher;

    iget-object v2, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->e:Landroid/widget/ImageButton;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/BouncyToucher;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->j:Lcom/snapchat/android/util/BouncyToucher;

    .line 112
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->e:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->j:Lcom/snapchat/android/util/BouncyToucher;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/snapchat/android/util/BouncyToucher;

    iget-object v3, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->f:Landroid/widget/TextView;

    invoke-direct {v2, v3}, Lcom/snapchat/android/util/BouncyToucher;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->i:Landroid/widget/ImageButton;

    new-instance v2, Lcom/snapchat/android/util/BouncyToucher;

    iget-object v3, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->i:Landroid/widget/ImageButton;

    invoke-direct {v2, v3}, Lcom/snapchat/android/util/BouncyToucher;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->g:Landroid/widget/TextView;

    new-instance v2, Lcom/snapchat/android/util/BouncyToucher;

    iget-object v3, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->g:Landroid/widget/TextView;

    invoke-direct {v2, v3}, Lcom/snapchat/android/util/BouncyToucher;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->d:Landroid/widget/ImageButton;

    new-instance v2, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$2;-><init>(Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->e:Landroid/widget/ImageButton;

    new-instance v2, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$3;-><init>(Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$4;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$4;-><init>(Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->g:Landroid/widget/TextView;

    new-instance v2, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$5;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$5;-><init>(Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->h:Lcom/snapchat/android/ui/TakeSnapButton;

    invoke-virtual {v1, v5}, Lcom/snapchat/android/ui/TakeSnapButton;->setClickable(Z)V

    .line 147
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->h:Lcom/snapchat/android/ui/TakeSnapButton;

    new-instance v2, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$6;

    iget-object v3, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->h:Lcom/snapchat/android/ui/TakeSnapButton;

    invoke-direct {v2, p0, v3}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor$6;-><init>(Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/TakeSnapButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    const v1, 0x7f0a0091

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->k:Landroid/view/View;

    .line 162
    const v1, 0x7f0a008d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->l:Landroid/view/View;

    .line 163
    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->m:Landroid/widget/TextView;

    .line 164
    invoke-virtual {p0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->a()V

    .line 165
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v3, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->e:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/snapchat/android/camera/CameraUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->d:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v3}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->s()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 199
    iget-object v2, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->d:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f020021

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 201
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->h:Lcom/snapchat/android/ui/TakeSnapButton;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TakeSnapButton;->d()V

    .line 204
    invoke-virtual {p0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->k:Landroid/view/View;

    const v1, 0x7f0a0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 207
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->b:Landroid/content/Context;

    const v2, 0x7f0c0037

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :goto_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->c(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->g()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 197
    goto :goto_1

    .line 199
    :cond_3
    const v0, 0x7f020020

    goto :goto_2

    .line 209
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->q:Lcom/snapchat/android/camera/AutofocusCrosshair;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/camera/AutofocusCrosshair;->a(FF)V

    .line 312
    return-void
.end method

.method protected a(Landroid/widget/TextView;III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 288
    if-lez p4, :cond_1

    .line 289
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 290
    if-ge p4, v3, :cond_0

    .line 291
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    const/high16 v0, 0x41b0

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 293
    const/4 v0, 0x4

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 303
    :goto_0
    return-void

    .line 295
    :cond_0
    const-string v0, "+"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    const/high16 v0, 0x41f0

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 297
    invoke-virtual {p1, v1, v1, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 301
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/model/User;)V
    .locals 5
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    if-nez p1, :cond_1

    move v0, v2

    .line 252
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 253
    :goto_1
    iget-object v4, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->i:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    const v3, 0x7f020092

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 256
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->aw()Z

    move-result v0

    if-nez v0, :cond_5

    .line 257
    :goto_3
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->av()Z

    move-result v0

    .line 258
    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->a(ZZ)Z

    move-result v3

    .line 261
    iget-object v4, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->l:Landroid/view/View;

    if-eqz v3, :cond_6

    :goto_4
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 262
    if-eqz v1, :cond_7

    .line 263
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->m:Landroid/widget/TextView;

    const v1, 0x7f0c012f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 267
    :cond_0
    :goto_5
    return-void

    .line 251
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->d()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 252
    goto :goto_1

    .line 253
    :cond_4
    const v3, 0x7f020091

    goto :goto_2

    :cond_5
    move v1, v2

    .line 256
    goto :goto_3

    .line 261
    :cond_6
    const/16 v2, 0x8

    goto :goto_4

    .line 264
    :cond_7
    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 187
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->e:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const v0, 0x7f02008c

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 189
    return-void

    .line 187
    :cond_0
    const v0, 0x7f020024

    goto :goto_0
.end method

.method protected a(ZZ)Z
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 271
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 307
    invoke-static {}, Lcom/snapchat/android/util/SnapUtils;->b()V

    .line 308
    return-void
.end method

.method public b(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/high16 v9, 0x4000

    .line 322
    iget-boolean v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->n:Z

    if-ne p1, v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 323
    :cond_0
    iput-boolean p1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->n:Z

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->n:Z

    if-eqz v4, :cond_1

    move v4, v7

    :goto_1
    iget-object v5, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->h:Lcom/snapchat/android/ui/TakeSnapButton;

    invoke-virtual {v5}, Lcom/snapchat/android/ui/TakeSnapButton;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->h:Lcom/snapchat/android/ui/TakeSnapButton;

    invoke-virtual {v6}, Lcom/snapchat/android/ui/TakeSnapButton;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->h:Lcom/snapchat/android/ui/TakeSnapButton;

    invoke-virtual {v6}, Lcom/snapchat/android/ui/TakeSnapButton;->getY()F

    move-result v6

    iget-object v8, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->h:Lcom/snapchat/android/ui/TakeSnapButton;

    invoke-virtual {v8}, Lcom/snapchat/android/ui/TakeSnapButton;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    add-float/2addr v6, v8

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 331
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 327
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 332
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->h:Lcom/snapchat/android/ui/TakeSnapButton;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/TakeSnapButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->c(Z)V

    .line 170
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->h:Lcom/snapchat/android/ui/TakeSnapButton;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TakeSnapButton;->b()V

    .line 173
    return-void
.end method

.method protected c(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 275
    if-eqz p1, :cond_0

    move v0, v1

    .line 276
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->e:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 277
    iget-object v2, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v2, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->i:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 281
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 280
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public d()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->h:Lcom/snapchat/android/ui/TakeSnapButton;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TakeSnapButton;->c()V

    .line 178
    return-void
.end method

.method protected f()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 182
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->e()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()V
    .locals 4

    .prologue
    .line 217
    invoke-static {}, Lcom/snapchat/android/chat/ConversationUtils;->b()Lcom/snapchat/android/model/UnviewedContentCount;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lcom/snapchat/android/model/UnviewedContentCount;->a()I

    move-result v1

    .line 219
    invoke-virtual {v0}, Lcom/snapchat/android/model/UnviewedContentCount;->b()I

    move-result v2

    .line 220
    invoke-virtual {v0}, Lcom/snapchat/android/model/UnviewedContentCount;->c()I

    move-result v3

    .line 225
    const v0, 0x7f02001e

    .line 226
    if-ne v1, v2, :cond_1

    .line 227
    const v0, 0x7f02001d

    .line 232
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->f:Landroid/widget/TextView;

    const v3, 0x7f02001f

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->a(Landroid/widget/TextView;III)V

    .line 237
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 239
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->a(Lcom/snapchat/android/model/User;)V

    .line 241
    if-nez v0, :cond_2

    .line 247
    :goto_1
    return-void

    .line 228
    :cond_1
    if-ne v1, v3, :cond_0

    .line 229
    const v0, 0x7f02001c

    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->g:Landroid/widget/TextView;

    const v1, 0x7f020023

    const v2, 0x7f020022

    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/StoryLibrary;->n()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->a(Landroid/widget/TextView;III)V

    goto :goto_1
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->o:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 339
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->p:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 340
    const/4 v0, 0x1

    return v0
.end method
