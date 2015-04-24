.class public Lcom/google/android/gms/internal/jq;
.super Ljava/lang/Object;


# direct methods
.method public static final a(ILcom/google/android/gms/cloudsave/Entity;)Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/jq;->a(ILjava/util/Collection;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    return-object v0
.end method

.method public static final a(ILjava/util/Collection;)Lcom/google/android/gms/common/data/DataHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/cloudsave/Entity;",
            ">;)",
            "Lcom/google/android/gms/common/data/DataHolder;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/data/e;->jm()Lcom/google/android/gms/common/data/DataHolder$a;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cloudsave/Entity;

    invoke-static {v1, v0}, Lcom/google/android/gms/common/data/e;->a(Lcom/google/android/gms/common/data/DataHolder$a;Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/data/DataHolder$a;->bD(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    return-object v0
.end method

.method public static final d(Lcom/google/android/gms/cloudsave/Entity;)Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/jq;->a(ILcom/google/android/gms/cloudsave/Entity;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    return-object v0
.end method

.method public static final e(Ljava/util/Collection;)Lcom/google/android/gms/common/data/DataHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/cloudsave/Entity;",
            ">;)",
            "Lcom/google/android/gms/common/data/DataHolder;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/jq;->a(ILjava/util/Collection;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    return-object v0
.end method
