.class public Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->b:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private b()V
    .locals 21

    .prologue
    .line 44
    const v1, 0x7f0a0056

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v1, 0x7f0a0238

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/CheckBox;

    .line 53
    const v1, 0x7f0a023b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 55
    const v1, 0x7f0a023e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 56
    const v1, 0x7f0a0241

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 58
    const v1, 0x7f0a0244

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 60
    const v1, 0x7f0a0237

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f0a0239

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v10

    .line 68
    new-instance v1, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v6}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v1, 0x7f0a023f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v7

    .line 75
    new-instance v1, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v3}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v1, 0x7f0a023c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v9

    .line 82
    new-instance v1, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v5}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$5;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v1, 0x7f0a0242

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v8

    .line 89
    new-instance v1, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v4}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$6;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v1, 0x7f0a023a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v14

    .line 97
    const v1, 0x7f0a0240

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v11

    .line 98
    const v1, 0x7f0a023d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v13

    .line 99
    const v1, 0x7f0a0243

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->d(I)Landroid/view/View;

    move-result-object v12

    .line 101
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->a:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->aw:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->a:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->ax:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->a:Landroid/content/SharedPreferences;

    sget-object v17, Lcom/snapchat/android/database/SharedPreferenceKey;->ay:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual/range {v17 .. v17}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->a:Landroid/content/SharedPreferences;

    sget-object v18, Lcom/snapchat/android/database/SharedPreferenceKey;->az:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual/range {v18 .. v18}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->a:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->aA:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->a:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->aB:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 117
    new-instance v1, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v14}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$7;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v15, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    invoke-virtual/range {v15 .. v16}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 143
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 144
    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 146
    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 148
    new-instance v1, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$8;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)V

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 155
    new-instance v1, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$9;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)V

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 162
    new-instance v1, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$10;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$10;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)V

    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 169
    new-instance v1, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$11;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment$11;-><init>(Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;)V

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    const v0, 0x7f040067

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->x:Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->a:Landroid/content/SharedPreferences;

    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->b:Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->b()V

    .line 40
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/NotificationSettingsFragment;->x:Landroid/view/View;

    return-object v0
.end method
