.class Landroid/support/v7/widget/PositionMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/PositionMap$ContainerHelpers;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/widget/PositionMap;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/support/v7/widget/PositionMap;-><init>(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v2, p0, Landroid/support/v7/widget/PositionMap;->b:Z

    .line 48
    if-nez p1, :cond_0

    .line 49
    sget-object v0, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->b:[I

    iput-object v0, p0, Landroid/support/v7/widget/PositionMap;->c:[I

    .line 50
    sget-object v0, Landroid/support/v7/widget/PositionMap$ContainerHelpers;->d:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/widget/PositionMap;->d:[Ljava/lang/Object;

    .line 56
    :goto_0
    iput v2, p0, Landroid/support/v7/widget/PositionMap;->e:I

    .line 57
    return-void

    .line 52
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/PositionMap;->d(I)I

    move-result v0

    .line 53
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/widget/PositionMap;->c:[I

    .line 54
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/widget/PositionMap;->d:[Ljava/lang/Object;

    goto :goto_0
.end method

.method static c(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 398
    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 399
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 400
    shl-int v0, v2, v0

    add-int/lit8 p0, v0, -0xc

    .line 402
    :cond_0
    return p0

    .line 398
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 151
    iget v3, p0, Landroid/support/v7/widget/PositionMap;->e:I

    .line 153
    iget-object v4, p0, Landroid/support/v7/widget/PositionMap;->c:[I

    .line 154
    iget-object v5, p0, Landroid/support/v7/widget/PositionMap;->d:[Ljava/lang/Object;

    move v1, v2

    move v0, v2

    .line 156
    :goto_0
    if-ge v1, v3, :cond_2

    .line 157
    aget-object v6, v5, v1

    .line 159
    sget-object v7, Landroid/support/v7/widget/PositionMap;->a:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    .line 160
    if-eq v1, v0, :cond_0

    .line 161
    aget v7, v4, v1

    aput v7, v4, v0

    .line 162
    aput-object v6, v5, v0

    .line 163
    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 156
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_2
    iput-boolean v2, p0, Landroid/support/v7/widget/PositionMap;->b:Z

    .line 171
    iput v0, p0, Landroid/support/v7/widget/PositionMap;->e:I

    .line 174
    return-void
.end method

.method static d(I)I
    .locals 1
    .parameter

    .prologue
    .line 418
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Landroid/support/v7/widget/PositionMap;->c(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public a(I)I
    .locals 1
    .parameter

    .prologue
    .line 246
    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->b:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->c()V

    .line 250
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public a()Landroid/support/v7/widget/PositionMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/PositionMap",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 64
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/PositionMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :try_start_1
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->c:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroid/support/v7/widget/PositionMap;->c:[I

    .line 66
    iget-object v1, p0, Landroid/support/v7/widget/PositionMap;->d:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroid/support/v7/widget/PositionMap;->d:[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->b:Z

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->c()V

    .line 237
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/PositionMap;->e:I

    return v0
.end method

.method public b(I)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 260
    iget-boolean v0, p0, Landroid/support/v7/widget/PositionMap;->b:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Landroid/support/v7/widget/PositionMap;->c()V

    .line 264
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/PositionMap;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/support/v7/widget/PositionMap;->a()Landroid/support/v7/widget/PositionMap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 373
    invoke-virtual {p0}, Landroid/support/v7/widget/PositionMap;->b()I

    move-result v0

    if-gtz v0, :cond_0

    .line 374
    const-string v0, "{}"

    .line 394
    :goto_0
    return-object v0

    .line 377
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/v7/widget/PositionMap;->e:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 378
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroid/support/v7/widget/PositionMap;->e:I

    if-ge v0, v2, :cond_3

    .line 380
    if-lez v0, :cond_1

    .line 381
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/PositionMap;->a(I)I

    move-result v2

    .line 384
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/PositionMap;->b(I)Ljava/lang/Object;

    move-result-object v2

    .line 387
    if-eq v2, p0, :cond_2

    .line 388
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 390
    :cond_2
    const-string v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 393
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
