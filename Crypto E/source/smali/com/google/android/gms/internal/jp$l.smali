.class final Lcom/google/android/gms/internal/jp$l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cloudsave/CloudSaveManager$QueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation


# instance fields
.field private final EI:Lcom/google/android/gms/common/api/Status;

.field private final Pr:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/cloudsave/Entity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/kg;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/internal/kg;->statusCode:I

    invoke-static {v0}, Lcom/google/android/gms/internal/jp;->be(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jp$l;->EI:Lcom/google/android/gms/common/api/Status;

    new-instance v2, Lcom/google/android/gms/common/data/e;

    iget-object v0, p1, Lcom/google/android/gms/internal/kg;->Px:Lcom/google/android/gms/common/data/DataHolder;

    sget-object v1, Lcom/google/android/gms/cloudsave/Entity;->CREATOR:Lcom/google/android/gms/cloudsave/EntityCreator;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/common/data/e;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cloudsave/Entity;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataBuffer;->release()V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jp$l;->Pr:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public getEntities()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/cloudsave/Entity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$l;->Pr:Ljava/util/Collection;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$l;->EI:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
