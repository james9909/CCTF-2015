.class Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment$2;->b:Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment$2;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment$2;->b:Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->a(Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment$2;->b:Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/LoginAndSignupFragment$2;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    new-instance v2, Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/signup/SignupFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "SignupFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 83
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->a(Z)V

    .line 85
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->k()V

    goto :goto_0
.end method
