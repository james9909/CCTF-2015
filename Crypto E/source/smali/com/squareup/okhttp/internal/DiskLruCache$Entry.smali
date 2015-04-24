.class final Lcom/squareup/okhttp/internal/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Entry"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/DiskLruCache;

.field private final b:Ljava/lang/String;

.field private final c:[J

.field private final d:[Ljava/io/File;

.field private final e:[Ljava/io/File;

.field private f:Z

.field private g:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

.field private h:J


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 982
    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 983
    iput-object p2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->b:Ljava/lang/String;

    .line 985
    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->e(Lcom/squareup/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->c:[J

    .line 986
    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->e(Lcom/squareup/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->d:[Ljava/io/File;

    .line 987
    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->e(Lcom/squareup/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->e:[Ljava/io/File;

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 991
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 992
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->e(Lcom/squareup/okhttp/internal/DiskLruCache;)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 993
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 994
    iget-object v3, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->d:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->f(Lcom/squareup/okhttp/internal/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 995
    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    iget-object v3, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->e:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->f(Lcom/squareup/okhttp/internal/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 997
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 992
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 999
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/squareup/okhttp/internal/DiskLruCache$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 965
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 965
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    .locals 1
    .parameter

    .prologue
    .line 965
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->g:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 965
    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->g:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 965
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)[J
    .locals 1
    .parameter

    .prologue
    .line 965
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->c:[J

    return-object v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 965
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->d:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 965
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->e:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 965
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Z
    .locals 1
    .parameter

    .prologue
    .line 965
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)J
    .locals 2
    .parameter

    .prologue
    .line 965
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->h:J

    return-wide v0
.end method


# virtual methods
.method a()Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 1033
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1035
    :cond_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->e(Lcom/squareup/okhttp/internal/DiskLruCache;)I

    move-result v1

    new-array v6, v1, [Lokio/Source;

    move v1, v0

    .line 1037
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/DiskLruCache;->e(Lcom/squareup/okhttp/internal/DiskLruCache;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1038
    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->d:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-static {v2}, Lokio/Okio;->a(Ljava/io/File;)Lokio/Source;

    move-result-object v2

    aput-object v2, v6, v1

    .line 1037
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1040
    :cond_1
    new-instance v1, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->b:Ljava/lang/String;

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->h:J

    iget-object v7, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->c:[J

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[JLcom/squareup/okhttp/internal/DiskLruCache$1;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    :goto_1
    return-object v1

    .line 1043
    :goto_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->e(Lcom/squareup/okhttp/internal/DiskLruCache;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1044
    aget-object v1, v6, v0

    if-eqz v1, :cond_2

    .line 1045
    aget-object v1, v6, v0

    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->a(Ljava/io/Closeable;)V

    .line 1043
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v1, v9

    .line 1050
    goto :goto_1

    .line 1041
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method a(Lokio/BufferedSink;)V
    .locals 6
    .parameter

    .prologue
    .line 1018
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->c:[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, v1, v0

    .line 1019
    const/16 v3, 0x20

    invoke-interface {p1, v3}, Lokio/BufferedSink;->i(I)Lokio/BufferedSink;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lokio/BufferedSink;->b(Ljava/lang/String;)Lokio/BufferedSink;

    .line 1018
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1021
    :cond_0
    return-void
.end method
