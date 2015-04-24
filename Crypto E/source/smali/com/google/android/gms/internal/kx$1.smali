.class Lcom/google/android/gms/internal/kx$1;
.super Lcom/google/android/gms/internal/ky$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/kx;->g(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UK:Lcom/google/android/gms/internal/kx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kx;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kx$1;->UK:Lcom/google/android/gms/internal/kx;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ky$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/kz;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kx$1;->a(Lcom/google/android/gms/internal/kz;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/kz;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/kz;->jG()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lb;

    new-instance v1, Lcom/google/android/gms/internal/kx$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/kx$a;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/lb;->a(Lcom/google/android/gms/internal/la;)V

    return-void
.end method
