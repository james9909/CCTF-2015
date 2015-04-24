.class public final Lcom/google/android/gms/internal/fv$b;
.super Lcom/google/android/gms/internal/fv;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final mL:Ljava/lang/Object;

.field private final uH:Lcom/google/android/gms/internal/fu$a;

.field private final uI:Lcom/google/android/gms/internal/fw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/fu$a;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/fv;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/fu$a;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fv$b;->mL:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/fv$b;->uH:Lcom/google/android/gms/internal/fu$a;

    new-instance v0, Lcom/google/android/gms/internal/fw;

    iget-object v1, p2, Lcom/google/android/gms/internal/fx;->lH:Lcom/google/android/gms/internal/hg;

    iget v1, v1, Lcom/google/android/gms/internal/hg;->xR:I

    invoke-direct {v0, p1, p0, p0, v1}, Lcom/google/android/gms/internal/fw;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fv$b;->uI:Lcom/google/android/gms/internal/fw;

    iget-object v0, p0, Lcom/google/android/gms/internal/fv$b;->uI:Lcom/google/android/gms/internal/fw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->connect()V

    return-void
.end method


# virtual methods
.method public cT()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/fv$b;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fv$b;->uI:Lcom/google/android/gms/internal/fw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fv$b;->uI:Lcom/google/android/gms/internal/fw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fv$b;->uI:Lcom/google/android/gms/internal/fw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->disconnect()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cU()Lcom/google/android/gms/internal/gb;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/fv$b;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fv$b;->uI:Lcom/google/android/gms/internal/fw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fw;->cV()Lcom/google/android/gms/internal/gb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    monitor-exit v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv$b;->start()V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fv$b;->uH:Lcom/google/android/gms/internal/fu$a;

    new-instance v1, Lcom/google/android/gms/internal/fz;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/fz;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/fu$a;->b(Lcom/google/android/gms/internal/fz;)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    const-string v0, "Disconnected from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    return-void
.end method
