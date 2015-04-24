.class Lcom/snapchat/android/LandingPageActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/location/LocationPermissionsAccessor$LocationPermissionsDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/LandingPageActivity;->onSnapCapturedEvent(Lcom/snapchat/android/util/eventbus/SnapCapturedEvent;)V
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
    .line 1538
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity$6;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1541
    if-eqz p1, :cond_0

    .line 1542
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->g()V

    .line 1543
    new-instance v0, Lcom/snapchat/android/api/UpdateFeatureSettingsTask;

    invoke-direct {v0}, Lcom/snapchat/android/api/UpdateFeatureSettingsTask;-><init>()V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/UpdateFeatureSettingsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1545
    :cond_0
    return-void
.end method
