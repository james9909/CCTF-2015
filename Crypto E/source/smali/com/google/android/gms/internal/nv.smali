.class public Lcom/google/android/gms/internal/nv;
.super Lcom/google/android/gms/common/internal/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/h",
        "<",
        "Lcom/google/android/gms/internal/ob;",
        ">;"
    }
.end annotation


# instance fields
.field protected final Fq:Lcom/google/android/gms/internal/oi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/oi",
            "<",
            "Lcom/google/android/gms/internal/ob;",
            ">;"
        }
    .end annotation
.end field

.field private final anS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/h;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/nv$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/nv$1;-><init>(Lcom/google/android/gms/internal/nv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/nv;->Fq:Lcom/google/android/gms/internal/oi;

    iput-object p5, p0, Lcom/google/android/gms/internal/nv;->anS:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/nv;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nv;->eb()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/internal/p;Lcom/google/android/gms/common/internal/h$e;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_name"

    iget-object v2, p0, Lcom/google/android/gms/internal/nv;->anS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x640578

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nv;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/p;->e(Lcom/google/android/gms/common/internal/o;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected bu(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ob;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ob$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ob;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected synthetic l(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nv;->bu(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ob;

    move-result-object v0

    return-object v0
.end method
