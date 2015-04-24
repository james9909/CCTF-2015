.class public Lcom/snapchat/android/fragments/cash/CashSettingsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field protected a:Lcom/snapchat/android/api2/cash/CashProviderManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Landroid/app/AlertDialog;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/CheckBox;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 75
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private a(Landroid/widget/CompoundButton;Landroid/view/View;Landroid/widget/ProgressBar;ZLjava/lang/String;)V
    .locals 7
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
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 450
    new-instance v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$10;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;ZLandroid/widget/CompoundButton;Landroid/widget/ProgressBar;Landroid/view/View;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 467
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Landroid/widget/CompoundButton;Landroid/view/View;Landroid/widget/ProgressBar;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Landroid/widget/CompoundButton;Landroid/view/View;Landroid/widget/ProgressBar;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 470
    new-instance v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$11;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 485
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->h:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->l:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->k()V

    return-void
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->l()V

    return-void
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->n()V

    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 94
    const v0, 0x7f0a00db

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c:Landroid/widget/ImageView;

    .line 95
    const v0, 0x7f0a00dc

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f0a00da

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e:Landroid/widget/RelativeLayout;

    .line 97
    const v0, 0x7f0a00dd

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->f:Landroid/widget/ImageView;

    .line 98
    const v0, 0x7f0a00de

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->g:Landroid/widget/ProgressBar;

    .line 99
    const v0, 0x7f0a00df

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->h:Landroid/widget/RelativeLayout;

    .line 100
    const v0, 0x7f0a00e0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i:Landroid/widget/CheckBox;

    .line 101
    const v0, 0x7f0a00e1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->j:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0a00e2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->k:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0a00e3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->l:Landroid/widget/ProgressBar;

    .line 104
    const v0, 0x7f0a00e5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->m:Landroid/view/View;

    .line 106
    const v0, 0x7f0a0056

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$1;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->af()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$2;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$3;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->h:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$4;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i:Landroid/widget/CheckBox;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$5;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 254
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->m:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$6;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    const v0, 0x7f0a00e6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$7;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a:Lcom/snapchat/android/api2/cash/CashProviderManager;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/CashProviderManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->k()V

    .line 283
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->n()V

    .line 284
    return-void

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->l()V

    goto :goto_0
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, -0x100

    const/4 v2, 0x0

    .line 288
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->ac()Ljava/lang/String;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_0

    .line 290
    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->ab()Ljava/lang/String;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_1

    .line 294
    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/api2/cash/square/data/CardBrand;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/data/CardBrand;->getDrawable(Lcom/snapchat/android/api2/cash/square/data/CardBrand;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 302
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i:Landroid/widget/CheckBox;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 307
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    return-void
.end method

.method private l()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const v2, -0x777778

    .line 313
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->d:Landroid/widget/TextView;

    const v1, 0x7f0c01bb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 314
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->e:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 320
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 321
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i:Landroid/widget/CheckBox;

    const v1, 0x3ecccccd

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 324
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->ae()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->m:Landroid/view/View;

    const v1, 0x3ecccccd

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 337
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->m:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 335
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->m:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;)Lcom/snapchat/android/api2/cash/square/SquareRequestTask;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 352
    new-instance v0, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;-><init>(ZLcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;)Lcom/snapchat/android/api2/cash/square/SquareRequestTask;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 359
    new-instance v0, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;-><init>(ZLjava/lang/String;Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;)V

    return-object v0
.end method

.method protected a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Landroid/widget/CompoundButton;Z)Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    new-instance v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$8;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Landroid/widget/CompoundButton;Z)V

    return-object v0
.end method

.method protected b()Lcom/snapchat/android/api2/cash/blockers/Blocker;
    .locals 1

    .prologue
    .line 341
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;

    invoke-direct {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;-><init>()V

    return-object v0
.end method

.method protected b(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Landroid/widget/CompoundButton;Z)Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$UpdateSuccessListener;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 390
    new-instance v0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;

    invoke-direct {v0, p0, p3, p1}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment$9;-><init>(Lcom/snapchat/android/fragments/cash/CashSettingsFragment;ZLcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V

    return-object v0
.end method

.method protected d()Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;
    .locals 1

    .prologue
    .line 346
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;

    invoke-direct {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;-><init>()V

    return-object v0
.end method

.method protected h()Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;
    .locals 1

    .prologue
    .line 442
    new-instance v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    const v0, 0x7f04001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->x:Landroid/view/View;

    .line 82
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->i()V

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public s_()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->s_()V

    .line 90
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public updateCardDetailsViewOnDetailsProvided(Lcom/snapchat/android/util/eventbus/CustomerProfileUpdatedEvent;)V
    .locals 1
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 437
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/cash/CashSettingsFragment;->a(Ljava/lang/Integer;)V

    .line 438
    return-void
.end method
