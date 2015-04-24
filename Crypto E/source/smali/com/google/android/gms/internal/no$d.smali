.class public final Lcom/google/android/gms/internal/no$d;
.super Lcom/google/android/gms/internal/rk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/no;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/rk",
        "<",
        "Lcom/google/android/gms/internal/no$d;",
        ">;"
    }
.end annotation


# instance fields
.field public UZ:Ljava/lang/String;

.field public amQ:Z

.field public amR:J

.field public amS:D

.field public amT:Lcom/google/android/gms/internal/no$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/rk;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/no$d;->pl()Lcom/google/android/gms/internal/no$d;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/rj;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/no$d;->amQ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/no$d;->amQ:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/rj;->b(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/no$d;->UZ:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/no$d;->UZ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/rj;->b(ILjava/lang/String;)V

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/no$d;->amR:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/no$d;->amR:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/rj;->b(IJ)V

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/no$d;->amS:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/no$d;->amS:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/rj;->a(ID)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/no$d;->amT:Lcom/google/android/gms/internal/no$c;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/no$d;->amT:Lcom/google/android/gms/internal/no$c;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/rj;->a(ILcom/google/android/gms/internal/rq;)V

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/rk;->a(Lcom/google/android/gms/internal/rj;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/ri;)Lcom/google/android/gms/internal/rq;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/no$d;->r(Lcom/google/android/gms/internal/ri;)Lcom/google/android/gms/internal/no$d;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/rk;->c()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/no$d;->amQ:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/no$d;->amQ:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rj;->c(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/no$d;->UZ:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/no$d;->UZ:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rj;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/no$d;->amR:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/no$d;->amR:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/rj;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/no$d;->amS:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/internal/no$d;->amS:D

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/rj;->b(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/no$d;->amT:Lcom/google/android/gms/internal/no$c;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/no$d;->amT:Lcom/google/android/gms/internal/no$c;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rj;->c(ILcom/google/android/gms/internal/rq;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/no$d;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/no$d;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/no$d;->amQ:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/no$d;->amQ:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/no$d;->UZ:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/no$d;->UZ:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/no$d;->amR:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/no$d;->amR:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/no$d;->amS:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/android/gms/internal/no$d;->amS:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/no$d;->amT:Lcom/google/android/gms/internal/no$c;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/no$d;->amT:Lcom/google/android/gms/internal/no$c;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/no$d;->a(Lcom/google/android/gms/internal/rk;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/no$d;->UZ:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/no$d;->UZ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/no$d;->amT:Lcom/google/android/gms/internal/no$c;

    iget-object v2, p1, Lcom/google/android/gms/internal/no$d;->amT:Lcom/google/android/gms/internal/no$c;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/no$c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/no$d;->amQ:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/no$d;->UZ:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/no$d;->amR:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/no$d;->amR:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/no$d;->amS:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/no$d;->amT:Lcom/google/android/gms/internal/no$c;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/no$d;->ua()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/no$d;->UZ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/no$d;->amT:Lcom/google/android/gms/internal/no$c;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/no$c;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public pl()Lcom/google/android/gms/internal/no$d;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/no$d;->amQ:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/no$d;->UZ:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/no$d;->amR:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/no$d;->amS:D

    iput-object v2, p0, Lcom/google/android/gms/internal/no$d;->amT:Lcom/google/android/gms/internal/no$c;

    iput-object v2, p0, Lcom/google/android/gms/internal/no$d;->aGo:Lcom/google/android/gms/internal/rm;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/no$d;->aGz:I

    return-object p0
.end method

.method public r(Lcom/google/android/gms/internal/ri;)Lcom/google/android/gms/internal/no$d;
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->tJ()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/no$d;->a(Lcom/google/android/gms/internal/ri;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->tN()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/no$d;->amQ:Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/no$d;->UZ:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->tL()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/no$d;->amR:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/no$d;->amS:D

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/no$d;->amT:Lcom/google/android/gms/internal/no$c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/no$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/no$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/no$d;->amT:Lcom/google/android/gms/internal/no$c;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/no$d;->amT:Lcom/google/android/gms/internal/no$c;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ri;->a(Lcom/google/android/gms/internal/rq;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x21 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method
