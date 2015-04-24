.class public final Lcom/google/android/gms/internal/ru$c;
.super Lcom/google/android/gms/internal/rk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/rk",
        "<",
        "Lcom/google/android/gms/internal/ru$c;",
        ">;"
    }
.end annotation


# instance fields
.field public aGO:J

.field public aGP:I

.field public aGQ:I

.field public aGR:Z

.field public aGS:[Lcom/google/android/gms/internal/ru$d;

.field public aGT:Lcom/google/android/gms/internal/ru$b;

.field public aGU:[B

.field public aGV:[B

.field public aGW:[B

.field public aGX:Lcom/google/android/gms/internal/ru$a;

.field public aGY:Ljava/lang/String;

.field public aGZ:J

.field public tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/rk;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ru$c;->um()Lcom/google/android/gms/internal/ru$c;

    return-void
.end method


# virtual methods
.method public A(Lcom/google/android/gms/internal/ri;)Lcom/google/android/gms/internal/ru$c;
    .locals 4

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->tJ()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ru$c;->a(Lcom/google/android/gms/internal/ri;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->tL()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ru$c;->aGO:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ru$c;->tag:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/rt;->b(Lcom/google/android/gms/internal/ri;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGS:[Lcom/google/android/gms/internal/ru$d;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/ru$d;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ru$c;->aGS:[Lcom/google/android/gms/internal/ru$d;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/ru$d;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ru$d;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ri;->a(Lcom/google/android/gms/internal/rq;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->tJ()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGS:[Lcom/google/android/gms/internal/ru$d;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/ru$d;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ru$d;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ri;->a(Lcom/google/android/gms/internal/rq;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ru$c;->aGS:[Lcom/google/android/gms/internal/ru$d;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGU:[B

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGX:Lcom/google/android/gms/internal/ru$a;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/ru$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ru$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGX:Lcom/google/android/gms/internal/ru$a;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGX:Lcom/google/android/gms/internal/ru$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ri;->a(Lcom/google/android/gms/internal/rq;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGV:[B

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGT:Lcom/google/android/gms/internal/ru$b;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ru$b;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ru$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGT:Lcom/google/android/gms/internal/ru$b;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGT:Lcom/google/android/gms/internal/ru$b;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ri;->a(Lcom/google/android/gms/internal/rq;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->tN()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ru$c;->aGR:Z

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->tM()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ru$c;->aGP:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->tM()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ru$c;->aGQ:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGW:[B

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGY:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ri;->tP()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ru$c;->aGZ:J

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
        0x42 -> :sswitch_6
        0x4a -> :sswitch_7
        0x50 -> :sswitch_8
        0x58 -> :sswitch_9
        0x60 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x78 -> :sswitch_d
    .end sparse-switch
.end method

.method public a(Lcom/google/android/gms/internal/rj;)V
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ru$c;->aGO:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ru$c;->aGO:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/rj;->b(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->tag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/rj;->b(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGS:[Lcom/google/android/gms/internal/ru$d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGS:[Lcom/google/android/gms/internal/ru$d;

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGS:[Lcom/google/android/gms/internal/ru$d;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGS:[Lcom/google/android/gms/internal/ru$d;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/rj;->a(ILcom/google/android/gms/internal/rq;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGU:[B

    sget-object v1, Lcom/google/android/gms/internal/rt;->aGI:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGU:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/rj;->a(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGX:Lcom/google/android/gms/internal/ru$a;

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGX:Lcom/google/android/gms/internal/ru$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/rj;->a(ILcom/google/android/gms/internal/rq;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGV:[B

    sget-object v1, Lcom/google/android/gms/internal/rt;->aGI:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGV:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/rj;->a(I[B)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGT:Lcom/google/android/gms/internal/ru$b;

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGT:Lcom/google/android/gms/internal/ru$b;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/rj;->a(ILcom/google/android/gms/internal/rq;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ru$c;->aGR:Z

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ru$c;->aGR:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/rj;->b(IZ)V

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/ru$c;->aGP:I

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    iget v1, p0, Lcom/google/android/gms/internal/ru$c;->aGP:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/rj;->z(II)V

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/ru$c;->aGQ:I

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    iget v1, p0, Lcom/google/android/gms/internal/ru$c;->aGQ:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/rj;->z(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGW:[B

    sget-object v1, Lcom/google/android/gms/internal/rt;->aGI:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGW:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/rj;->a(I[B)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGY:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGY:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/rj;->b(ILjava/lang/String;)V

    :cond_c
    iget-wide v0, p0, Lcom/google/android/gms/internal/ru$c;->aGZ:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_d

    const/16 v0, 0xf

    iget-wide v2, p0, Lcom/google/android/gms/internal/ru$c;->aGZ:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/rj;->c(IJ)V

    :cond_d
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/rk;->a(Lcom/google/android/gms/internal/rj;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/ri;)Lcom/google/android/gms/internal/rq;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ru$c;->A(Lcom/google/android/gms/internal/ri;)Lcom/google/android/gms/internal/ru$c;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .locals 7

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/rk;->c()I

    move-result v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ru$c;->aGO:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ru$c;->aGO:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/rj;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->tag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ru$c;->tag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rj;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGS:[Lcom/google/android/gms/internal/ru$d;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGS:[Lcom/google/android/gms/internal/ru$d;

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ru$c;->aGS:[Lcom/google/android/gms/internal/ru$d;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ru$c;->aGS:[Lcom/google/android/gms/internal/ru$d;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/rj;->c(ILcom/google/android/gms/internal/rq;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGU:[B

    sget-object v2, Lcom/google/android/gms/internal/rt;->aGI:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/ru$c;->aGU:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rj;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGX:Lcom/google/android/gms/internal/ru$a;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/ru$c;->aGX:Lcom/google/android/gms/internal/ru$a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rj;->c(ILcom/google/android/gms/internal/rq;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGV:[B

    sget-object v2, Lcom/google/android/gms/internal/rt;->aGI:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/ru$c;->aGV:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rj;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGT:Lcom/google/android/gms/internal/ru$b;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/ru$c;->aGT:Lcom/google/android/gms/internal/ru$b;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rj;->c(ILcom/google/android/gms/internal/rq;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ru$c;->aGR:Z

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ru$c;->aGR:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rj;->c(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/google/android/gms/internal/ru$c;->aGP:I

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/android/gms/internal/ru$c;->aGP:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rj;->B(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/google/android/gms/internal/ru$c;->aGQ:I

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/ru$c;->aGQ:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rj;->B(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGW:[B

    sget-object v2, Lcom/google/android/gms/internal/rt;->aGI:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/ru$c;->aGW:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rj;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGY:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/ru$c;->aGY:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/rj;->k(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-wide v2, p0, Lcom/google/android/gms/internal/ru$c;->aGZ:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_e

    const/16 v1, 0xf

    iget-wide v2, p0, Lcom/google/android/gms/internal/ru$c;->aGZ:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/rj;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
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
    instance-of v1, p1, Lcom/google/android/gms/internal/ru$c;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ru$c;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ru$c;->aGO:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ru$c;->aGO:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->tag:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/ru$c;->tag:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ru$c;->aGP:I

    iget v2, p1, Lcom/google/android/gms/internal/ru$c;->aGP:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ru$c;->aGQ:I

    iget v2, p1, Lcom/google/android/gms/internal/ru$c;->aGQ:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ru$c;->aGR:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ru$c;->aGR:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGS:[Lcom/google/android/gms/internal/ru$d;

    iget-object v2, p1, Lcom/google/android/gms/internal/ru$c;->aGS:[Lcom/google/android/gms/internal/ru$d;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ro;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGT:Lcom/google/android/gms/internal/ru$b;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/ru$c;->aGT:Lcom/google/android/gms/internal/ru$b;

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGU:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/ru$c;->aGU:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGV:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/ru$c;->aGV:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGW:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/ru$c;->aGW:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGX:Lcom/google/android/gms/internal/ru$a;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/ru$c;->aGX:Lcom/google/android/gms/internal/ru$a;

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGY:Ljava/lang/String;

    if-nez v1, :cond_9

    iget-object v1, p1, Lcom/google/android/gms/internal/ru$c;->aGY:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_5
    iget-wide v2, p0, Lcom/google/android/gms/internal/ru$c;->aGZ:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ru$c;->aGZ:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ru$c;->a(Lcom/google/android/gms/internal/rk;)Z

    move-result v0

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->tag:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ru$c;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGT:Lcom/google/android/gms/internal/ru$b;

    iget-object v2, p1, Lcom/google/android/gms/internal/ru$c;->aGT:Lcom/google/android/gms/internal/ru$b;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ru$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGX:Lcom/google/android/gms/internal/ru$a;

    iget-object v2, p1, Lcom/google/android/gms/internal/ru$c;->aGX:Lcom/google/android/gms/internal/ru$a;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ru$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGY:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ru$c;->aGY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ru$c;->aGO:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ru$c;->aGO:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/ru$c;->aGP:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/ru$c;->aGQ:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ru$c;->aGR:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ru$c;->aGS:[Lcom/google/android/gms/internal/ru$d;

    invoke-static {v2}, Lcom/google/android/gms/internal/ro;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGT:Lcom/google/android/gms/internal/ru$b;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ru$c;->aGU:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ru$c;->aGV:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ru$c;->aGW:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGX:Lcom/google/android/gms/internal/ru$a;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ru$c;->aGY:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/internal/ru$c;->aGZ:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ru$c;->aGZ:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ru$c;->ua()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGT:Lcom/google/android/gms/internal/ru$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ru$b;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGX:Lcom/google/android/gms/internal/ru$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ru$a;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ru$c;->aGY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public um()Lcom/google/android/gms/internal/ru$c;
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ru$c;->aGO:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ru$c;->tag:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/ru$c;->aGP:I

    iput v1, p0, Lcom/google/android/gms/internal/ru$c;->aGQ:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ru$c;->aGR:Z

    invoke-static {}, Lcom/google/android/gms/internal/ru$d;->un()[Lcom/google/android/gms/internal/ru$d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGS:[Lcom/google/android/gms/internal/ru$d;

    iput-object v2, p0, Lcom/google/android/gms/internal/ru$c;->aGT:Lcom/google/android/gms/internal/ru$b;

    sget-object v0, Lcom/google/android/gms/internal/rt;->aGI:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGU:[B

    sget-object v0, Lcom/google/android/gms/internal/rt;->aGI:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGV:[B

    sget-object v0, Lcom/google/android/gms/internal/rt;->aGI:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGW:[B

    iput-object v2, p0, Lcom/google/android/gms/internal/ru$c;->aGX:Lcom/google/android/gms/internal/ru$a;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ru$c;->aGY:Ljava/lang/String;

    iput-wide v4, p0, Lcom/google/android/gms/internal/ru$c;->aGZ:J

    iput-object v2, p0, Lcom/google/android/gms/internal/ru$c;->aGo:Lcom/google/android/gms/internal/rm;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ru$c;->aGz:I

    return-object p0
.end method
