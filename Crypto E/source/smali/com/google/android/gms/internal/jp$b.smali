.class final Lcom/google/android/gms/internal/jp$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cloudsave/CloudSaveManager$DeleteEntitiesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final EI:Lcom/google/android/gms/common/api/Status;

.field private final Pm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/cloudsave/Entity$Key;",
            "Lcom/google/android/gms/cloudsave/CloudSaveManager$DeleteEntityResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jv;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/jv;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/cloudsave/Entity;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/internal/jv;->statusCode:I

    invoke-static {v0}, Lcom/google/android/gms/internal/jp;->be(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jp$b;->EI:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/data/e;

    iget-object v1, p1, Lcom/google/android/gms/internal/jv;->Pz:Lcom/google/android/gms/common/data/DataHolder;

    sget-object v2, Lcom/google/android/gms/internal/jr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/data/e;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/jp;->d(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jr;

    iget-object v1, v0, Lcom/google/android/gms/internal/jr;->Pw:Lcom/google/android/gms/cloudsave/Entity$Key;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cloudsave/Entity;

    new-instance v5, Lcom/google/android/gms/internal/jp$d;

    invoke-direct {v5, v0, v1}, Lcom/google/android/gms/internal/jp$d;-><init>(Lcom/google/android/gms/internal/jr;Lcom/google/android/gms/cloudsave/Entity;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/jr;->Pw:Lcom/google/android/gms/cloudsave/Entity$Key;

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jp$b;->Pm:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getDeleteEntitiesResult()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/cloudsave/Entity$Key;",
            "Lcom/google/android/gms/cloudsave/CloudSaveManager$DeleteEntityResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$b;->Pm:Ljava/util/Map;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$b;->EI:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
