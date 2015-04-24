.class public Lcom/snapchat/android/fragments/signup/LoginFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/LoginTask$LoginCallback;


# static fields
.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:Lcom/snapchat/android/util/SnapKidzLoginManager;


# instance fields
.field a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/Button;

.field private n:Z

.field private o:J

.field private p:Landroid/graphics/drawable/Drawable;

.field private final q:Lcom/squareup/otto/Bus;

.field private final r:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

.field private final t:Landroid/view/View$OnClickListener;

.field private final u:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 69
    sput v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->b:I

    .line 70
    sput v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->c:I

    .line 71
    sput v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 94
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a()Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/fragments/signup/LoginFragment;-><init>(Lcom/squareup/otto/Bus;Ljavax/inject/Provider;Lcom/snapchat/android/util/crypto/DeviceTokenManager;)V

    .line 95
    return-void
.end method

.method protected constructor <init>(Lcom/squareup/otto/Bus;Ljavax/inject/Provider;Lcom/snapchat/android/util/crypto/DeviceTokenManager;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/otto/Bus;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;",
            "Lcom/snapchat/android/util/crypto/DeviceTokenManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->n:Z

    .line 105
    new-instance v0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/signup/LoginFragment$1;-><init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->t:Landroid/view/View$OnClickListener;

    .line 129
    new-instance v0, Lcom/snapchat/android/fragments/signup/LoginFragment$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/signup/LoginFragment$2;-><init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->u:Landroid/text/TextWatcher;

    .line 99
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 100
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->q:Lcom/squareup/otto/Bus;

    .line 101
    iput-object p2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->r:Ljavax/inject/Provider;

    .line 102
    iput-object p3, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->s:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/LoginFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/signup/LoginFragment;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b()Lcom/snapchat/android/util/SnapKidzLoginManager;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->e:Lcom/snapchat/android/util/SnapKidzLoginManager;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/signup/LoginFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/signup/LoginFragment;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/signup/LoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->n()V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/signup/LoginFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/signup/LoginFragment;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/signup/LoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->l()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 382
    if-nez p1, :cond_0

    .line 383
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->p:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 394
    if-nez p1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->r:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 406
    if-eqz v0, :cond_0

    .line 407
    invoke-static {p1}, Lcom/snapchat/android/model/UserPrefs;->c(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->H()V

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 412
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/snapchat/android/SnapkidzHomeActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 413
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 414
    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/signup/LoginFragment;->startActivity(Landroid/content/Intent;)V

    .line 415
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 416
    return-void
.end method

.method static synthetic h()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->d:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->c:I

    return v0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 278
    const v0, 0x7f0a0210

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->f:Landroid/widget/EditText;

    .line 279
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->f:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->u:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 281
    const v0, 0x7f0a0212

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->g:Landroid/widget/TextView;

    .line 282
    const v0, 0x7f0a0211

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->i:Landroid/widget/ImageView;

    .line 283
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->i:Landroid/widget/ImageView;

    new-instance v2, Lcom/snapchat/android/fragments/signup/LoginFragment$5;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/LoginFragment$5;-><init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    const v0, 0x7f0a0213

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    .line 292
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 293
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 294
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->u:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 295
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    new-instance v2, Lcom/snapchat/android/fragments/signup/LoginFragment$6;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/LoginFragment$6;-><init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 304
    const v0, 0x7f0a0215

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->h:Landroid/widget/TextView;

    .line 305
    const v0, 0x7f0a0214

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->j:Landroid/widget/ImageView;

    .line 306
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->j:Landroid/widget/ImageView;

    new-instance v2, Lcom/snapchat/android/fragments/signup/LoginFragment$7;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/LoginFragment$7;-><init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const v0, 0x7f0a0217

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    .line 315
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 316
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    new-instance v2, Lcom/snapchat/android/fragments/signup/LoginFragment$8;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/LoginFragment$8;-><init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 324
    const v0, 0x7f0a0218

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->l:Landroid/view/View;

    .line 327
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 328
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->a:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_1

    .line 330
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-static {v1}, Lcom/snapchat/android/util/ViewUtils;->e(Landroid/content/Context;)V

    .line 340
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 341
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {v1}, Lcom/snapchat/android/util/ViewUtils;->e(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private l()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 344
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    const v1, 0x7f0c0112

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 346
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 347
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 348
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->n:Z

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iput-boolean v5, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->n:Z

    .line 350
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/snapchat/android/fragments/signup/LoginFragment;->c:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/snapchat/android/fragments/signup/LoginFragment;->d:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v1

    .line 355
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 357
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 358
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->o:J

    goto :goto_0

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 361
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->n:Z

    if-eqz v0, :cond_0

    .line 362
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->n:Z

    .line 363
    new-instance v0, Lcom/snapchat/android/fragments/signup/LoginFragment$9;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/signup/LoginFragment$9;-><init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    .line 375
    const-wide/16 v2, 0x190

    const-wide/32 v4, 0xf4240

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->o:J

    sub-long/2addr v6, v8

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    .line 376
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private n()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 423
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 425
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 430
    new-instance v2, Lcom/snapchat/android/api2/LoginTask;

    invoke-direct {v2, v0, v1, p0}, Lcom/snapchat/android/api2/LoginTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/LoginTask$LoginCallback;)V

    invoke-virtual {v2}, Lcom/snapchat/android/api2/LoginTask;->g()V

    .line 431
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    .line 247
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 253
    const/16 v0, -0x65

    if-ne p1, v0, :cond_1

    .line 254
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/signup/LoginFragment;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_1
    const/16 v0, -0x64

    if-ne p1, v0, :cond_2

    .line 256
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/signup/LoginFragment;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->l()V

    .line 261
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0121

    new-instance v2, Lcom/snapchat/android/fragments/signup/LoginFragment$4;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/signup/LoginFragment$4;-><init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected a(Lcom/snapchat/android/api2/LoginTask$ResponsePayload;)V
    .locals 3
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->r:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 218
    if-eqz v0, :cond_0

    .line 219
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/model/User;->a(Lcom/snapchat/android/model/server/chat/AllUpdatesConversationResponse;Z)V

    .line 220
    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->H()V

    .line 223
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 225
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/signup/LoginFragment;->startActivity(Landroid/content/Intent;)V

    .line 228
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 230
    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 234
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->a:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/util/PreferenceUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->a:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/snapchat/android/util/PreferenceUtils;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->e()V

    .line 242
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->a(Z)V

    .line 243
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/snapchat/android/api2/LoginTask$ResponsePayload;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 197
    :cond_0
    new-instance v0, Lcom/snapchat/android/fragments/signup/LoginFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/fragments/signup/LoginFragment$3;-><init>(Lcom/snapchat/android/fragments/signup/LoginFragment;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->b(Ljava/lang/Runnable;)V

    .line 204
    invoke-virtual {p0, p2}, Lcom/snapchat/android/fragments/signup/LoginFragment;->a(Lcom/snapchat/android/api2/LoginTask$ResponsePayload;)V

    .line 206
    iget-object v0, p2, Lcom/snapchat/android/api2/LoginTask$ResponsePayload;->mDeviceTokenId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/snapchat/android/api2/LoginTask$ResponsePayload;->mDeviceTokenValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->s:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    new-instance v1, Lcom/snapchat/android/util/crypto/DeviceToken;

    iget-object v2, p2, Lcom/snapchat/android/api2/LoginTask$ResponsePayload;->mDeviceTokenId:Ljava/lang/String;

    iget-object v3, p2, Lcom/snapchat/android/api2/LoginTask$ResponsePayload;->mDeviceTokenValue:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/crypto/DeviceToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a(Lcom/snapchat/android/util/crypto/DeviceToken;)V

    .line 211
    :cond_1
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->l()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onCreate(Landroid/os/Bundle;)V

    .line 148
    invoke-static {}, Lcom/snapchat/android/util/SnapKidzLoginManager;->a()Lcom/snapchat/android/util/SnapKidzLoginManager;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->e:Lcom/snapchat/android/util/SnapKidzLoginManager;

    .line 149
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 153
    const v0, 0x7f040060

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->x:Landroid/view/View;

    .line 154
    sget v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->b:I

    if-ne v0, v2, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->b:I

    .line 158
    :cond_0
    sget v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->c:I

    if-ne v0, v2, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->c:I

    .line 162
    :cond_1
    sget v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->d:I

    if-ne v0, v2, :cond_2

    .line 163
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/snapchat/android/fragments/signup/LoginFragment;->d:I

    .line 166
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->k()V

    .line 167
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->p:Landroid/graphics/drawable/Drawable;

    .line 169
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroyView()V

    .line 184
    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->f:Landroid/widget/EditText;

    .line 185
    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->k:Landroid/widget/EditText;

    .line 186
    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->l:Landroid/view/View;

    .line 187
    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment;->m:Landroid/widget/Button;

    .line 188
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 175
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 176
    instance-of v1, v0, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;

    if-eqz v1, :cond_0

    .line 177
    check-cast v0, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;

    sget v1, Lcom/snapchat/android/fragments/signup/LoginFragment;->b:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->a(I)V

    .line 179
    :cond_0
    return-void
.end method
