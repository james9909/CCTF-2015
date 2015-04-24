.class public final Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/DiskLruCache;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Lokio/Source;

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[J)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-object p2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->b:Ljava/lang/String;

    .line 754
    iput-wide p3, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->c:J

    .line 755
    iput-object p5, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->d:[Lokio/Source;

    .line 756
    iput-object p6, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->e:[J

    .line 757
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[JLcom/squareup/okhttp/internal/DiskLruCache$1;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 746
    invoke-direct/range {p0 .. p6}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[J)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 746
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    .locals 4

    .prologue
    .line 769
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/DiskLruCache;->a(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lokio/Source;
    .locals 1
    .parameter

    .prologue
    .line 774
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->d:[Lokio/Source;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 788
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->d:[Lokio/Source;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 789
    invoke-static {v3}, Lcom/squareup/okhttp/internal/Util;->a(Ljava/io/Closeable;)V

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    :cond_0
    return-void
.end method
