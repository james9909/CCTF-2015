.class public final Lcom/google/android/gms/internal/eq;
.super Lcom/google/android/gms/internal/fa$a;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private tF:Ljava/lang/String;

.field private tJ:Lcom/google/android/gms/internal/ep;

.field private tP:Z

.field private tQ:I

.field private tR:Landroid/content/Intent;

.field private ty:Lcom/google/android/gms/internal/el;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/ep;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/fa$a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/eq;->tP:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/eq;->tF:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/eq;->tQ:I

    iput-object p5, p0, Lcom/google/android/gms/internal/eq;->tR:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/eq;->tP:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/eq;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/internal/eq;->tJ:Lcom/google/android/gms/internal/ep;

    return-void
.end method


# virtual methods
.method public finishPurchase()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->tR:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/internal/es;->d(Landroid/content/Intent;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/eq;->tQ:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/el;

    iget-object v1, p0, Lcom/google/android/gms/internal/eq;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/el;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/eq;->ty:Lcom/google/android/gms/internal/el;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/eq;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->tF:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseData()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->tR:Landroid/content/Intent;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/eq;->tQ:I

    return v0
.end method

.method public isVerified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/eq;->tP:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "In-app billing service connected."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->V(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->ty:Lcom/google/android/gms/internal/el;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/el;->t(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->tR:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/internal/es;->e(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/es;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/eq;->ty:Lcom/google/android/gms/internal/el;

    iget-object v2, p0, Lcom/google/android/gms/internal/eq;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/el;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/er;->k(Landroid/content/Context;)Lcom/google/android/gms/internal/er;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/eq;->tJ:Lcom/google/android/gms/internal/ep;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/er;->a(Lcom/google/android/gms/internal/ep;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->ty:Lcom/google/android/gms/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/el;->destroy()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "In-app billing service disconnected."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->V(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/eq;->ty:Lcom/google/android/gms/internal/el;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/el;->destroy()V

    return-void
.end method
