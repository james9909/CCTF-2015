.class public final Lcom/google/android/gms/internal/rf;
.super Lcom/google/android/gms/internal/rk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/rf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/rk",
        "<",
        "Lcom/google/android/gms/internal/rf;",
        ">;"
    }
.end annotation


# instance fields
.field public aFz:[Lcom/google/android/gms/internal/rf$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/rk;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rf;->tA()Lcom/google/android/gms/internal/rf;

    return-void
.end method

.method public static n([B)Lcom/google/android/gms/internal/rf;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/rf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/rf;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/rq;->a(Lcom/google/android/gms/internal/rq;[B)Lcom/google/android/gms/internal/rq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/rf;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/rj;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/rf;->aFz:[Lcom/google/android/gms/internal/rf$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/rf;->aFz:[Lcom/google/android/gms/internal/rf$a;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/rf;->aFz:[Lcom/google/android/gms/internal/rf$a;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/rf;->aFz:[Lcom/google/android/gms/internal/rf$a;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/rj;->a(ILcom/google/android/gms/internal/rq;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/rk;->a(Lcom/google/android/gms/internal/rj;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/ri;)Lcom/google/android/gms/internal/rq;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rf;->t(Lcom/google/android/gms/internal/ri;)Lcom/google/android/gms/internal/rf;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/rk;->c()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/internal/rf;->aFz:[Lcom/google/android/gms/internal/rf$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/rf;->aFz:[Lcom/google/android/gms/internal/rf$a;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/rf;->aFz:[Lcom/google/android/gms/internal/rf$a;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/rf;->aFz:[Lcom/google/android/gms/internal/rf$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/rj;->c(ILcom/google/android/gms/internal/rq;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/rf;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/rf;

    iget-object v1, p0, Lcom/google/android/gms/internal/rf;->aFz:[Lcom/google/android/gms/internal/rf$a;

    iget-object v2, p1, Lcom/google/android/gms/internal/rf;->aFz:[Lcom/google/android/gms/internal/rf$a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ro;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rf;->a(Lcom/google/android/gms/internal/rk;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/rf;->aFz:[Lcom/google/android/gms/internal/rf$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/ro;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/rf;->ua()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public t(Lcom/google/android/gms/internal/ri;)Lcom/google/android/gms/internal/rf;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->tJ()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/rf;->a(Lcom/google/android/gms/internal/ri;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/rt;->b(Lcom/google/android/gms/internal/ri;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/rf;->aFz:[Lcom/google/android/gms/internal/rf$a;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/rf$a;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/rf;->aFz:[Lcom/google/android/gms/internal/rf$a;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/rf$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/rf$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ri;->a(Lcom/google/android/gms/internal/rq;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->tJ()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/rf;->aFz:[Lcom/google/android/gms/internal/rf$a;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/rf$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/rf$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ri;->a(Lcom/google/android/gms/internal/rq;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/rf;->aFz:[Lcom/google/android/gms/internal/rf$a;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public tA()Lcom/google/android/gms/internal/rf;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/rf$a;->tB()[Lcom/google/android/gms/internal/rf$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/rf;->aFz:[Lcom/google/android/gms/internal/rf$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/rf;->aGo:Lcom/google/android/gms/internal/rm;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/rf;->aGz:I

    return-object p0
.end method
