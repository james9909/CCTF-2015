.class final Lcom/google/android/gms/internal/jp$n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cloudsave/CloudSaveManager$SaveEntitiesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jp$n$a;
    }
.end annotation


# instance fields
.field private final EI:Lcom/google/android/gms/common/api/Status;

.field private final Ps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/cloudsave/Entity$Key;",
            "Lcom/google/android/gms/cloudsave/CloudSaveManager$SaveEntityResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ko;Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ko;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/cloudsave/Entity;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/internal/ko;->statusCode:I

    invoke-static {v0}, Lcom/google/android/gms/internal/jp;->be(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jp$n;->EI:Lcom/google/android/gms/common/api/Status;

    new-instance v2, Lcom/google/android/gms/common/data/e;

    iget-object v0, p1, Lcom/google/android/gms/internal/ko;->PV:Lcom/google/android/gms/common/data/DataHolder;

    sget-object v1, Lcom/google/android/gms/internal/kk;->CREATOR:Landroid/os/Parcelable$Creator;

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

    check-cast v0, Lcom/google/android/gms/internal/kk;

    iget-object v4, v0, Lcom/google/android/gms/internal/kk;->PP:Lcom/google/android/gms/cloudsave/Entity$Key;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataBuffer;->release()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jp$n;->Ps:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cloudsave/Entity;

    invoke-virtual {v0}, Lcom/google/android/gms/cloudsave/Entity;->getKey()Lcom/google/android/gms/cloudsave/Entity$Key;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/kk;

    if-eqz v1, :cond_1

    iget v4, v1, Lcom/google/android/gms/internal/kk;->statusCode:I

    invoke-static {v4}, Lcom/google/android/gms/internal/jp;->be(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/jp$n$a;

    iget-object v6, v1, Lcom/google/android/gms/internal/kk;->PT:Lcom/google/android/gms/cloudsave/Entity;

    invoke-direct {v5, v4, v6}, Lcom/google/android/gms/internal/jp$n$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cloudsave/Entity;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/jp$n;->Ps:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/cloudsave/Entity;->getKey()Lcom/google/android/gms/cloudsave/Entity$Key;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/jp$n$a;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/jp;->c(Lcom/google/android/gms/cloudsave/Entity;)V

    iget-boolean v1, v1, Lcom/google/android/gms/internal/kk;->PU:Z

    if-eqz v1, :cond_1

    invoke-virtual {v5}, Lcom/google/android/gms/internal/jp$n$a;->iv()Lcom/google/android/gms/cloudsave/Entity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/cloudsave/Entity;->ie()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/cloudsave/Entity;->p(J)V

    invoke-virtual {v1}, Lcom/google/android/gms/cloudsave/Entity;->if()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/cloudsave/Entity;->q(J)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/cloudsave/Entity;->p(J)V

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/cloudsave/Entity;->q(J)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public getSaveEntitiesResult()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/cloudsave/Entity$Key;",
            "Lcom/google/android/gms/cloudsave/CloudSaveManager$SaveEntityResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$n;->Ps:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jp$n;->EI:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
