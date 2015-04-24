.class Lcom/snapchat/android/LandingPageActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/LandingPageActivity;->onForceVerificationEvent(Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;

.field final synthetic b:Lcom/snapchat/android/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/LandingPageActivity;Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1938
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity$10;->b:Lcom/snapchat/android/LandingPageActivity;

    iput-object p2, p0, Lcom/snapchat/android/LandingPageActivity$10;->a:Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1940
    const/4 v0, 0x0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->g()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics;->a(ZZ)V

    .line 1942
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$10;->b:Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->o:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    new-instance v2, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;

    iget-object v3, p0, Lcom/snapchat/android/LandingPageActivity$10;->a:Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;

    invoke-direct {v2, v3}, Lcom/snapchat/android/fragments/verification/SettingsPhoneVerificationFragment;-><init>(Lcom/snapchat/android/util/eventbus/ForceVerificationEvent;)V

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1943
    return-void
.end method
