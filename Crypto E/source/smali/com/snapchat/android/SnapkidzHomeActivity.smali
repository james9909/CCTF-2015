.class public Lcom/snapchat/android/SnapkidzHomeActivity;
.super Lcom/snapchat/android/SnapchatActivity;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/snapchat/android/SnapchatActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/SnapkidzHomeActivity;->a:Z

    return-void
.end method

.method private a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzHomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 130
    const v1, 0x7f0a01ed

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 132
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 133
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/snapchat/android/SnapkidzHomeActivity;->b:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const/16 v0, 0x2c3

    if-ne p2, v0, :cond_0

    .line 53
    invoke-static {p0}, Lcom/snapchat/android/util/ActivityLauncher;->a(Landroid/app/Activity;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzHomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 62
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/CameraStateEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/CameraStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 64
    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onBackPressed()V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzHomeActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzHomeActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/cache/Storage;->a(Ljava/io/File;Ljava/io/File;)V

    .line 97
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->b(Z)V

    .line 98
    const v0, 0x7f040085

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapkidzHomeActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzHomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzHomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 101
    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzHomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 103
    new-instance v0, Lcom/snapchat/android/camera/CameraFragment;

    invoke-direct {v0}, Lcom/snapchat/android/camera/CameraFragment;-><init>()V

    const-string v1, "CameraFragment"

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/SnapkidzHomeActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;)V

    .line 107
    const v0, 0x7f0a01ed

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapkidzHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/SnapkidzHomeActivity$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapkidzHomeActivity$1;-><init>(Lcom/snapchat/android/SnapkidzHomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 114
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 70
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    .line 72
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/HardwareKeyEvent;

    invoke-direct {v1, p1, p2}, Lcom/snapchat/android/util/eventbus/HardwareKeyEvent;-><init>(ILandroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 73
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/SnapchatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/snapchat/android/SnapkidzHomeActivity;->setIntent(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onPause()V

    .line 79
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->H()V

    .line 84
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onResume()V

    .line 120
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 122
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapkidzHomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 123
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/SnapkidzHomeActivity;->a:Z

    .line 126
    :cond_0
    return-void
.end method

.method public onSnapCapturedEvent(Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Mediabryo;->b()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;->a()Lcom/snapchat/android/model/Mediabryo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Mediabryo;->G()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/SnapkidzHomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 171
    iput-object p1, p0, Lcom/snapchat/android/SnapkidzHomeActivity;->b:Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;

    .line 173
    new-instance v0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-direct {v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;-><init>()V

    const-string v1, "preview"

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/SnapkidzHomeActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onWindowFocusChanged(Z)V

    .line 143
    const-string v0, "SnapkidzHomeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On ac Should we onWindowFocusChanged has focus? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/SnapkidzHomeActivity;->a:Z

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "SnapkidzHomeActivity"

    const-string v1, "On ac Calling onResume from window focus fn"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iput-boolean v3, p0, Lcom/snapchat/android/SnapkidzHomeActivity;->a:Z

    .line 147
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/LockScreenOpenedEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/LockScreenOpenedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 149
    :cond_0
    return-void
.end method
