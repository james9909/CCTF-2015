.class final Lcom/google/android/gms/internal/jp$p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cloudsave/CloudSaveManager$SaveEntityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "p"
.end annotation


# instance fields
.field private final EI:Lcom/google/android/gms/common/api/Status;

.field private final Pt:Lcom/google/android/gms/cloudsave/Entity;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ko;Lcom/google/android/gms/cloudsave/Entity;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/android/gms/common/data/e;

    iget-object v0, p1, Lcom/google/android/gms/internal/ko;->PV:Lcom/google/android/gms/common/data/DataHolder;

    sget-object v2, Lcom/google/android/gms/internal/kk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/data/e;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kk;

    iget v2, v0, Lcom/google/android/gms/internal/kk;->statusCode:I

    invoke-static {v2}, Lcom/google/android/gms/internal/jp;->be(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/jp$p;->EI:Lcom/google/android/gms/common/api/Status;

    iget-object v2, v0, Lcom/google/android/gms/internal/kk;->PT:Lcom/google/android/gms/cloudsave/Entity;

    iput-object v2, p0, Lcom/google/android/gms/internal/jp$p;->Pt:Lcom/google/android/gms/cloudsave/Entity;

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataBuffer;->release()V

    iget-object v1, p0, Lcom/google/android/gms/internal/jp$p;->EI:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/jp;->c(Lcom/google/android/gms/cloudsave/Entity;)V

    iget-boolean v0, v0, Lcom/google/android/gms/internal/kk;->PU:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$p;->Pt:Lcom/google/android/gms/cloudsave/Entity;

    invoke-virtual {v0}, Lcom/google/android/gms/cloudsave/Entity;->ie()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/cloudsave/Entity;->p(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$p;->Pt:Lcom/google/android/gms/cloudsave/Entity;

    invoke-virtual {v0}, Lcom/google/android/gms/cloudsave/Entity;->if()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/cloudsave/Entity;->q(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$p;->EI:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
