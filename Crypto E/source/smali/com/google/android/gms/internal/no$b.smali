.class public final Lcom/google/android/gms/internal/no$b;
.super Lcom/google/android/gms/internal/rk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/no;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/rk",
        "<",
        "Lcom/google/android/gms/internal/no$b;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile amN:[Lcom/google/android/gms/internal/no$b;


# instance fields
.field public amO:Lcom/google/android/gms/internal/no$d;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/rk;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/no$b;->pj()Lcom/google/android/gms/internal/no$b;

    return-void
.end method

.method public static pi()[Lcom/google/android/gms/internal/no$b;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/no$b;->amN:[Lcom/google/android/gms/internal/no$b;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ro;->aGy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/no$b;->amN:[Lcom/google/android/gms/internal/no$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/no$b;

    sput-object v0, Lcom/google/android/gms/internal/no$b;->amN:[Lcom/google/android/gms/internal/no$b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/no$b;->amN:[Lcom/google/android/gms/internal/no$b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/rj;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/no$b;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/no$b;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/rj;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/no$b;->amO:Lcom/google/android/gms/internal/no$d;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/no$b;->amO:Lcom/google/android/gms/internal/no$d;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/rj;->a(ILcom/google/android/gms/internal/rq;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/rk;->a(Lcom/google/android/gms/internal/rj;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/ri;)Lcom/google/android/gms/internal/rq;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/no$b;->p(Lcom/google/android/gms/internal/ri;)Lcom/google/android/gms/internal/no$b;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/rk;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/no$b;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/no$b;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rj;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/no$b;->amO:Lcom/google/android/gms/internal/no$d;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/no$b;->amO:Lcom/google/android/gms/internal/no$d;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rj;->c(ILcom/google/android/gms/internal/rq;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
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
    instance-of v1, p1, Lcom/google/android/gms/internal/no$b;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/no$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/no$b;->name:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/no$b;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/no$b;->amO:Lcom/google/android/gms/internal/no$d;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/no$b;->amO:Lcom/google/android/gms/internal/no$d;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/no$b;->a(Lcom/google/android/gms/internal/rk;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/no$b;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/no$b;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/no$b;->amO:Lcom/google/android/gms/internal/no$d;

    iget-object v2, p1, Lcom/google/android/gms/internal/no$b;->amO:Lcom/google/android/gms/internal/no$d;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/no$d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/no$b;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/no$b;->amO:Lcom/google/android/gms/internal/no$d;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/no$b;->ua()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/no$b;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/no$b;->amO:Lcom/google/android/gms/internal/no$d;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/no$d;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public p(Lcom/google/android/gms/internal/ri;)Lcom/google/android/gms/internal/no$b;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->tJ()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/no$b;->a(Lcom/google/android/gms/internal/ri;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/no$b;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/no$b;->amO:Lcom/google/android/gms/internal/no$d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/no$d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no$d;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/no$b;->amO:Lcom/google/android/gms/internal/no$d;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/no$b;->amO:Lcom/google/android/gms/internal/no$d;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ri;->a(Lcom/google/android/gms/internal/rq;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public pj()Lcom/google/android/gms/internal/no$b;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/no$b;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/no$b;->amO:Lcom/google/android/gms/internal/no$d;

    iput-object v1, p0, Lcom/google/android/gms/internal/no$b;->aGo:Lcom/google/android/gms/internal/rm;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/no$b;->aGz:I

    return-object p0
.end method
