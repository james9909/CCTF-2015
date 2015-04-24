.class public Lcom/snapchat/android/fragments/settings/SettingsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/settings/SettingsFragment$EditEmailDialog;,
        Lcom/snapchat/android/fragments/settings/SettingsFragment$ConfirmLogoutDialog;,
        Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/service/SnapchatServiceManager;

.field private final b:Lcom/snapchat/android/model/UserPrefs;

.field private c:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

.field private d:Lcom/snapchat/android/util/IdentityUtils;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/view/View$OnClickListener;

.field private p:Landroid/view/View$OnClickListener;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->a()Lcom/snapchat/android/model/UserPrefs;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/fragments/settings/SettingsFragment;-><init>(Lcom/snapchat/android/service/SnapchatServiceManager;Lcom/snapchat/android/model/UserPrefs;)V

    .line 97
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/service/SnapchatServiceManager;Lcom/snapchat/android/model/UserPrefs;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 79
    new-instance v0, Lcom/snapchat/android/util/IdentityUtils;

    invoke-direct {v0}, Lcom/snapchat/android/util/IdentityUtils;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d:Lcom/snapchat/android/util/IdentityUtils;

    .line 387
    new-instance v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$14;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$14;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->n:Landroid/view/View$OnClickListener;

    .line 400
    new-instance v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$15;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$15;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->o:Landroid/view/View$OnClickListener;

    .line 408
    new-instance v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$16;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$16;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->p:Landroid/view/View$OnClickListener;

    .line 416
    new-instance v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$17;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$17;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->r:Landroid/view/View$OnClickListener;

    .line 441
    new-instance v0, Lcom/snapchat/android/fragments/settings/SettingsFragment$18;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$18;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->t:Landroid/view/View$OnClickListener;

    .line 100
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->a:Lcom/snapchat/android/service/SnapchatServiceManager;

    .line 101
    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->b:Lcom/snapchat/android/model/UserPrefs;

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/SettingsFragment;)Lcom/snapchat/android/model/UserPrefs;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->b:Lcom/snapchat/android/model/UserPrefs;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/SettingsFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 9

    .prologue
    const v8, 0x7f0a0295

    const v4, 0x7f0a0292

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080061

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->k:I

    .line 148
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080060

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->l:I

    .line 149
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080045

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->m:I

    .line 151
    const v0, 0x7f0a0056

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$1;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    const v0, 0x7f0a029b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v0, 0x7f0a0299

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$2;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v0, 0x7f0a029a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$3;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v3

    .line 175
    if-eqz v3, :cond_0

    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_0
    const v0, 0x7f0a0281

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->e:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f0a0282

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->f:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f0a0283

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->g:Landroid/widget/ImageView;

    .line 181
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->l()V

    .line 182
    const v0, 0x7f0a027f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const v0, 0x7f0a0286

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->h:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f0a0287

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->i:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f0a0288

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->j:Landroid/widget/ImageView;

    .line 188
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->k()V

    .line 190
    const v0, 0x7f0a0284

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v0, 0x7f0a0291

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$4;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    invoke-virtual {p0, v4}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$5;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$5;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->d(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 246
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    .line 247
    const-wide/16 v6, 0x7

    cmp-long v0, v4, v6

    if-ltz v0, :cond_5

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->e()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v3, 0x3e8

    if-lt v0, v3, :cond_5

    move v0, v1

    .line 252
    :goto_1
    if-eqz v0, :cond_1

    .line 253
    const v0, 0x7f0a0294

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    invoke-virtual {p0, v8}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    invoke-virtual {p0, v8}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$7;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    :cond_1
    const v0, 0x7f0a0296

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$8;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const v0, 0x7f0a0297

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$9;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    const v0, 0x7f0a0298

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$10;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$10;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    const v0, 0x7f0a028c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$11;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$11;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const v0, 0x7f0a0289

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$12;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$12;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    :try_start_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 353
    const v0, 0x7f0a029c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0222

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 360
    :goto_2
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 361
    const v0, 0x7f0a029d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 362
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    const-string v1, ""

    .line 364
    const-string v2, ""

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 365
    const-string v1, "\nGit Commit: "

    .line 367
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compiled with love on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/BuildConfig;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    new-instance v1, Lcom/snapchat/android/fragments/settings/SettingsFragment$13;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$13;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    :cond_3
    const v0, 0x7f0a028e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->q:Landroid/widget/TextView;

    .line 377
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->h()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    const v0, 0x7f0a028d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    const v0, 0x7f0a0290

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->s:Landroid/widget/TextView;

    .line 382
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->i()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    const v0, 0x7f0a028f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    return-void

    .line 208
    :cond_4
    const v0, 0x7f0a0293

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0c01ce

    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {p0, v4}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$6;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment$6;-><init>(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    const-string v1, "SettingsFragment"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    move v0, v2

    goto/16 :goto_1

    .line 355
    :catch_1
    move-exception v0

    .line 356
    const-string v0, "SettingsFragment"

    const-string v1, "getPackageName failed. Continuing."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/SettingsFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/SettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->h()V

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/settings/SettingsFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 492
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->USER_INITIATED:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;)V

    .line 493
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->a:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v0}, Lcom/snapchat/android/service/SnapchatServiceManager;->d()I

    .line 495
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 496
    invoke-static {v0}, Lcom/snapchat/android/util/ActivityLauncher;->a(Landroid/app/Activity;)V

    .line 497
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 498
    return-void
.end method

.method private i()V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->k()V

    .line 529
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->l()V

    .line 530
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 534
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d:Lcom/snapchat/android/util/IdentityUtils;

    invoke-virtual {v0}, Lcom/snapchat/android/util/IdentityUtils;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->b:Lcom/snapchat/android/model/UserPrefs;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->b:Lcom/snapchat/android/model/UserPrefs;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->i:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 540
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 557
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->h:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 545
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->b:Lcom/snapchat/android/model/UserPrefs;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->b:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->i:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 550
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->b:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 551
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->b:Lcom/snapchat/android/model/UserPrefs;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 553
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->b:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v1}, Lcom/snapchat/android/model/UserPrefs;->aL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 560
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d:Lcom/snapchat/android/util/IdentityUtils;

    invoke-virtual {v0}, Lcom/snapchat/android/util/IdentityUtils;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 564
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 586
    :goto_0
    return-void

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->e:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 575
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 577
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 581
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 583
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-static {}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a()Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 107
    const v0, 0x7f040078

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->x:Landroid/view/View;

    .line 108
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 110
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->b()V

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onPhoneNumberVerifiedEvent(Lcom/snapchat/android/util/eventbus/PhoneNumberVerifiedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->l()V

    .line 602
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 590
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->f:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->bm:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->bn:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->g:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->bo:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->i()V

    .line 597
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStart()V

    .line 118
    invoke-static {p0}, Lcom/snapchat/android/model/UserPrefs;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 119
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStop()V

    .line 124
    invoke-static {p0}, Lcom/snapchat/android/model/UserPrefs;->b(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 125
    return-void
.end method

.method protected s_()V
    .locals 4

    .prologue
    const v3, 0x7f0a0289

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->c:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "FIRST_MEDIA_OPENED"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->b(Ljava/lang/String;)V

    .line 130
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->s_()V

    .line 131
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->G()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/SettingsFragment;->x:Landroid/view/View;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 136
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->Z()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :goto_0
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b()V

    .line 143
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/settings/SettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
