.class public Lcom/snapchat/android/ScAcceptTermsActivity;
.super Lcom/snapchat/android/SnapchatActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/snapchat/android/SnapchatActivity;-><init>()V

    return-void
.end method

.method private a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/snapchat/android/ScAcceptTermsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 68
    const v1, 0x7f0a0269

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 70
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 71
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/snapchat/android/ScAcceptTermsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 48
    if-lez v1, :cond_0

    .line 50
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    .line 52
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0a0269

    .line 19
    invoke-super {p0, p1}, Lcom/snapchat/android/SnapchatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f040073

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ScAcceptTermsActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/snapchat/android/ScAcceptTermsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;

    invoke-direct {v1}, Lcom/snapchat/android/fragments/ScAcceptTermsFragment;-><init>()V

    .line 27
    const-string v2, "ScAcceptTermsFragment"

    .line 28
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 30
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onPause()V

    .line 41
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/snapchat/android/SnapchatActivity;->onResume()V

    .line 35
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public onStartFragmentEvent(Lcom/snapchat/android/util/eventbus/StartFragmentEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 62
    iget-object v0, p1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;->a:Lcom/snapchat/android/util/fragment/SnapchatFragment;

    .line 63
    invoke-virtual {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/ScAcceptTermsActivity;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;)V

    .line 64
    return-void
.end method
