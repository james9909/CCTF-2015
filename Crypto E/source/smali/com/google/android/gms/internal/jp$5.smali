.class Lcom/google/android/gms/internal/jp$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jp;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/cloudsave/Query;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Op:Lcom/google/android/gms/cloudsave/Query;

.field final synthetic Pj:Lcom/google/android/gms/common/api/BaseImplementation$b;

.field final synthetic Pk:Lcom/google/android/gms/internal/jp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jp;Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/cloudsave/Query;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jp$5;->Pk:Lcom/google/android/gms/internal/jp;

    iput-object p2, p0, Lcom/google/android/gms/internal/jp$5;->Pj:Lcom/google/android/gms/common/api/BaseImplementation$b;

    iput-object p3, p0, Lcom/google/android/gms/internal/jp$5;->Op:Lcom/google/android/gms/cloudsave/Query;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v1, Lcom/google/android/gms/internal/jp$e;

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$5;->Pj:Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/jp$e;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    new-instance v2, Lcom/google/android/gms/internal/jt;

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$5;->Op:Lcom/google/android/gms/cloudsave/Query;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/jt;-><init>(Lcom/google/android/gms/cloudsave/Query;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jp$5;->Pk:Lcom/google/android/gms/internal/jp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jp;->jG()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kd;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/kd;->a(Lcom/google/android/gms/internal/kc;Lcom/google/android/gms/internal/jt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "CloudSaveClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
