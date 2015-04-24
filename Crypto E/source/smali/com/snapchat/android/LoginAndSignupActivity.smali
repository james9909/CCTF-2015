.class public Lcom/snapchat/android/LoginAndSignupActivity;
.super Lcom/snapchat/android/SnapchatCameraBackgroundActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private final b:Landroid/graphics/Rect;

.field private c:Lcom/snapchat/android/model/server/VerificationNeededResponse;

.field private d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity;->b:Landroid/graphics/Rect;

    .line 37
    new-instance v0, Lcom/snapchat/android/LoginAndSignupActivity$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/LoginAndSignupActivity$1;-><init>(Lcom/snapchat/android/LoginAndSignupActivity;)V

    iput-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/LoginAndSignupActivity;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity;->b:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/LoginAndSignupActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity;->a:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/server/VerificationNeededResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/snapchat/android/LoginAndSignupActivity;->c:Lcom/snapchat/android/model/server/VerificationNeededResponse;

    .line 127
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity;->c:Lcom/snapchat/android/model/server/VerificationNeededResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity;->c:Lcom/snapchat/android/model/server/VerificationNeededResponse;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/VerificationNeededResponse;->needsPhoneVerification()Z

    move-result v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity;->c:Lcom/snapchat/android/model/server/VerificationNeededResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity;->c:Lcom/snapchat/android/model/server/VerificationNeededResponse;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/VerificationNeededResponse;->needsCaptcha()Z

    move-result v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity;->c:Lcom/snapchat/android/model/server/VerificationNeededResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity;->c:Lcom/snapchat/android/model/server/VerificationNeededResponse;

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/VerificationNeededResponse;->getPrompt()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->finish()V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    .line 83
    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    instance-of v1, v0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;

    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->finish()V

    goto :goto_0

    .line 87
    :cond_2
    instance-of v0, v0, Lcom/snapchat/android/fragments/signup/NewUserContactBookFragment;

    if-eqz v0, :cond_3

    .line 91
    invoke-static {v2}, Lcom/snapchat/android/model/UserPrefs;->a(Z)V

    .line 93
    invoke-static {v2}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->a(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->finish()V

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a0209

    new-instance v2, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f04005e

    const v1, 0x7f0a0208

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/LoginAndSignupActivity;->a(II)V

    .line 65
    if-nez p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 67
    const v1, 0x7f0a0209

    new-instance v2, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 70
    :cond_0
    const v0, 0x7f0a020a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/LoginAndSignupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/LoginAndSignupActivity;->a:Landroid/view/View;

    .line 71
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 111
    invoke-super {p0}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->onPause()V

    .line 113
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 116
    iget-object v1, p0, Lcom/snapchat/android/LoginAndSignupActivity;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 122
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 123
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/LoginAndSignupActivity;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/snapchat/android/SnapchatCameraBackgroundActivity;->onResume()V

    .line 106
    invoke-virtual {p0}, Lcom/snapchat/android/LoginAndSignupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/LoginAndSignupActivity;->d:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 107
    return-void
.end method
