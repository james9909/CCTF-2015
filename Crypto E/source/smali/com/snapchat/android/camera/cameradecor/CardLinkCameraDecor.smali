.class public Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;
.super Lcom/snapchat/android/camera/cameradecor/CameraDecor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$8;,
        Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;,
        Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardDetailsListener;,
        Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidZipCallback;,
        Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCvvCallback;,
        Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidExpiryCallback;,
        Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;
    }
.end annotation


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/widget/RelativeLayout;

.field private d:Lcom/snapchat/android/ui/cash/CardNumberEditText;

.field private e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

.field private f:Lcom/snapchat/android/ui/cash/CardCvvEditText;

.field private g:Lcom/snapchat/android/ui/cash/ZipEditText;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/Button;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/EditText;

.field private p:Z

.field private q:Z

.field private final r:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardDetailsListener;

.field private s:Landroid/view/View$OnClickListener;

.field private t:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardDetailsListener;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x1

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    .line 66
    iput-boolean v2, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->q:Z

    .line 71
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$1;-><init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->s:Landroid/view/View$OnClickListener;

    .line 78
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$2;-><init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->t:Landroid/view/View$OnClickListener;

    .line 89
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 91
    iput-object p1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->b:Landroid/content/Context;

    .line 92
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 94
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 96
    const v1, 0x7f04001b

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c:Landroid/widget/RelativeLayout;

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 99
    :cond_0
    iput-boolean v2, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->p:Z

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->f(Landroid/content/Context;)V

    .line 102
    iput-object p3, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->r:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardDetailsListener;

    .line 104
    invoke-direct {p0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g()V

    .line 105
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/text/TextWatcher;
    .locals 1
    .parameter

    .prologue
    .line 126
    new-instance v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$3;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$3;-><init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Landroid/view/View;)V

    return-object v0
.end method

