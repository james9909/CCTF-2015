.class final Lcom/google/android/gms/internal/jp$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cloudsave/CloudSaveManager$DeleteEntityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field private final EI:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jr;Lcom/google/android/gms/cloudsave/Entity;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/internal/jr;->Pu:I

    invoke-static {v0}, Lcom/google/android/gms/internal/jp;->be(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jp$d;->EI:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$d;->EI:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/jr;->Pv:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/cloudsave/Entity;->a(Lcom/google/android/gms/cloudsave/Entity;)V

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/cloudsave/Entity;->p(J)V

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/cloudsave/Entity;->q(J)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/jv;Lcom/google/android/gms/cloudsave/Entity;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/jp$d;->b(Lcom/google/android/gms/internal/jv;)Lcom/google/android/gms/internal/jr;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/jp$d;-><init>(Lcom/google/android/gms/internal/jr;Lcom/google/android/gms/cloudsave/Entity;)V

    return-void
.end method

.method private static b(Lcom/google/android/gms/internal/jv;)Lcom/google/android/gms/internal/jr;
    .locals 3

    new-instance v1, Lcom/google/android/gms/common/data/e;

    iget-object v0, p0, Lcom/google/android/gms/internal/jv;->Pz:Lcom/google/android/gms/common/data/DataHolder;

    sget-object v2, Lcom/google/android/gms/internal/jr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/data/e;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jr;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataBuffer;->release()V

    return-object v0
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$d;->EI:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
