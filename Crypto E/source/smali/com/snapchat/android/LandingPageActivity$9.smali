.class Lcom/snapchat/android/LandingPageActivity$9;
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
.field final synthetic a:Lcom/snapchat/android/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/LandingPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1945
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity$9;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1947
    const/4 v0, 0x1

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->g()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/PhoneVerificationAnalytics;->a(ZZ)V

    .line 1949
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1950
    return-void
.end method
