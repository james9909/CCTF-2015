.class Lcom/google/android/gms/internal/jp$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jp;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Om:Ljava/util/Collection;

.field final synthetic Pj:Lcom/google/android/gms/common/api/BaseImplementation$b;

.field final synthetic Pk:Lcom/google/android/gms/internal/jp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jp;Ljava/util/Collection;Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jp$2;->Pk:Lcom/google/android/gms/internal/jp;

    iput-object p2, p0, Lcom/google/android/gms/internal/jp$2;->Om:Ljava/util/Collection;

    iput-object p3, p0, Lcom/google/android/gms/internal/jp$2;->Pj:Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$2;->Om:Ljava/util/Collection;

    invoke-static {v0}, Lcom/google/android/gms/internal/jq;->e(Ljava/util/Collection;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/jp$m;

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$2;->Pj:Lcom/google/android/gms/common/api/BaseImplementation$b;

    iget-object v3, p0, Lcom/google/android/gms/internal/jp$2;->Om:Ljava/util/Collection;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/jp$m;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/util/Collection;)V

    new-instance v3, Lcom/google/android/gms/internal/km;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/km;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jp$2;->Pk:Lcom/google/android/gms/internal/jp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jp;->jG()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kd;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kc;Lcom/google/android/gms/internal/km;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "CloudSaveClient"

    const-string v2, "service died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_1
    throw v0
.end method
