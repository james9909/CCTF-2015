.class public Lcom/snapchat/android/fragments/cash/CardLinkFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/cash/CardLinkFragment$14;,
        Lcom/snapchat/android/fragments/cash/CardLinkFragment$CardDetailsListener;,
        Lcom/snapchat/android/fragments/cash/CardLinkFragment$ClearErrorStateOnInputTextWatcher;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ScrollView;

.field private b:Lcom/snapchat/android/ui/cash/CardNumberEditText;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/snapchat/android/ui/cash/CardCvvEditText;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/snapchat/android/ui/cash/ZipEditText;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/ProgressBar;

.field private q:Z

.field private r:Z

.field private s:Landroid/view/animation/Animation;

.field private t:Z

.field private u:Lcom/snapchat/android/fragments/cash/CardLinkFragment$CardDetailsListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->q:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->r:Z

    .line 547
    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 469
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->f(Landroid/content/Context;)V

    .line 472
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->i()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/CardNumberEditText;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    return-object v0
.end method

.method private b(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 392
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a:Landroid/widget/ScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->pageScroll(I)Z

    .line 393
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 397
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->requestFocus()Z

    .line 398
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->q:Z

    return p1
.end method

.method private c(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 405
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 409
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->requestFocus()Z

    .line 410
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/CardExpiryEditText;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    return-object v0
.end method

.method private d(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->k:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->h:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 422
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->h:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->requestFocus()Z

    .line 423
    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/CardCvvEditText;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->h:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    return-object v0
.end method

.method private e(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 430
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->n:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->l:Lcom/snapchat/android/ui/cash/ZipEditText;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ZipEditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 434
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->l:Lcom/snapchat/android/ui/cash/ZipEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/ZipEditText;->requestFocus()Z

    .line 435
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->pageScroll(I)Z

    .line 436
    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->f(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 3
    .parameter

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->h(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/ui/cash/ZipEditText;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->l:Lcom/snapchat/android/ui/cash/ZipEditText;

    return-object v0
.end method

.method private g(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)Ljava/lang/String;
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const v4, 0x7f0c0164

    const/4 v3, 0x0

    .line 480
    sget-object v0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$14;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c002b

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 483
    :pswitch_0
    const v0, 0x7f0c0051

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 485
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c010c

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 489
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c010e

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 492
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c010f

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 495
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c0210

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 498
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c004a

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 501
    :pswitch_6
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

    .line 480
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private h(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)Ljava/lang/String;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 510
    sget-object v0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$14;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 515
    const v0, 0x7f0c002b

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 513
    :pswitch_0
    const v0, 0x7f0c0050

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 510
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private h()V
    .locals 6

    .prologue
    const v5, 0x7f0a00b5

    .line 99
    const v0, 0x7f0a00b2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    const v1, 0x7f0a0030

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 101
    invoke-virtual {p0, v5}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 102
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 103
    if-eqz v3, :cond_0

    const-string v4, "use_default_green"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    const v0, 0x7f020015

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 106
    const v0, 0x7f0201c9

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 113
    :goto_0
    const v0, 0x7f0a00b4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a:Landroid/widget/ScrollView;

    .line 115
    const v0, 0x7f0a00b1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$1;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v0, 0x7f0a00b6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/CardNumberEditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$2;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->setValidatedInputCallback(Lcom/snapchat/android/cash/ValidatedInputCallback;)V

    .line 146
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    new-instance v1, Lcom/snapchat/android/ui/listeners/DisableCustomSelectionActionModeCallback;

    invoke-direct {v1}, Lcom/snapchat/android/ui/listeners/DisableCustomSelectionActionModeCallback;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 147
    const v0, 0x7f0a00b7

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c:Landroid/widget/ImageView;

    .line 148
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$3;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v0, 0x7f0a00b8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$ClearErrorStateOnInputTextWatcher;

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$ClearErrorStateOnInputTextWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->requestFocus()Z

    .line 160
    const v0, 0x7f0a00b9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    .line 161
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$4;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->setValidatedInputCallback(Lcom/snapchat/android/cash/ValidatedInputCallback;)V

    .line 179
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    new-instance v1, Lcom/snapchat/android/ui/listeners/DisableCustomSelectionActionModeCallback;

    invoke-direct {v1}, Lcom/snapchat/android/ui/listeners/DisableCustomSelectionActionModeCallback;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 180
    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->f:Landroid/widget/ImageView;

    .line 181
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$5;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v0, 0x7f0a00bb

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$ClearErrorStateOnInputTextWatcher;

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->f:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$ClearErrorStateOnInputTextWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 192
    const v0, 0x7f0a00aa

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/CardCvvEditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->h:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    .line 193
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->h:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$6;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setValidatedInputCallback(Lcom/snapchat/android/cash/ValidatedInputCallback;)V

    .line 213
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->h:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    new-instance v1, Lcom/snapchat/android/ui/listeners/DisableCustomSelectionActionModeCallback;

    invoke-direct {v1}, Lcom/snapchat/android/ui/listeners/DisableCustomSelectionActionModeCallback;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 214
    const v0, 0x7f0a00bd

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->j:Landroid/widget/ImageView;

    .line 215
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$7;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->k:Landroid/widget/TextView;

    .line 223
    const v0, 0x7f0a00bc

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->i:Landroid/widget/ImageView;

    .line 224
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->h:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$ClearErrorStateOnInputTextWatcher;

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->j:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$ClearErrorStateOnInputTextWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 227
    const v0, 0x7f0a00ab

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/ZipEditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->l:Lcom/snapchat/android/ui/cash/ZipEditText;

    .line 228
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->l:Lcom/snapchat/android/ui/cash/ZipEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$8;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ZipEditText;->setValidatedInputCallback(Lcom/snapchat/android/cash/ValidatedInputCallback;)V

    .line 244
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->l:Lcom/snapchat/android/ui/cash/ZipEditText;

    new-instance v1, Lcom/snapchat/android/ui/listeners/DisableCustomSelectionActionModeCallback;

    invoke-direct {v1}, Lcom/snapchat/android/ui/listeners/DisableCustomSelectionActionModeCallback;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ZipEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 245
    const v0, 0x7f0a00bf

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->m:Landroid/widget/ImageView;

    .line 246
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$9;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v0, 0x7f0a00c0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->n:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->l:Lcom/snapchat/android/ui/cash/ZipEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$ClearErrorStateOnInputTextWatcher;

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->n:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->m:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$ClearErrorStateOnInputTextWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/ZipEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 256
    invoke-virtual {p0, v5}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/Button;

    .line 257
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->I()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 258
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CardLinkFragment$10;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$10;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    const v0, 0x7f0a00c2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->p:Landroid/widget/ProgressBar;

    .line 271
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    const v0, 0x7f02009d

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 110
    const v0, 0x7f02009f

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->l()V

    return-void
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/Button;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 351
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 353
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 354
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 356
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->p:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic k(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Lcom/snapchat/android/fragments/cash/CardLinkFragment$CardDetailsListener;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->u:Lcom/snapchat/android/fragments/cash/CardLinkFragment$CardDetailsListener;

    return-object v0
.end method

.method private k()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 363
    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b:Lcom/snapchat/android/ui/cash/CardNumberEditText;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->h:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->l:Lcom/snapchat/android/ui/cash/ZipEditText;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/cash/ZipEditText;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/Button;

    const v3, 0x7f0c0179

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 366
    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 367
    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 368
    iget-object v2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->o:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 369
    iget-boolean v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->q:Z

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a:Landroid/widget/ScrollView;

    new-instance v2, Lcom/snapchat/android/fragments/cash/CardLinkFragment$13;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$13;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 384
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v1, 0x4

    .line 447
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    return-void
.end method

.method static synthetic l(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->y:Z

    return v0
.end method

.method static synthetic m(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a:Landroid/widget/ScrollView;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 1
    .parameter

    .prologue
    .line 308
    new-instance v0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 337
    return-void
.end method

.method public a(Lcom/snapchat/android/fragments/cash/CardLinkFragment$CardDetailsListener;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->u:Lcom/snapchat/android/fragments/cash/CardLinkFragment$CardDetailsListener;

    .line 345
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->r:Z

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->j(Z)V

    .line 294
    new-instance v0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$11;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$11;-><init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 304
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->t:Z

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->u:Lcom/snapchat/android/fragments/cash/CardLinkFragment$CardDetailsListener;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment$CardDetailsListener;->e()V

    .line 279
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->u:Lcom/snapchat/android/fragments/cash/CardLinkFragment$CardDetailsListener;

    .line 281
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->x:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 282
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public e_()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x2000

    .line 69
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 73
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    const v0, 0x7f040019

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->x:Landroid/view/View;

    .line 78
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->h()V

    .line 79
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f050001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->s:Landroid/view/animation/Animation;

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public s_()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->s_()V

    .line 87
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->G()Landroid/view/Window;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snapchat/android/util/ViewUtils;->a(ZLandroid/view/Window;)V

    .line 88
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->f(Landroid/content/Context;)V

    .line 89
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->r:Z

    .line 90
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c017e

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c017f

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->R()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->r:Z

    .line 96
    :cond_0
    return-void
.end method
