.class public Lcom/snapchat/android/util/ZipArchive;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/io/ByteArrayOutputStream;

.field private b:Ljava/util/zip/ZipOutputStream;

.field private c:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/ZipArchive;->a:Ljava/io/ByteArrayOutputStream;

    .line 25
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/snapchat/android/util/ZipArchive;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/snapchat/android/util/ZipArchive;->b:Ljava/util/zip/ZipOutputStream;

    .line 26
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/snapchat/android/util/ZipArchive;->c:[B

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/util/ZipArchive;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 51
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x800

    const/4 v4, 0x0

    .line 30
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 32
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object v2, p0, Lcom/snapchat/android/util/ZipArchive;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/util/ZipArchive;->c:[B

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/snapchat/android/util/ZipArchive;->b:Ljava/util/zip/ZipOutputStream;

    iget-object v3, p0, Lcom/snapchat/android/util/ZipArchive;->c:[B

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 39
    iget-object v0, p0, Lcom/snapchat/android/util/ZipArchive;->b:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 40
    return-void
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/snapchat/android/util/ZipArchive;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
