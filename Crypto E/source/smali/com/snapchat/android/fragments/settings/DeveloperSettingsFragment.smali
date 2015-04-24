.class public Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$VenusaurException;,
        Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$IvysaurException;,
        Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$BulbasaurException;
    }
.end annotation


# instance fields
.field protected a:Lcom/snapchat/android/cash/CashAuthManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Lcom/snapchat/android/cash/CashCardManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final c:Lcom/snapchat/android/util/debug/DeveloperSettings;

.field private final d:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

.field private final e:Lcom/snapchat/android/chat/ChatConnectionMonitor;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lcom/snapchat/android/util/debug/DeveloperSettings;->a()Lcom/snapchat/android/util/debug/DeveloperSettings;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/chat/ChatConnectionMonitor;->a()Lcom/snapchat/android/chat/ChatConnectionMonitor;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;-><init>(Lcom/snapchat/android/util/debug/DeveloperSettings;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Lcom/snapchat/android/chat/ChatConnectionMonitor;)V

    .line 75
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/util/debug/DeveloperSettings;Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;Lcom/snapchat/android/chat/ChatConnectionMonitor;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 80
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 81
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c:Lcom/snapchat/android/util/debug/DeveloperSettings;

    .line 82
    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    .line 83
    iput-object p3, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->e:Lcom/snapchat/android/chat/ChatConnectionMonitor;

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)Lcom/snapchat/android/chat/ChatConnectionMonitor;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->e:Lcom/snapchat/android/chat/ChatConnectionMonitor;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)Lcom/snapchat/android/util/debug/DeveloperSettings;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c:Lcom/snapchat/android/util/debug/DeveloperSettings;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 98
    invoke-static {}, Lcom/snapchat/android/LandingPageActivity;->t()Lcom/snapchat/android/util/chat/SecureChatService;

    move-result-object v3

    .line 100
    const v0, 0x7f0a0056

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v0, 0x7f0a0176

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    invoke-static {v2}, Lcom/snapchat/android/util/debug/DevUtils;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    .line 109
    if-nez v1, :cond_0

    invoke-static {}, Lcom/snapchat/android/util/network/EndpointManager;->a()Lcom/snapchat/android/util/network/EndpointManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/util/network/EndpointManager;->b()Ljava/lang/String;

    move-result-object v1

    .line 111
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    new-instance v4, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$2;

    invoke-direct {v4, p0, v1, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->h()V

    .line 132
    const v1, 0x7f0a0178

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 133
    invoke-static {}, Lcom/snapchat/android/util/debug/DevUtils;->a()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 134
    new-instance v4, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;

    invoke-direct {v4, p0, v2, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/content/SharedPreferences;Landroid/widget/TextView;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    const v0, 0x7f0a0177

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$4;

    invoke-direct {v4, p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->i()V

    .line 185
    const v0, 0x7f0a0182

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 186
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->ao:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 189
    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$5;

    invoke-direct {v1, p0, v2}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$5;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 217
    const v1, 0x7f0a0181

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$6;

    invoke-direct {v4, p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$6;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    const v0, 0x7f0a017e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 228
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->ak:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/snapchat/android/util/PreferenceUtils;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 230
    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$7;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 236
    const v1, 0x7f0a017d

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$8;

    invoke-direct {v4, p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$8;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const v0, 0x7f0a0180

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 244
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->an:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 246
    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9;

    invoke-direct {v1, p0, v2, v3}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$9;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/content/SharedPreferences;Lcom/snapchat/android/util/chat/SecureChatService;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 263
    const v1, 0x7f0a017f

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$10;

    invoke-direct {v3, p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$10;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    const v0, 0x7f0a0184

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 272
    const v1, 0x7f0a0185

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 273
    new-instance v3, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$11;

    invoke-direct {v3, p0, v0, v2}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$11;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/TextView;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 291
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->as:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x258

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 294
    const v0, 0x7f0a0187

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$12;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    const v0, 0x7f0a0186

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$13;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$13;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    const v0, 0x7f0a0188

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$14;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$14;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    const v0, 0x7f0a0189

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$15;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$15;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    const v0, 0x7f0a018a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$16;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$16;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    const v0, 0x7f0a018b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$17;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$17;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    const v0, 0x7f0a018c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$18;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$18;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    const v0, 0x7f0a018d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$19;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    const v0, 0x7f0a018f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 377
    invoke-static {}, Lcom/snapchat/android/util/debug/DevUtils;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 378
    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$20;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 385
    const v1, 0x7f0a018e

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$21;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$21;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    const v0, 0x7f0a017b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 393
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c:Lcom/snapchat/android/util/debug/DeveloperSettings;

    invoke-virtual {v1}, Lcom/snapchat/android/util/debug/DeveloperSettings;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 394
    new-instance v1, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$22;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 401
    const v1, 0x7f0a017a

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$23;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$23;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 411
    const v0, 0x7f0a017c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 412
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->c:Lcom/snapchat/android/util/debug/DeveloperSettings;

    invoke-virtual {v1}, Lcom/snapchat/android/util/debug/DeveloperSettings;->b()Ljava/lang/String;

    move-result-object v1

    .line 415
    if-nez v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b()Ljava/lang/String;

    move-result-object v1

    .line 421
    :cond_0
    if-nez v1, :cond_1

    .line 422
    const-string v1, ""

    .line 426
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24;

    invoke-direct {v2, p0, v1, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$24;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    const v4, 0x7f040088

    .line 444
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    .line 445
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    const-string v2, "Default (phone, no captcha)"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    const-string v2, "Only captcha"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    const-string v2, "Phone and captcha"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    const-string v2, "Neither phone nor captcha"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 454
    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 456
    const v0, 0x7f0a0179

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 457
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 458
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->au:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 460
    new-instance v2, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;

    invoke-direct {v2, p0, v1}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment$25;-><init>(Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 471
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    const v0, 0x7f04003f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->x:Landroid/view/View;

    .line 89
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 91
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->b()V

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/DeveloperSettingsFragment;->x:Landroid/view/View;

    return-object v0
.end method
