.class final Lcom/google/android/gms/internal/jp$j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cloudsave/CloudSaveManager$GetEntityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j"
.end annotation


# instance fields
.field private final EI:Lcom/google/android/gms/common/api/Status;

.field private final Pq:Lcom/google/android/gms/cloudsave/Entity;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ka;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/internal/ka;->statusCode:I

    invoke-static {v0}, Lcom/google/android/gms/internal/jp;->be(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/common/data/e;

    iget-object v2, p1, Lcom/google/android/gms/internal/ka;->Px:Lcom/google/android/gms/common/data/DataHolder;

    sget-object v3, Lcom/google/android/gms/cloudsave/Entity;->CREATOR:Lcom/google/android/gms/cloudsave/EntityCreator;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/data/e;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    const/16 v0, 0x1580

    invoke-static {v0}, Lcom/google/android/gms/internal/jp;->be(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jp$j;->EI:Lcom/google/android/gms/common/api/Status;

    iput-object v4, p0, Lcom/google/android/gms/internal/jp$j;->Pq:Lcom/google/android/gms/cloudsave/Entity;

    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataBuffer;->release()V

    :goto_1
    return-void

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/jp$j;->EI:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cloudsave/Entity;

    iput-object v0, p0, Lcom/google/android/gms/internal/jp$j;->Pq:Lcom/google/android/gms/cloudsave/Entity;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/jp$j;->EI:Lcom/google/android/gms/common/api/Status;

    iput-object v4, p0, Lcom/google/android/gms/internal/jp$j;->Pq:Lcom/google/android/gms/cloudsave/Entity;

    goto :goto_1
.end method


# virtual methods
.method public getEntity()Lcom/google/android/gms/cloudsave/Entity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$j;->Pq:Lcom/google/android/gms/cloudsave/Entity;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$j;->EI:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
