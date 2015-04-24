.class public abstract Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;,
        Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$VerifyCodeTask;,
        Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$RequestPhoneVerificationCodeTaskForSms;
    }
.end annotation


# instance fields
.field public a:Landroid/support/v4/app/FragmentActivity;

.field public b:Landroid/widget/EditText;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/view/View;

.field protected e:Landroid/widget/EditText;

.field public f:Landroid/widget/Button;

.field protected g:Landroid/widget/ProgressBar;

.field protected h:Ljava/lang/String;

.field protected i:Z

.field private j:Ljava/lang/String;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/os/Handler;

.field private r:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;

.field private s:Landroid/app/AlertDialog;

.field private t:I

.field private u:Lcom/snapchat/android/receiver/SmsReceiver;

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->n:Z

    .line 69
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->o:Z

    .line 70
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->p:Z

    .line 78
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->i:Z

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->v:Z

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t:I

    return p1
.end method

.method private a([Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 461
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 462
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 463
    aget-object v3, p1, v0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 474
    :goto_1
    return-object v0

    .line 462
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 468
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 469
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 470
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_1

    .line 468
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 474
    :cond_3
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v1, p1, v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->r:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;)Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->r:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->w()V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->o:Z

    return p1
.end method

.method private b([Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 6
    .parameter

    .prologue
    .line 478
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    .line 479
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 480
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 481
    aget-object v3, p1, v0

    .line 482
    new-instance v4, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    :cond_0
    return-object v1
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->n:Z

    return v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 304
    if-nez p1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->o:Z

    return v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->x()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 316
    if-nez p1, :cond_1

    .line 317
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :goto_1
    return-void

    .line 318
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->p:Z

    return v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->u()V

    return-void
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->s:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->q:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)I
    .locals 2
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t:I

    return v0
.end method

.method private u()V
    .locals 4

    .prologue
    .line 123
    const-string v0, "PhoneVerificationFragment"

    const-string v1, "registerSmsReceiver()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->u:Lcom/snapchat/android/receiver/SmsReceiver;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/snapchat/android/receiver/SmsReceiver;

    invoke-direct {v0}, Lcom/snapchat/android/receiver/SmsReceiver;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->u:Lcom/snapchat/android/receiver/SmsReceiver;

    .line 126
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->u:Lcom/snapchat/android/receiver/SmsReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    :cond_0
    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    .line 131
    const-string v0, "PhoneVerificationFragment"

    const-string v1, "unregisterSmsReceiver()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->u:Lcom/snapchat/android/receiver/SmsReceiver;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->u:Lcom/snapchat/android/receiver/SmsReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->u:Lcom/snapchat/android/receiver/SmsReceiver;

    .line 136
    :cond_0
    return-void
.end method

.method private w()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 374
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private x()V
    .locals 8

    .prologue
    .line 387
    new-instance v0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$8;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$8;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    .line 397
    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$9;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    .line 408
    new-instance v2, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$10;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$10;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    .line 415
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0158

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c00a0

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0c003d

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c009b

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 422
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/snapchat/android/model/server/VerificationNeededResponse;)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 713
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->v:Z

    .line 714
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 715
    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 717
    :cond_0
    return-void

    .line 715
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public abstract b()V
.end method

.method public h()V
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k()V

    .line 155
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->i()V

    .line 156
    return-void
.end method

.method protected i()V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 162
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->c()V

    .line 167
    :cond_0
    return-void
.end method

.method protected k()V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$1;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 183
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$2;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 207
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->l:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$3;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$4;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$5;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 246
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$6;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->I()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 260
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$7;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 280
    const v0, 0x7f0a00cd

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    .line 281
    const v0, 0x7f0a00cf

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->m:Landroid/widget/TextView;

    .line 282
    const v0, 0x7f0a00ce

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->l:Landroid/view/View;

    .line 284
    const v0, 0x7f0a00d0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/widget/EditText;

    .line 285
    const v0, 0x7f0a00d2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c:Landroid/widget/TextView;

    .line 287
    const v0, 0x7f0a00d1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d:Landroid/view/View;

    .line 289
    const v0, 0x7f0a00d4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    .line 290
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->I()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 291
    const v0, 0x7f0a00d5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->g:Landroid/widget/ProgressBar;

    .line 293
    const v0, 0x7f0a0247

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/view/View;

    .line 296
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 297
    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->k:Landroid/view/View;

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->v:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 300
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->q:Landroid/os/Handler;

    .line 301
    return-void

    .line 297
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onAttach(Landroid/app/Activity;)V

    .line 103
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    .line 104
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    const v0, 0x7f04006a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->x:Landroid/view/View;

    .line 89
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->o()V

    .line 90
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->n()V

    .line 91
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->r()V

    .line 92
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h()V

    .line 93
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->l()V

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDetach()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    .line 142
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->G()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 116
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->s:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->s:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->v()V

    .line 120
    return-void
.end method

.method public onVerificationCodeReceivedEvent(Lcom/snapchat/android/util/eventbus/VerificationCodeReceivedEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 726
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 727
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/VerificationCodeReceivedEvent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 731
    :cond_0
    return-void
.end method

.method protected p()Z
    .locals 2

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected q()V
    .locals 7

    .prologue
    const v2, 0x7f0c015e

    const v6, 0x7f0c00a3

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 334
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 337
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->p:Z

    .line 371
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 339
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->a()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 345
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 346
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 350
    :goto_1
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->p:Z

    goto :goto_0

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 352
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 353
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->p:Z

    .line 354
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 355
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 356
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 357
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 359
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->r:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$PhoneVerificationRetryCountDownTimer;

    if-nez v0, :cond_6

    .line 360
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 361
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 362
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 364
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 367
    iput-boolean v3, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->p:Z

    goto/16 :goto_0
.end method

.method public r()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 425
    const v0, 0x7f0a00cc

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 427
    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-direct {p0, v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 429
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->j:Ljava/lang/String;

    .line 430
    invoke-direct {p0, v2}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b([Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 432
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v6, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$11;

    invoke-direct {v6, p0, v2, v0, v4}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$11;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;[Ljava/lang/String;Landroid/widget/TextView;[Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v4, v1, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c009f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->s:Landroid/app/AlertDialog;

    .line 450
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v4, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    new-instance v1, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$12;-><init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    return-void
.end method

.method protected s()V
    .locals 0

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->b()V

    .line 494
    return-void
.end method

.method protected t()Z
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x1

    return v0
.end method

.method public t_()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method
