.class public Lcom/snapchat/android/ui/dialog/ConfirmTerminateSignupDialog;
.super Lcom/snapchat/android/ui/dialog/TwoButtonDialog;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/SnapchatActivity;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    check-cast p1, Lcom/snapchat/android/SnapchatActivity;

    iput-object p1, p0, Lcom/snapchat/android/ui/dialog/ConfirmTerminateSignupDialog;->a:Lcom/snapchat/android/SnapchatActivity;

    .line 25
    iput p2, p0, Lcom/snapchat/android/ui/dialog/ConfirmTerminateSignupDialog;->b:I

    .line 26
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->G()V

    .line 32
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/ConfirmTerminateSignupDialog;->a:Lcom/snapchat/android/SnapchatActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 33
    iget v1, p0, Lcom/snapchat/android/ui/dialog/ConfirmTerminateSignupDialog;->b:I

    new-instance v2, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 34
    return-void
.end method