.method private a(Landroid/view/View;FF)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 370
    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 373
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 374
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 375
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 376
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 377
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->i()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Landroid/view/View;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x0

    .line 323
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 324
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 334
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    return-void

    .line 327
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 328
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public static b(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;)Ljava/lang/String;
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const v6, 0x7f0c0166

    const v5, 0x7f0c0164

    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 542
    sget-object v0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$8;->a:[I

    invoke-virtual {p0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c002b

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 544
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c0047

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v6, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 547
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c004e

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v6, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 551
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c0050

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0051

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 554
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c010c

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 558
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c010e

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 561
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c010f

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 564
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c0210

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0165

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 567
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c004a

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0163

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 570
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c0132

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0171

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 542
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic b(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->j()V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardDetailsListener;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->r:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardDetailsListener;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 220
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->k:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 224
    :cond_0
    return-void

    .line 220
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private d(Z)V
    .locals 3
    .parameter

    .prologue
    .line 338
    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->q:Z

    return v0
.end method

.method static synthetic e(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->h()V

    return-void
.end method

.method private e(Z)V
    .locals 2
    .parameter

    .prologue
    .line 380
    if-eqz p1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->j:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$7;-><init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->j:Landroid/view/View;

    return-object v0
.end method

.method private g()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const v2, 0x3f19999a

    .line 150
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00b0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->j:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00b6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/CardNumberEditText;

    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->d:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    .line 153
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->d:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    new-instance v1, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;

    invoke-direct {v1, p0, v3}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;-><init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$1;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->setValidatedInputCallback(Lcom/snapchat/android/cash/ValidatedInputCallback;)V

    .line 154
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->d:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->d:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-direct {p0, v1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Landroid/view/View;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->d:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->requestFocus()Z

    .line 156
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->d:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->setAlpha(F)V

    .line 158
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00b9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    new-instance v1, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidExpiryCallback;

    invoke-direct {v1, p0, v3}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidExpiryCallback;-><init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$1;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->setValidatedInputCallback(Lcom/snapchat/android/cash/ValidatedInputCallback;)V

    .line 160
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-direct {p0, v1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Landroid/view/View;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 161
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->setAlpha(F)V

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->m:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00c5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->n:Landroid/view/View;

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$4;-><init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00c8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->k:Landroid/widget/Button;

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00c9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->l:Landroid/view/View;

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c(Z)V

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00af

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->i:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00a9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->h:Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00aa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/CardCvvEditText;

    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    new-instance v1, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCvvCallback;

    invoke-direct {v1, p0, v3}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCvvCallback;-><init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$1;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setValidatedInputCallback(Lcom/snapchat/android/cash/ValidatedInputCallback;)V

    .line 187
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-direct {p0, v1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Landroid/view/View;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setAlpha(F)V

    .line 189
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    new-instance v1, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$5;-><init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 199
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00ab

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/ZipEditText;

    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g:Lcom/snapchat/android/ui/cash/ZipEditText;

    .line 200
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g:Lcom/snapchat/android/ui/cash/ZipEditText;

    new-instance v1, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidZipCallback;

    invoke-direct {v1, p0, v3}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidZipCallback;-><init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$1;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ZipEditText;->setValidatedInputCallback(Lcom/snapchat/android/cash/ValidatedInputCallback;)V

    .line 201
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g:Lcom/snapchat/android/ui/cash/ZipEditText;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g:Lcom/snapchat/android/ui/cash/ZipEditText;

    invoke-direct {p0, v1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Landroid/view/View;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ZipEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g:Lcom/snapchat/android/ui/cash/ZipEditText;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/ZipEditText;->setAlpha(F)V

    .line 203
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g:Lcom/snapchat/android/ui/cash/ZipEditText;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/cash/ZipEditText;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g:Lcom/snapchat/android/ui/cash/ZipEditText;

    new-instance v1, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$6;-><init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ZipEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 212
    return-void
.end method

.method static synthetic h(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Lcom/snapchat/android/ui/cash/CardExpiryEditText;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g:Lcom/snapchat/android/ui/cash/ZipEditText;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/cash/ZipEditText;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->d:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c(Z)V

    .line 232
    iput-boolean v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->q:Z

    .line 233
    iput-boolean v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->p:Z

    .line 234
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v0, 0x7f0c004c

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->d:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->o:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->f(Landroid/content/Context;)V

    .line 244
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 230
    goto :goto_0
.end method

.method static synthetic i(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Lcom/snapchat/android/ui/cash/CardNumberEditText;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->d:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->d:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->d:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    :goto_0
    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->o:Landroid/widget/EditText;

    .line 249
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->d:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g:Lcom/snapchat/android/ui/cash/ZipEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/ZipEditText;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c(Z)V

    .line 253
    iput-boolean v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->q:Z

    .line 254
    iput-boolean v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->p:Z

    .line 255
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->k:Landroid/widget/Button;

    iget-object v2, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v0, 0x7f0c0045

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g:Lcom/snapchat/android/ui/cash/ZipEditText;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ZipEditText;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->f(Landroid/content/Context;)V

    .line 263
    :cond_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 251
    goto :goto_1
.end method

.method static synthetic j(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Lcom/snapchat/android/ui/cash/ZipEditText;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g:Lcom/snapchat/android/ui/cash/ZipEditText;

    return-object v0
.end method

.method private j()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->k:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->k:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 269
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->r:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardDetailsListener;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->d:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->getUnformattedText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->getUnformattedText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->getUnformattedText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g:Lcom/snapchat/android/ui/cash/ZipEditText;

    invoke-virtual {v4}, Lcom/snapchat/android/ui/cash/ZipEditText;->getUnformattedText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardDetailsListener;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method static synthetic k(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Lcom/snapchat/android/ui/cash/CardCvvEditText;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 350
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a(Landroid/os/Bundle;)V

    .line 122
    const-string v0, "savedCardLinkIsFrontKey"

    iget-boolean v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    return-void
.end method

.method public a(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 276
    invoke-static {p1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->b(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;)Ljava/lang/String;

    move-result-object v1

    .line 277
    iget-object v2, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 279
    iget-object v2, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->k:Landroid/widget/Button;

    const v3, 0x7f0c0179

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 280
    iget-object v2, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->k:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 281
    iget-object v2, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->l:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c(Z)V

    .line 285
    sget-object v2, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$8;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 313
    :goto_0
    invoke-direct {p0, v4}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->d(Z)V

    .line 314
    invoke-direct {p0, v1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Ljava/lang/String;)V

    .line 315
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->f(Landroid/content/Context;)V

    .line 320
    :cond_0
    return-void

    .line 291
    :pswitch_0
    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->o:Landroid/widget/EditText;

    .line 292
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g:Lcom/snapchat/android/ui/cash/ZipEditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/ZipEditText;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->d:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    .line 296
    invoke-direct {p0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->h()V

    goto :goto_0

    .line 299
    :pswitch_1
    iput-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->o:Landroid/widget/EditText;

    .line 300
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    .line 302
    invoke-direct {p0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->h()V

    goto :goto_0

    .line 305
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    goto :goto_0

    .line 309
    :pswitch_3
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g:Lcom/snapchat/android/ui/cash/ZipEditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/cash/ZipEditText;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g:Lcom/snapchat/android/ui/cash/ZipEditText;

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->b(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "savedCardLinkIsFrontKey"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->h()V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->i()V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->q:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->r:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardDetailsListener;

    invoke-interface {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardDetailsListener;->h()V

    .line 359
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->h()V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->p:Z

    return v0
.end method
