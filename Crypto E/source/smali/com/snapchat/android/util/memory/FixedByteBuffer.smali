.class public Lcom/snapchat/android/util/memory/FixedByteBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/memory/Buffer;


# instance fields
.field private final a:[B

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/memory/FixedByteBuffer;->a:[B

    .line 37
    iget-object v0, p0, Lcom/snapchat/android/util/memory/FixedByteBuffer;->a:[B

    array-length v0, v0

    iput v0, p0, Lcom/snapchat/android/util/memory/FixedByteBuffer;->b:I

    .line 38
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/snapchat/android/util/memory/FixedByteBuffer;->b:I

    return v0
.end method

.method public a(Ljava/io/InputStream;)I
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FixedByteBuffer.read is not yet supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/snapchat/android/util/memory/FixedByteBuffer;->a:[B

    return-object v0
.end method
