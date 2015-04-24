.class public Lcom/snapchat/android/fragments/captcha/CaptchaFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api/GetCaptchaTask$GetCaptchaInterface;
.implements Lcom/snapchat/android/api/SolveCaptchaTask$SolveCaptchaInterface;
.implements Lcom/snapchat/android/fragments/captcha/CaptchaAdapter$CaptchaAdapterInterface;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/ProgressBar;

.field private e:I

.field private f:Landroid/widget/GridView;

.field private g:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->f:Landroid/widget/GridView;

    return-object v0
.end method

.method private a(Lcom/snapchat/android/model/User;)V
    .locals 3
    .parameter

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->x:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->a(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 214
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->startActivity(Landroid/content/Intent;)V

    .line 215
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 216
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 200
    iget v1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->e:I

    new-instance v2, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 203
    const-string v0, "CaptchaFragment"

    const-string v1, "Attempted to go to NewUserAddFriendsFragment"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 142
    const v0, 0x7f0a009b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    const v1, 0x7f0c0040

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 144
    const v1, 0x7f0a009c

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 145
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 147
    iget-object v2, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    iget-object v2, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->g:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 150
    const v2, 0x7f0a009d

    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 151
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    new-instance v3, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;-><init>(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 169
    if-lez p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->g:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c:Landroid/widget/Button;

    const v1, 0x7f0c0179

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 173
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->g:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 95
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v1, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$1;

    invoke-direct {v1, p0, v0, p2, p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$1;-><init>(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/fragments/captcha/CaptchaAdapter$CaptchaAdapterInterface;)V

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->f:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->f:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->f:Landroid/widget/GridView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->f:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setClickable(Z)V

    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->f:Landroid/widget/GridView;

    new-instance v2, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$2;-><init>(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c:Landroid/widget/Button;

    new-instance v2, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;-><init>(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;Lcom/snapchat/android/fragments/captcha/CaptchaAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f0a009b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    const v0, 0x7f0a009c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->a(Z)V

    .line 185
    iget v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 189
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->h()V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a(Lcom/snapchat/android/model/User;)V

    goto :goto_0
.end method

.method public c()V
    .locals 6

    .prologue
    const v5, 0x7f0a009b

    const v2, 0x7f0a0097

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 223
    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-virtual {p0, v5}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0041

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 226
    invoke-virtual {p0, v5}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 227
    const v0, 0x7f0a009c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 228
    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    invoke-virtual {p0, v2}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->f:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 232
    new-instance v0, Lcom/snapchat/android/api/GetCaptchaTask;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api/GetCaptchaTask;-><init>(Lcom/snapchat/android/api/GetCaptchaTask$GetCaptchaInterface;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/GetCaptchaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 234
    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a(I)V

    .line 235
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->g:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 238
    iget v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->b:I

    .line 239
    invoke-static {v3}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Z)V

    goto :goto_0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c()V

    .line 247
    return-void
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/snapchat/android/ui/dialog/ConfirmTerminateSignupDialog;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->e:I

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/dialog/ConfirmTerminateSignupDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/dialog/ConfirmTerminateSignupDialog;->show()V

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 65
    const v0, 0x7f040010

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->x:Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->x:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 68
    new-instance v0, Lcom/snapchat/android/api/GetCaptchaTask;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api/GetCaptchaTask;-><init>(Lcom/snapchat/android/api/GetCaptchaTask$GetCaptchaInterface;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/GetCaptchaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    const v0, 0x7f0a0098

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v0, 0x7f0a009f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FontUtils;->a(Landroid/view/View;Landroid/content/res/AssetManager;)V

    .line 73
    const v0, 0x7f0a00a0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d:Landroid/widget/ProgressBar;

    .line 74
    const v0, 0x7f0a009e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->g:Landroid/widget/RelativeLayout;

    .line 75
    const v0, 0x7f0a009a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->f:Landroid/widget/GridView;

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->f:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 80
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->e:I

    .line 82
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->x:Landroid/view/View;

    return-object v0
.end method
