.class public Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->b:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->a:Z

    return p1
.end method

.method private h()V
    .locals 2

    .prologue
    .line 71
    const v0, 0x7f0a0056

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->i()V

    .line 79
    return-void
.end method

.method private i()V
    .locals 7

    .prologue
    const v6, 0x7f0a005d

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 82
    const v0, 0x7f0a005a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->b:Landroid/widget/CheckBox;

    .line 83
    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 84
    const v1, 0x7f0a0062

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 86
    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->b:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->L()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->M()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->K()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 90
    const v2, 0x7f0a0059

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$2;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v2, 0x7f0a005f

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$3;

    invoke-direct {v3, p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v2, 0x7f0a0061

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$4;

    invoke-direct {v3, p0, v1}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->b:Landroid/widget/CheckBox;

    new-instance v3, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$5;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$5;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    new-instance v2, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$6;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$6;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    new-instance v0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$7;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$7;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    const v0, 0x7f0a0064

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->O()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const v1, 0x7f0a0063

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v0, 0x7f0a005c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 202
    const v1, 0x7f0c0228

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 203
    const v2, 0x7f0c01ec

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    new-instance v1, Lcom/snapchat/android/location/LocationPermissionsAccessor;

    invoke-direct {v1}, Lcom/snapchat/android/location/LocationPermissionsAccessor;-><init>()V

    .line 208
    invoke-virtual {v1}, Lcom/snapchat/android/location/LocationPermissionsAccessor;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    invoke-virtual {p0, v6}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    invoke-virtual {p0, v6}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 219
    new-instance v1, Lcom/snapchat/android/location/LocationPermissionsAccessor;

    invoke-direct {v1}, Lcom/snapchat/android/location/LocationPermissionsAccessor;-><init>()V

    .line 220
    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->z:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/snapchat/android/location/LocationPermissionsAccessor;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$9;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$9;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/location/LocationPermissionsAccessor;->a(Landroid/content/Context;Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;)V

    .line 246
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-static {v3}, Lcom/snapchat/android/model/UserPrefs;->g(Z)V

    .line 237
    invoke-virtual {v1, v4}, Lcom/snapchat/android/location/LocationPermissionsAccessor;->a(Z)V

    .line 238
    const-string v0, "TOGGLE_SETTING_FILTERS"

    invoke-static {v0, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;Z)V

    .line 239
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->a:Z

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {v1, v3}, Lcom/snapchat/android/location/LocationPermissionsAccessor;->a(Z)V

    .line 243
    const-string v0, "TOGGLE_SETTING_FILTERS"

    invoke-static {v0, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;Z)V

    .line 244
    iput-boolean v4, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->a:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    const v0, 0x7f040004

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->x:Landroid/view/View;

    .line 52
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 54
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->h()V

    .line 56
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 62
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->a:Z

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/snapchat/android/api/UpdateFeatureSettingsTask;

    invoke-direct {v0}, Lcom/snapchat/android/api/UpdateFeatureSettingsTask;-><init>()V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/UpdateFeatureSettingsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->L()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/snapchat/android/location/GeofilterManager;->a()Lcom/snapchat/android/location/GeofilterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/location/GeofilterManager;->f()V

    .line 68
    :cond_0
    return-void
.end method
