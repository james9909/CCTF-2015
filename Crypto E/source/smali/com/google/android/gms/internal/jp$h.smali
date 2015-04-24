.class final Lcom/google/android/gms/internal/jp$h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cloudsave/CloudSaveManager$GetEntitiesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation


# instance fields
.field private final EI:Lcom/google/android/gms/common/api/Status;

.field private final Pp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/cloudsave/Entity$Key;",
            "Lcom/google/android/gms/cloudsave/Entity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ka;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/internal/ka;->statusCode:I

    invoke-static {v0}, Lcom/google/android/gms/internal/jp;->be(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jp$h;->EI:Lcom/google/android/gms/common/api/Status;

    new-instance v2, Lcom/google/android/gms/common/data/e;

    iget-object v0, p1, Lcom/google/android/gms/internal/ka;->Px:Lcom/google/android/gms/common/data/DataHolder;

    sget-object v1, Lcom/google/android/gms/cloudsave/Entity;->CREATOR:Lcom/google/android/gms/cloudsave/EntityCreator;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/common/data/e;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cloudsave/Entity;

    invoke-virtual {v0}, Lcom/google/android/gms/cloudsave/Entity;->getKey()Lcom/google/android/gms/cloudsave/Entity$Key;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataBuffer;->release()V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jp$h;->Pp:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getEntityMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/cloudsave/Entity$Key;",
            "Lcom/google/android/gms/cloudsave/Entity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$h;->Pp:Ljava/util/Map;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$h;->EI:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
