.class Lcom/google/android/gms/internal/ny$3;
.super Lcom/google/android/gms/internal/ny$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ny;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic anU:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic anV:Lcom/google/android/gms/location/LocationListener;

.field final synthetic anW:Lcom/google/android/gms/internal/ny;

.field final synthetic anY:Landroid/os/Looper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ny;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ny$3;->anW:Lcom/google/android/gms/internal/ny;

    iput-object p3, p0, Lcom/google/android/gms/internal/ny$3;->anU:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/ny$3;->anV:Lcom/google/android/gms/location/LocationListener;

    iput-object p5, p0, Lcom/google/android/gms/internal/ny$3;->anY:Landroid/os/Looper;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ny$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/od;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ny$3;->a(Lcom/google/android/gms/internal/od;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/od;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ny$3;->anU:Lcom/google/android/gms/location/LocationRequest;

    iget-object v1, p0, Lcom/google/android/gms/internal/ny$3;->anV:Lcom/google/android/gms/location/LocationListener;

    iget-object v2, p0, Lcom/google/android/gms/internal/ny$3;->anY:Landroid/os/Looper;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/od;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->RQ:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ny$3;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
