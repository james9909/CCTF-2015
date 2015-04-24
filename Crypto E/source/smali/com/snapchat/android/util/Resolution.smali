.class public Lcom/snapchat/android/util/Resolution;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:I

.field protected final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/snapchat/android/util/Resolution;->a:I

    .line 12
    iput p2, p0, Lcom/snapchat/android/util/Resolution;->b:I

    .line 13
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/snapchat/android/util/Resolution;->a:I

    return v0
.end method

.method public a(D)Lcom/snapchat/android/util/Resolution;
    .locals 5
    .parameter

    .prologue
    .line 20
    new-instance v0, Lcom/snapchat/android/util/Resolution;

    iget v1, p0, Lcom/snapchat/android/util/Resolution;->a:I

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v1, v2

    iget v2, p0, Lcom/snapchat/android/util/Resolution;->b:I

    int-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    return-object v0
.end method

.method public a(Lcom/snapchat/android/util/Resolution;)Z
    .locals 2
    .parameter

    .prologue
    .line 58
    iget v0, p0, Lcom/snapchat/android/util/Resolution;->b:I

    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/snapchat/android/util/Resolution;->a:I

    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/snapchat/android/util/Resolution;->a:I

    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v1

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/snapchat/android/util/Resolution;->b:I

    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v1

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/snapchat/android/util/Resolution;->b:I

    return v0
.end method

.method public c()D
    .locals 4

    .prologue
    .line 42
    iget v0, p0, Lcom/snapchat/android/util/Resolution;->a:I

    int-to-double v0, v0

    iget v2, p0, Lcom/snapchat/android/util/Resolution;->b:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lcom/snapchat/android/util/Resolution;->a:I

    iget v1, p0, Lcom/snapchat/android/util/Resolution;->b:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    const/16 v1, 0x2d0

    .line 50
    iget v0, p0, Lcom/snapchat/android/util/Resolution;->b:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/snapchat/android/util/Resolution;->a:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 33
    instance-of v1, p1, Lcom/snapchat/android/util/Resolution;

    if-nez v1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    check-cast p1, Lcom/snapchat/android/util/Resolution;

    .line 38
    iget v1, p0, Lcom/snapchat/android/util/Resolution;->a:I

    iget v2, p1, Lcom/snapchat/android/util/Resolution;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/snapchat/android/util/Resolution;->b:I

    iget v2, p1, Lcom/snapchat/android/util/Resolution;->b:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/snapchat/android/util/Resolution;->a:I

    add-int/lit8 v0, v0, 0x29

    mul-int/lit8 v0, v0, 0x29

    iget v1, p0, Lcom/snapchat/android/util/Resolution;->a:I

    add-int/2addr v0, v1

    return v0
.end method
