.class public Lcom/google/android/gms/internal/eo;
.super Lcom/google/android/gms/internal/ey$a;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# instance fields
.field private final nL:Landroid/app/Activity;

.field private tB:Lcom/google/android/gms/internal/eu;

.field private tH:Landroid/content/Context;

.field private tI:Lcom/google/android/gms/internal/ew;

.field private tJ:Lcom/google/android/gms/internal/ep;

.field private tK:Lcom/google/android/gms/internal/et;

.field private tL:Ljava/lang/String;

.field private ty:Lcom/google/android/gms/internal/el;

.field private final tz:Lcom/google/android/gms/internal/er;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ey$a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/eo;->tL:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/eo;->nL:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/internal/eo;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/er;->k(Landroid/content/Context;)Lcom/google/android/gms/internal/er;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/eo;->tz:Lcom/google/android/gms/internal/er;

    return-void
.end method

.method public static a(Landroid/content/Context;ZLcom/google/android/gms/internal/ek;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.purchase.InAppPurchaseActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.ads.internal.purchase.useClientJar"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ek;->a(Landroid/content/Intent;Lcom/google/android/gms/internal/ek;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;ZILandroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/eo;->tK:Lcom/google/android/gms/internal/et;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/eo;->tK:Lcom/google/android/gms/internal/et;

    iget-object v5, p0, Lcom/google/android/gms/internal/eo;->tJ:Lcom/google/android/gms/internal/ep;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/et;->a(Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/ep;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3}, Lcom/google/android/gms/internal/es;->d(Landroid/content/Intent;)I

    move-result v1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/eo;->tB:Lcom/google/android/gms/internal/eu;

    iget-object v3, p0, Lcom/google/android/gms/internal/eo;->tL:Ljava/lang/String;

    invoke-virtual {v2, v3, p2, p3}, Lcom/google/android/gms/internal/eu;->a(Ljava/lang/String;ILandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/eo;->tI:Lcom/google/android/gms/internal/ew;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ew;->recordPlayBillingResolution(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/eo;->nL:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    iget-object v1, p0, Lcom/google/android/gms/internal/eo;->tI:Lcom/google/android/gms/internal/ew;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ew;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/google/android/gms/internal/eo;->a(Ljava/lang/String;ZILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v4, p0, Lcom/google/android/gms/internal/eo;->tL:Ljava/lang/String;

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/eo;->tz:Lcom/google/android/gms/internal/er;

    iget-object v3, p0, Lcom/google/android/gms/internal/eo;->tJ:Lcom/google/android/gms/internal/ep;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/er;->a(Lcom/google/android/gms/internal/ep;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "Fail to process purchase result."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/eo;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v4, p0, Lcom/google/android/gms/internal/eo;->tL:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-object v4, p0, Lcom/google/android/gms/internal/eo;->tL:Ljava/lang/String;

    throw v0
.end method

.method public onCreate()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/eo;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ek;->c(Landroid/content/Intent;)Lcom/google/android/gms/internal/ek;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ek;->tu:Lcom/google/android/gms/internal/et;

    iput-object v1, p0, Lcom/google/android/gms/internal/eo;->tK:Lcom/google/android/gms/internal/et;

    iget-object v1, v0, Lcom/google/android/gms/internal/ek;->lW:Lcom/google/android/gms/internal/eu;

    iput-object v1, p0, Lcom/google/android/gms/internal/eo;->tB:Lcom/google/android/gms/internal/eu;

    iget-object v1, v0, Lcom/google/android/gms/internal/ek;->ts:Lcom/google/android/gms/internal/ew;

    iput-object v1, p0, Lcom/google/android/gms/internal/eo;->tI:Lcom/google/android/gms/internal/ew;

    new-instance v1, Lcom/google/android/gms/internal/el;

    iget-object v2, p0, Lcom/google/android/gms/internal/eo;->nL:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/el;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/eo;->ty:Lcom/google/android/gms/internal/el;

    iget-object v0, v0, Lcom/google/android/gms/internal/ek;->tt:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/eo;->tH:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/eo;->nL:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/eo;->nL:Landroid/app/Activity;

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aL()Lcom/google/android/gms/internal/gy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gy;->dF()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/eo;->nL:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/eo;->nL:Landroid/app/Activity;

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aL()Lcom/google/android/gms/internal/gy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gy;->dG()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eo;->nL:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/eo;->ty:Lcom/google/android/gms/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/el;->destroy()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    iget-object v1, p0, Lcom/google/android/gms/internal/eo;->ty:Lcom/google/android/gms/internal/el;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/el;->t(Landroid/os/IBinder;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/eo;->tB:Lcom/google/android/gms/internal/eu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/eu;->cL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/eo;->tL:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/eo;->ty:Lcom/google/android/gms/internal/el;

    iget-object v2, p0, Lcom/google/android/gms/internal/eo;->nL:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/eo;->tI:Lcom/google/android/gms/internal/ew;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ew;->getProductId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/eo;->tL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/el;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v1, "BUY_INTENT"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object v2, v0

    if-nez v2, :cond_0

    invoke-static {v3}, Lcom/google/android/gms/internal/es;->f(Landroid/os/Bundle;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/eo;->tI:Lcom/google/android/gms/internal/ew;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ew;->recordPlayBillingResolution(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/eo;->tI:Lcom/google/android/gms/internal/ew;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ew;->getProductId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/eo;->a(Ljava/lang/String;ZILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/eo;->nL:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ep;

    iget-object v3, p0, Lcom/google/android/gms/internal/eo;->tI:Lcom/google/android/gms/internal/ew;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ew;->getProductId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/eo;->tL:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ep;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/eo;->tJ:Lcom/google/android/gms/internal/ep;

    iget-object v1, p0, Lcom/google/android/gms/internal/eo;->tz:Lcom/google/android/gms/internal/er;

    iget-object v3, p0, Lcom/google/android/gms/internal/eo;->tJ:Lcom/google/android/gms/internal/ep;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/er;->b(Lcom/google/android/gms/internal/ep;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/eo;->nL:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/16 v3, 0x3e9

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const-string v2, "Error when connecting in-app billing service"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/eo;->nL:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "In-app billing service disconnected."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->V(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/eo;->ty:Lcom/google/android/gms/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/el;->destroy()V

    return-void
.end method
