.class public final Lcom/google/android/gms/internal/ri;
.super Ljava/lang/Object;


# instance fields
.field private aGe:I

.field private aGf:I

.field private aGg:I

.field private aGh:I

.field private aGi:I

.field private aGj:I

.field private aGk:I

.field private aGl:I

.field private aGm:I

.field private final buffer:[B


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ri;->aGj:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/ri;->aGl:I

    const/high16 v0, 0x400

    iput v0, p0, Lcom/google/android/gms/internal/ri;->aGm:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ri;->buffer:[B

    iput p2, p0, Lcom/google/android/gms/internal/ri;->aGe:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/android/gms/internal/ri;->aGf:I

    iput p2, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    return-void
.end method

.method public static B(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static a([BII)Lcom/google/android/gms/internal/ri;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ri;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ri;-><init>([BII)V

    return-object v0
.end method

.method public static hW(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static p([B)Lcom/google/android/gms/internal/ri;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ri;->a([BII)Lcom/google/android/gms/internal/ri;

    move-result-object v0

    return-object v0
.end method

.method private tU()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGf:I

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGg:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ri;->aGf:I

    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGf:I

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGj:I

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGj:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ri;->aGg:I

    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGf:I

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGg:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ri;->aGf:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ri;->aGg:I

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/rq;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tQ()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGk:I

    iget v2, p0, Lcom/google/android/gms/internal/ri;->aGl:I

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/rp;->uh()Lcom/google/android/gms/internal/rp;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ri;->hX(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ri;->aGk:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/rq;->b(Lcom/google/android/gms/internal/ri;)Lcom/google/android/gms/internal/rq;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ri;->hU(I)V

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGk:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ri;->aGk:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ri;->hY(I)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/rq;I)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGk:I

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGl:I

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/rp;->uh()Lcom/google/android/gms/internal/rp;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ri;->aGk:I

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/rq;->b(Lcom/google/android/gms/internal/ri;)Lcom/google/android/gms/internal/rq;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/rt;->E(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ri;->hU(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGk:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ri;->aGk:I

    return-void
.end method

.method public getPosition()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGe:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public hU(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGi:I

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/rp;->uf()Lcom/google/android/gms/internal/rp;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public hV(I)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/rt;->ip(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/rp;->ug()Lcom/google/android/gms/internal/rp;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tM()I

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tT()J

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tQ()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ri;->ib(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tK()V

    invoke-static {p1}, Lcom/google/android/gms/internal/rt;->iq(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rt;->E(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ri;->hU(I)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tS()I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public hX(I)I
    .locals 2

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/rp;->uc()Lcom/google/android/gms/internal/rp;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGj:I

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/rp;->ub()Lcom/google/android/gms/internal/rp;

    move-result-object v0

    throw v0

    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/ri;->aGj:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ri;->tU()V

    return v1
.end method

.method public hY(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ri;->aGj:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ri;->tU()V

    return-void
.end method

.method public hZ(I)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGe:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is beyond current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    iget v3, p0, Lcom/google/android/gms/internal/ri;->aGe:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGe:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    return-void
.end method

.method public ia(I)[B
    .locals 4

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/rp;->uc()Lcom/google/android/gms/internal/rp;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGj:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGj:I

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ri;->ib(I)V

    invoke-static {}, Lcom/google/android/gms/internal/rp;->ub()Lcom/google/android/gms/internal/rp;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGf:I

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/ri;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    return-object v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/rp;->ub()Lcom/google/android/gms/internal/rp;

    move-result-object v0

    throw v0
.end method

.method public ib(I)V
    .locals 2

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/rp;->uc()Lcom/google/android/gms/internal/rp;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGj:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGj:I

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ri;->ib(I)V

    invoke-static {}, Lcom/google/android/gms/internal/rp;->ub()Lcom/google/android/gms/internal/rp;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGf:I

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/rp;->ub()Lcom/google/android/gms/internal/rp;

    move-result-object v0

    throw v0
.end method

.method public readBytes()[B
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tQ()I

    move-result v1

    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGf:I

    iget v2, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    new-array v0, v1, [B

    iget-object v2, p0, Lcom/google/android/gms/internal/ri;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ri;->ia(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public readDouble()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tT()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tS()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tQ()I

    move-result v1

    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGf:I

    iget v2, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ri;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ri;->ia(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public tJ()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tW()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/ri;->aGi:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tQ()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ri;->aGi:I

    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGi:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/rp;->ue()Lcom/google/android/gms/internal/rp;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGi:I

    goto :goto_0
.end method

.method public tK()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tJ()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ri;->hV(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public tL()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tR()J

    move-result-wide v0

    return-wide v0
.end method

.method public tM()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tQ()I

    move-result v0

    return v0
.end method

.method public tN()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tQ()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tO()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tQ()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ri;->hW(I)I

    move-result v0

    return v0
.end method

.method public tP()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tR()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ri;->B(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public tQ()I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v1

    if-ltz v1, :cond_4

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/rp;->ud()Lcom/google/android/gms/internal/rp;

    move-result-object v0

    throw v0
.end method

.method public tR()J
    .locals 6

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/rp;->ud()Lcom/google/android/gms/internal/rp;

    move-result-object v0

    throw v0
.end method

.method public tS()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public tT()J
    .locals 14

    const-wide/16 v12, 0xff

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tX()B

    move-result v7

    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public tV()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGj:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGj:I

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public tW()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGf:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tX()B
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGf:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/rp;->ub()Lcom/google/android/gms/internal/rp;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ri;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ri;->aGh:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public y(II)[B
    .locals 4

    if-nez p2, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/rt;->aGI:[B

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p2, [B

    iget v1, p0, Lcom/google/android/gms/internal/ri;->aGe:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ri;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
