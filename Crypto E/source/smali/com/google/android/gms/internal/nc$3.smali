.class Lcom/google/android/gms/internal/nc$3;
.super Lcom/google/android/gms/internal/mn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nc;->readData(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataReadRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mn$a",
        "<",
        "Lcom/google/android/gms/fitness/result/DataReadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic acu:Lcom/google/android/gms/internal/nc;

.field final synthetic acw:Lcom/google/android/gms/fitness/request/DataReadRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataReadRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nc$3;->acu:Lcom/google/android/gms/internal/nc;

    iput-object p3, p0, Lcom/google/android/gms/internal/nc$3;->acw:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mn$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected H(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataReadResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nc$3;->acw:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/result/DataReadResult;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/request/DataReadRequest;)Lcom/google/android/gms/fitness/result/DataReadResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nc$3;->a(Lcom/google/android/gms/internal/mn;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/mn;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/nc$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/nc$a;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/internal/nc$1;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/mn;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/mn;->lV()Lcom/google/android/gms/internal/ms;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/nc$3;->acw:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ms;->a(Lcom/google/android/gms/fitness/request/DataReadRequest;Lcom/google/android/gms/internal/mp;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nc$3;->H(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataReadResult;

    move-result-object v0

    return-object v0
.end method