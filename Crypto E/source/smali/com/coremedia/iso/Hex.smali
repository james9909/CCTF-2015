.class public Lcom/coremedia/iso/Hex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coremedia/iso/Hex;->a:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coremedia/iso/Hex;->a([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    array-length v3, p0

    .line 37
    shl-int/lit8 v2, v3, 0x1

    if-lez p1, :cond_0

    div-int v0, v3, p1

    :goto_0
    add-int/2addr v0, v2

    new-array v4, v0, [C

    move v2, v1

    .line 39
    :goto_1
    if-lt v2, v3, :cond_1

    .line 47
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    move v0, v1

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    if-lez p1, :cond_2

    rem-int v0, v2, p1

    if-nez v0, :cond_2

    if-lez v1, :cond_2

    .line 41
    add-int/lit8 v0, v1, 0x1

    const/16 v5, 0x2d

    aput-char v5, v4, v1

    .line 44
    :goto_2
    add-int/lit8 v5, v0, 0x1

    sget-object v1, Lcom/coremedia/iso/Hex;->a:[C

    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v1, v1, v6

    aput-char v1, v4, v0

    .line 45
    add-int/lit8 v1, v5, 0x1

    sget-object v0, Lcom/coremedia/iso/Hex;->a:[C

    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v0, v0, v6

    aput-char v0, v4, v5

    .line 39
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
