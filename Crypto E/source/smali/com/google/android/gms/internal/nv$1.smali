.class Lcom/google/android/gms/internal/nv$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/oi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/nv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/oi",
        "<",
        "Lcom/google/android/gms/internal/ob;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic anT:Lcom/google/android/gms/internal/nv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nv$1;->anT:Lcom/google/android/gms/internal/nv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eb()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nv$1;->anT:Lcom/google/android/gms/internal/nv;

    invoke-static {v0}, Lcom/google/android/gms/internal/nv;->a(Lcom/google/android/gms/internal/nv;)V

    return-void
.end method

.method public synthetic jG()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nv$1;->pq()Lcom/google/android/gms/internal/ob;

    move-result-object v0

    return-object v0
.end method

.method public pq()Lcom/google/android/gms/internal/ob;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nv$1;->anT:Lcom/google/android/gms/internal/nv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nv;->jG()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ob;

    return-object v0
.end method
