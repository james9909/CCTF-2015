.class Lcom/squareup/okhttp/internal/spdy/Huffman;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/Huffman$Node;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[B

.field private static final c:Lcom/squareup/okhttp/internal/spdy/Huffman;


# instance fields
.field private final d:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 35
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Huffman;->a:[I

    .line 63
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Huffman;->b:[B

    .line 77
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Huffman;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/Huffman;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/Huffman;->c:Lcom/squareup/okhttp/internal/spdy/Huffman;

    return-void

    .line 35
    :array_0
    .array-data 0x4
        0xf8t 0x1ft 0x0t 0x0t
        0xd8t 0xfft 0x7ft 0x0t
        0xe2t 0xfft 0xfft 0xft
        0xe3t 0xfft 0xfft 0xft
        0xe4t 0xfft 0xfft 0xft
        0xe5t 0xfft 0xfft 0xft
        0xe6t 0xfft 0xfft 0xft
        0xe7t 0xfft 0xfft 0xft
        0xe8t 0xfft 0xfft 0xft
        0xeat 0xfft 0xfft 0x0t
        0xfct 0xfft 0xfft 0x3ft
        0xe9t 0xfft 0xfft 0xft
        0xeat 0xfft 0xfft 0xft
        0xfdt 0xfft 0xfft 0x3ft
        0xebt 0xfft 0xfft 0xft
        0xect 0xfft 0xfft 0xft
        0xedt 0xfft 0xfft 0xft
        0xeet 0xfft 0xfft 0xft
        0xeft 0xfft 0xfft 0xft
        0xf0t 0xfft 0xfft 0xft
        0xf1t 0xfft 0xfft 0xft
        0xf2t 0xfft 0xfft 0xft
        0xfet 0xfft 0xfft 0x3ft
        0xf3t 0xfft 0xfft 0xft
        0xf4t 0xfft 0xfft 0xft
        0xf5t 0xfft 0xfft 0xft
        0xf6t 0xfft 0xfft 0xft
        0xf7t 0xfft 0xfft 0xft
        0xf8t 0xfft 0xfft 0xft
        0xf9t 0xfft 0xfft 0xft
        0xfat 0xfft 0xfft 0xft
        0xfbt 0xfft 0xfft 0xft
        0x14t 0x0t 0x0t 0x0t
        0xf8t 0x3t 0x0t 0x0t
        0xf9t 0x3t 0x0t 0x0t
        0xfat 0xft 0x0t 0x0t
        0xf9t 0x1ft 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0xf8t 0x0t 0x0t 0x0t
        0xfat 0x7t 0x0t 0x0t
        0xfat 0x3t 0x0t 0x0t
        0xfbt 0x3t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
        0xfbt 0x7t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
        0xfct 0x7ft 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0xfbt 0xft 0x0t 0x0t
        0xfct 0x3t 0x0t 0x0t
        0xfat 0x1ft 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0xfdt 0x0t 0x0t 0x0t
        0xfbt 0x1ft 0x0t 0x0t
        0xf0t 0xfft 0x7t 0x0t
        0xfct 0x1ft 0x0t 0x0t
        0xfct 0x3ft 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0xfdt 0x7ft 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0xfet 0x7ft 0x0t 0x0t
        0xfct 0x7t 0x0t 0x0t
        0xfdt 0x3ft 0x0t 0x0t
        0xfdt 0x1ft 0x0t 0x0t
        0xfct 0xfft 0xfft 0xft
        0xe6t 0xfft 0xft 0x0t
        0xd2t 0xfft 0x3ft 0x0t
        0xe7t 0xfft 0xft 0x0t
        0xe8t 0xfft 0xft 0x0t
        0xd3t 0xfft 0x3ft 0x0t
        0xd4t 0xfft 0x3ft 0x0t
        0xd5t 0xfft 0x3ft 0x0t
        0xd9t 0xfft 0x7ft 0x0t
        0xd6t 0xfft 0x3ft 0x0t
        0xdat 0xfft 0x7ft 0x0t
        0xdbt 0xfft 0x7ft 0x0t
        0xdct 0xfft 0x7ft 0x0t
        0xddt 0xfft 0x7ft 0x0t
        0xdet 0xfft 0x7ft 0x0t
        0xebt 0xfft 0xfft 0x0t
        0xdft 0xfft 0x7ft 0x0t
        0xect 0xfft 0xfft 0x0t
        0xedt 0xfft 0xfft 0x0t
        0xd7t 0xfft 0x3ft 0x0t
        0xe0t 0xfft 0x7ft 0x0t
        0xeet 0xfft 0xfft 0x0t
        0xe1t 0xfft 0x7ft 0x0t
        0xe2t 0xfft 0x7ft 0x0t
        0xe3t 0xfft 0x7ft 0x0t
        0xe4t 0xfft 0x7ft 0x0t
        0xdct 0xfft 0x1ft 0x0t
        0xd8t 0xfft 0x3ft 0x0t
        0xe5t 0xfft 0x7ft 0x0t
        0xd9t 0xfft 0x3ft 0x0t
        0xe6t 0xfft 0x7ft 0x0t
        0xe7t 0xfft 0x7ft 0x0t
        0xeft 0xfft 0xfft 0x0t
        0xdat 0xfft 0x3ft 0x0t
        0xddt 0xfft 0x1ft 0x0t
        0xe9t 0xfft 0xft 0x0t
        0xdbt 0xfft 0x3ft 0x0t
        0xdct 0xfft 0x3ft 0x0t
        0xe8t 0xfft 0x7ft 0x0t
        0xe9t 0xfft 0x7ft 0x0t
        0xdet 0xfft 0x1ft 0x0t
        0xeat 0xfft 0x7ft 0x0t
        0xddt 0xfft 0x3ft 0x0t
        0xdet 0xfft 0x3ft 0x0t
        0xf0t 0xfft 0xfft 0x0t
        0xdft 0xfft 0x1ft 0x0t
        0xdft 0xfft 0x3ft 0x0t
        0xebt 0xfft 0x7ft 0x0t
        0xect 0xfft 0x7ft 0x0t
        0xe0t 0xfft 0x1ft 0x0t
        0xe1t 0xfft 0x1ft 0x0t
        0xe0t 0xfft 0x3ft 0x0t
        0xe2t 0xfft 0x1ft 0x0t
        0xedt 0xfft 0x7ft 0x0t
        0xe1t 0xfft 0x3ft 0x0t
        0xeet 0xfft 0x7ft 0x0t
        0xeft 0xfft 0x7ft 0x0t
        0xeat 0xfft 0xft 0x0t
        0xe2t 0xfft 0x3ft 0x0t
        0xe3t 0xfft 0x3ft 0x0t
        0xe4t 0xfft 0x3ft 0x0t
        0xf0t 0xfft 0x7ft 0x0t
        0xe5t 0xfft 0x3ft 0x0t
        0xe6t 0xfft 0x3ft 0x0t
        0xf1t 0xfft 0x7ft 0x0t
        0xe0t 0xfft 0xfft 0x3t
        0xe1t 0xfft 0xfft 0x3t
        0xebt 0xfft 0xft 0x0t
        0xf1t 0xfft 0x7t 0x0t
        0xe7t 0xfft 0x3ft 0x0t
        0xf2t 0xfft 0x7ft 0x0t
        0xe8t 0xfft 0x3ft 0x0t
        0xect 0xfft 0xfft 0x1t
        0xe2t 0xfft 0xfft 0x3t
        0xe3t 0xfft 0xfft 0x3t
        0xe4t 0xfft 0xfft 0x3t
        0xdet 0xfft 0xfft 0x7t
        0xdft 0xfft 0xfft 0x7t
        0xe5t 0xfft 0xfft 0x3t
        0xf1t 0xfft 0xfft 0x0t
        0xedt 0xfft 0xfft 0x1t
        0xf2t 0xfft 0x7t 0x0t
        0xe3t 0xfft 0x1ft 0x0t
        0xe6t 0xfft 0xfft 0x3t
        0xe0t 0xfft 0xfft 0x7t
        0xe1t 0xfft 0xfft 0x7t
        0xe7t 0xfft 0xfft 0x3t
        0xe2t 0xfft 0xfft 0x7t
        0xf2t 0xfft 0xfft 0x0t
        0xe4t 0xfft 0x1ft 0x0t
        0xe5t 0xfft 0x1ft 0x0t
        0xe8t 0xfft 0xfft 0x3t
        0xe9t 0xfft 0xfft 0x3t
        0xfdt 0xfft 0xfft 0xft
        0xe3t 0xfft 0xfft 0x7t
        0xe4t 0xfft 0xfft 0x7t
        0xe5t 0xfft 0xfft 0x7t
        0xect 0xfft 0xft 0x0t
        0xf3t 0xfft 0xfft 0x0t
        0xedt 0xfft 0xft 0x0t
        0xe6t 0xfft 0x1ft 0x0t
        0xe9t 0xfft 0x3ft 0x0t
        0xe7t 0xfft 0x1ft 0x0t
        0xe8t 0xfft 0x1ft 0x0t
        0xf3t 0xfft 0x7ft 0x0t
        0xeat 0xfft 0x3ft 0x0t
        0xebt 0xfft 0x3ft 0x0t
        0xeet 0xfft 0xfft 0x1t
        0xeft 0xfft 0xfft 0x1t
        0xf4t 0xfft 0xfft 0x0t
        0xf5t 0xfft 0xfft 0x0t
        0xeat 0xfft 0xfft 0x3t
        0xf4t 0xfft 0x7ft 0x0t
        0xebt 0xfft 0xfft 0x3t
        0xe6t 0xfft 0xfft 0x7t
        0xect 0xfft 0xfft 0x3t
        0xedt 0xfft 0xfft 0x3t
        0xe7t 0xfft 0xfft 0x7t
        0xe8t 0xfft 0xfft 0x7t
        0xe9t 0xfft 0xfft 0x7t
        0xeat 0xfft 0xfft 0x7t
        0xebt 0xfft 0xfft 0x7t
        0xfet 0xfft 0xfft 0xft
        0xect 0xfft 0xfft 0x7t
        0xedt 0xfft 0xfft 0x7t
        0xeet 0xfft 0xfft 0x7t
        0xeft 0xfft 0xfft 0x7t
        0xf0t 0xfft 0xfft 0x7t
        0xeet 0xfft 0xfft 0x3t
    .end array-data

    .line 63
    :array_1
    .array-data 0x1
        0xdt
        0x17t
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x18t
        0x1et
        0x1ct
        0x1ct
        0x1et
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1et
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x6t
        0xat
        0xat
        0xct
        0xdt
        0x6t
        0x8t
        0xbt
        0xat
        0xat
        0x8t
        0xbt
        0x8t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x8t
        0xft
        0x6t
        0xct
        0xat
        0xdt
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x7t
        0x8t
        0xdt
        0x13t
        0xdt
        0xet
        0x6t
        0xft
        0x5t
        0x6t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x6t
        0x5t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x5t
        0x6t
        0x7t
        0x6t
        0x5t
        0x5t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0xft
        0xbt
        0xet
        0xdt
        0x1ct
        0x14t
        0x16t
        0x14t
        0x14t
        0x16t
        0x16t
        0x16t
        0x17t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x17t
        0x18t
        0x18t
        0x16t
        0x17t
        0x18t
        0x17t
        0x17t
        0x17t
        0x17t
        0x15t
        0x16t
        0x17t
        0x16t
        0x17t
        0x17t
        0x18t
        0x16t
        0x15t
        0x14t
        0x16t
        0x16t
        0x17t
        0x17t
        0x15t
        0x17t
        0x16t
        0x16t
        0x18t
        0x15t
        0x16t
        0x17t
        0x17t
        0x15t
        0x15t
        0x16t
        0x15t
        0x17t
        0x16t
        0x17t
        0x17t
        0x14t
        0x16t
        0x16t
        0x16t
        0x17t
        0x16t
        0x16t
        0x17t
        0x1at
        0x1at
        0x14t
        0x13t
        0x16t
        0x17t
        0x16t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1at
        0x18t
        0x19t
        0x13t
        0x15t
        0x1at
        0x1bt
        0x1bt
        0x1at
        0x1bt
        0x18t
        0x15t
        0x15t
        0x1at
        0x1at
        0x1ct
        0x1bt
        0x1bt
        0x1bt
        0x14t
        0x18t
        0x14t
        0x15t
        0x16t
        0x15t
        0x15t
        0x17t
        0x16t
        0x16t
        0x19t
        0x19t
        0x18t
        0x18t
        0x1at
        0x17t
        0x1at
        0x1bt
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Huffman;->d:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    .line 86
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Huffman;->b()V

    .line 87
    return-void
.end method

.method public static a()Lcom/squareup/okhttp/internal/spdy/Huffman;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/Huffman;->c:Lcom/squareup/okhttp/internal/spdy/Huffman;

    return-object v0
.end method

.method private a(IIB)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    new-instance v3, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    invoke-direct {v3, p1, p3}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;-><init>(II)V

    .line 173
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Huffman;->d:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-object v2, v0

    .line 174
    :goto_0
    const/16 v0, 0x8

    if-le p3, v0, :cond_2

    .line 175
    add-int/lit8 v0, p3, -0x8

    int-to-byte p3, v0

    .line 176
    ushr-int v0, p2, p3

    and-int/lit16 v0, v0, 0xff

    .line 177
    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->a(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v1

    if-nez v1, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid dictionary: prefix not unique"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->a(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 181
    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->a(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v1

    new-instance v4, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    invoke-direct {v4}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;-><init>()V

    aput-object v4, v1, v0

    .line 183
    :cond_1
    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->a(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v1

    aget-object v0, v1, v0

    move-object v2, v0

    .line 184
    goto :goto_0

    .line 186
    :cond_2
    rsub-int/lit8 v0, p3, 0x8

    .line 187
    shl-int v1, p2, v0

    and-int/lit16 v1, v1, 0xff

    .line 188
    const/4 v4, 0x1

    shl-int/2addr v4, v0

    move v0, v1

    .line 189
    :goto_1
    add-int v5, v1, v4

    if-ge v0, v5, :cond_3

    .line 190
    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->a(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v5

    aput-object v3, v5, v0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    :cond_3
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 165
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Huffman;->b:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 166
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Huffman;->a:[I

    aget v1, v1, v0

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/Huffman;->b:[B

    aget-byte v2, v2, v0

    invoke-direct {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Huffman;->a(IIB)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method a([B)[B
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 127
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Huffman;->d:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move v2, v0

    move-object v3, v1

    move v1, v0

    .line 131
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_3

    .line 132
    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    .line 133
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v5

    .line 134
    add-int/lit8 v1, v1, 0x8

    .line 135
    :goto_1
    const/16 v5, 0x8

    if-lt v1, v5, :cond_1

    .line 136
    add-int/lit8 v5, v1, -0x8

    ushr-int v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    .line 137
    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->a(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v3

    aget-object v3, v3, v5

    .line 138
    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->a(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v5

    if-nez v5, :cond_0

    .line 140
    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->b(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 141
    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->c(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)I

    move-result v3

    sub-int/2addr v1, v3

    .line 142
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Huffman;->d:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    goto :goto_1

    .line 145
    :cond_0
    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    .line 131
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_2
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->b(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 157
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->c(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 158
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Huffman;->d:Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    .line 150
    :cond_3
    if-lez v1, :cond_4

    .line 151
    rsub-int/lit8 v0, v1, 0x8

    shl-int v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    .line 152
    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->a(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v3

    aget-object v0, v3, v0

    .line 153
    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->a(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)[Lcom/squareup/okhttp/internal/spdy/Huffman$Node;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/Huffman$Node;->c(Lcom/squareup/okhttp/internal/spdy/Huffman$Node;)I

    move-result v3

    if-le v3, v1, :cond_2

    .line 161
    :cond_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method