.class public Lcom/snapchat/android/fragments/signup/SignupFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/SignupTask$SignupCallback;


# static fields
.field private static c:Lcom/snapchat/android/util/SnapKidzLoginManager;

.field private static d:I

.field private static e:I

.field private static f:I


# instance fields
.field private final B:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

.field a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected final b:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private g:Landroid/support/v4/app/FragmentActivity;

.field private h:I

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/EditText;

.field private l:Ljava/util/GregorianCalendar;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/Button;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private s:Z

.field private t:Z

.field private final u:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lcom/squareup/otto/Bus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 62
    sput v0, Lcom/snapchat/android/fragments/signup/SignupFragment;->d:I

    .line 63
    sput v0, Lcom/snapchat/android/fragments/signup/SignupFragment;->e:I

    .line 64
    sput v0, Lcom/snapchat/android/fragments/signup/SignupFragment;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-static {}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a()Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/fragments/signup/SignupFragment;-><init>(Lcom/squareup/otto/Bus;Ljavax/inject/Provider;Lcom/snapchat/android/util/crypto/DeviceTokenManager;)V

    .line 93
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
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 78
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->s:Z

    .line 79
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->t:Z

    .line 297
    new-instance v0, Lcom/snapchat/android/fragments/signup/SignupFragment$8;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/signup/SignupFragment$8;-><init>(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->b:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 97
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 98
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->v:Lcom/squareup/otto/Bus;

    .line 99
    iput-object p2, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->u:Ljavax/inject/Provider;

    .line 100
    iput-object p3, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->B:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/SignupFragment;Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->l:Ljava/util/GregorianCalendar;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/SignupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->q()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/SignupFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/signup/SignupFragment;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->u:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-static {p1}, Lcom/snapchat/android/model/UserPrefs;->c(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->H()V

    .line 158
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->g:Landroid/support/v4/app/FragmentActivity;

    const-class v2, Lcom/snapchat/android/SnapkidzHomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->startActivity(Landroid/content/Intent;)V

    .line 161
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 162
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/signup/SignupFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/signup/SignupFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/signup/SignupFragment;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/signup/SignupFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->s:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/signup/SignupFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/signup/SignupFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/signup/SignupFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/signup/SignupFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 370
    if-nez p1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->o:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/signup/SignupFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->t:Z

    return v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/signup/SignupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->o()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 382
    if-nez p1, :cond_0

    .line 383
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->q:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 391
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/signup/SignupFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/signup/SignupFragment;)Ljava/util/GregorianCalendar;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->l:Ljava/util/GregorianCalendar;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/signup/SignupFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h()Lcom/snapchat/android/util/SnapKidzLoginManager;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/snapchat/android/fragments/signup/SignupFragment;->c:Lcom/snapchat/android/util/SnapKidzLoginManager;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/signup/SignupFragment;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->g:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 169
    const v0, 0x7f0a02b0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->i:Landroid/widget/EditText;

    .line 170
    const v0, 0x7f0a02b2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->o:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f0a02b1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->p:Landroid/widget/ImageView;

    .line 173
    const v0, 0x7f0a02b3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->j:Landroid/widget/EditText;

    .line 174
    const v0, 0x7f0a02b5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->q:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f0a02b4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->r:Landroid/widget/ImageView;

    .line 177
    const v0, 0x7f0a02b6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->k:Landroid/widget/EditText;

    .line 178
    const v0, 0x7f0a02b8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->n:Landroid/widget/Button;

    .line 180
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->k()V

    .line 181
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->l()V

    .line 182
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->n()V

    .line 183
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->p()V

    .line 185
    const v0, 0x7f0a02b9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->m:Landroid/view/View;

    .line 186
    return-void
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/signup/SignupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->r()V

    return-void
.end method

.method private k()V
    .locals 7

    .prologue
    .line 189
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/signup/SignupFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/SignupFragment$1;-><init>(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 200
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 201
    const/4 v1, 0x0

    .line 202
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    .line 203
    sget-object v5, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->n()V

    .line 209
    :goto_1
    if-nez v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->i:Landroid/widget/EditText;

    const v1, 0x7f0c01ee

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 216
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/signup/SignupFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/SignupFragment$2;-><init>(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->p:Landroid/widget/ImageView;

    new-instance v1, Lcom/snapchat/android/fragments/signup/SignupFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/SignupFragment$3;-><init>(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->e(Landroid/content/Context;)V

    .line 245
    :cond_0
    return-void

    .line 202
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->i:Landroid/widget/EditText;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private l()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->j:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 249
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->j:Landroid/widget/EditText;

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 251
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/signup/SignupFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/SignupFragment$4;-><init>(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 270
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/signup/SignupFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/SignupFragment$5;-><init>(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 278
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/signup/SignupFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/SignupFragment$6;-><init>(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 289
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->r:Landroid/widget/ImageView;

    new-instance v1, Lcom/snapchat/android/fragments/signup/SignupFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/SignupFragment$7;-><init>(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->k:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/fragments/signup/SignupFragment$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/SignupFragment$9;-><init>(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 325
    return-void
.end method

.method private o()V
    .locals 7

    .prologue
    .line 328
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 329
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->g:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->b:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget-object v3, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->l:Ljava/util/GregorianCalendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->l:Ljava/util/GregorianCalendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->l:Ljava/util/GregorianCalendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 331
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 332
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 334
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->g:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->k:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 336
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->x()V

    .line 337
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->n:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/fragments/signup/SignupFragment$10;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/signup/SignupFragment$10;-><init>(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->n:Landroid/widget/Button;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 367
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->n:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->n:Landroid/widget/Button;

    const v1, 0x7f0c0113

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 398
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->n:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->n:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private r()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->n:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 421
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->n:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 424
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->z()V

    .line 428
    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-virtual {v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->e()V

    .line 429
    new-instance v2, Lcom/snapchat/android/api2/SignupTask;

    iget-object v3, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->l:Ljava/util/GregorianCalendar;

    invoke-direct {v2, v0, v1, v3, p0}, Lcom/snapchat/android/api2/SignupTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/GregorianCalendar;Lcom/snapchat/android/api2/SignupTask$SignupCallback;)V

    invoke-virtual {v2}, Lcom/snapchat/android/api2/SignupTask;->g()V

    .line 430
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 437
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->n:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 442
    sparse-switch p1, :sswitch_data_0

    .line 468
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->q()V

    .line 469
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :sswitch_0
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->q()V

    .line 445
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/signup/SignupFragment;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :sswitch_1
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->p()V

    .line 449
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/signup/SignupFragment;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :sswitch_2
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->t()V

    .line 453
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/signup/SignupFragment;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :sswitch_3
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->u()V

    .line 457
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/signup/SignupFragment;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :sswitch_4
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->v()V

    .line 461
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/signup/SignupFragment;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :sswitch_5
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->w()V

    .line 465
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/signup/SignupFragment;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 442
    nop

    :sswitch_data_0
    .sparse-switch
        -0xc9 -> :sswitch_1
        -0xc8 -> :sswitch_0
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
    .end sparse-switch
.end method

.method protected a(Lcom/snapchat/android/api2/SignupTask$ResponsePayload;)V
    .locals 1
    .parameter

    .prologue
    .line 494
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->u:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 495
    if-eqz v0, :cond_0

    .line 496
    invoke-static {p1}, Lcom/snapchat/android/model/UserPrefs;->a(Lcom/snapchat/android/model/server/UpdatesResponse;)V

    .line 497
    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->H()V

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->b()V

    .line 502
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/SignupTask$ResponsePayload;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p0, p3}, Lcom/snapchat/android/fragments/signup/SignupFragment;->a(Lcom/snapchat/android/api2/SignupTask$ResponsePayload;)V

    .line 482
    iget-object v0, p3, Lcom/snapchat/android/api2/SignupTask$ResponsePayload;->mDeviceTokenId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/snapchat/android/api2/SignupTask$ResponsePayload;->mDeviceTokenValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->B:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    new-instance v1, Lcom/snapchat/android/util/crypto/DeviceToken;

    iget-object v2, p3, Lcom/snapchat/android/api2/SignupTask$ResponsePayload;->mDeviceTokenId:Ljava/lang/String;

    iget-object v3, p3, Lcom/snapchat/android/api2/SignupTask$ResponsePayload;->mDeviceTokenValue:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/crypto/DeviceToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a(Lcom/snapchat/android/util/crypto/DeviceToken;)V

    .line 488
    :cond_0
    invoke-static {p1, p2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->g:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 408
    iget v1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->h:I

    new-instance v2, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/signup/PickUsernameFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 411
    const-string v0, "SignupFragment"

    const-string v1, "Attempted to go to PickUsernameFragment"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onAttach(Landroid/app/Activity;)V

    .line 106
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->g:Landroid/support/v4/app/FragmentActivity;

    .line 107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 117
    const v0, 0x7f04007c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->x:Landroid/view/View;

    .line 118
    sget v0, Lcom/snapchat/android/fragments/signup/SignupFragment;->d:I

    if-ne v0, v2, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/snapchat/android/fragments/signup/SignupFragment;->d:I

    .line 121
    :cond_0
    sget v0, Lcom/snapchat/android/fragments/signup/SignupFragment;->e:I

    if-ne v0, v2, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/snapchat/android/fragments/signup/SignupFragment;->e:I

    .line 124
    :cond_1
    sget v0, Lcom/snapchat/android/fragments/signup/SignupFragment;->f:I

    if-ne v0, v2, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/snapchat/android/fragments/signup/SignupFragment;->f:I

    .line 127
    :cond_2
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->l:Ljava/util/GregorianCalendar;

    .line 128
    invoke-static {}, Lcom/snapchat/android/util/SnapKidzLoginManager;->a()Lcom/snapchat/android/util/SnapKidzLoginManager;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/signup/SignupFragment;->c:Lcom/snapchat/android/util/SnapKidzLoginManager;

    .line 129
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->h:I

    .line 130
    invoke-direct {p0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->i()V

    .line 131
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDetach()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->g:Landroid/support/v4/app/FragmentActivity;

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->g:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->g:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment;->g:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;

    sget v1, Lcom/snapchat/android/fragments/signup/SignupFragment;->d:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->a(I)V

    .line 144
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->b()V

    .line 147
    :cond_1
    return-void
.end method
