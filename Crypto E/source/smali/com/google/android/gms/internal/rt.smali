.class public final Lcom/google/android/gms/internal/rt;
.super Ljava/lang/Object;


# static fields
.field public static final aGB:[I

.field public static final aGC:[J

.field public static final aGD:[F

.field public static final aGE:[D

.field public static final aGF:[Z

.field public static final aGG:[Ljava/lang/String;

.field public static final aGH:[[B

.field public static final aGI:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/rt;->aGB:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/rt;->aGC:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/rt;->aGD:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/rt;->aGE:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/rt;->aGF:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/rt;->aGG:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/rt;->aGH:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/rt;->aGI:[B

    return-void
.end method

.method static E(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static final b(Lcom/google/android/gms/internal/ri;I)I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ri;->hV(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ri;->tJ()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ri;->hV(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ri;->hZ(I)V

    return v0
.end method

.method static ip(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static iq(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
