.class Lcom/squareup/okhttp/internal/DiskLruCache$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/squareup/okhttp/internal/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

.field c:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

.field final synthetic d:Lcom/squareup/okhttp/internal/DiskLruCache;


# virtual methods
.method public a()Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache$2;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$2;->b:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$2;->c:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    .line 727
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$2;->b:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    .line 728
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$2;->c:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 706
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$2;->b:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    if-eqz v0, :cond_0

    move v0, v1

    .line 721
    :goto_0
    return v0

    .line 708
    :cond_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/DiskLruCache$2;->d:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v3

    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$2;->d:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$2;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 713
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$2;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    .line 714
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a()Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v0

    .line 715
    if-eqz v0, :cond_1

    .line 716
    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$2;->b:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    .line 717
    monitor-exit v3

    move v0, v1

    goto :goto_0

    .line 719
    :cond_2
    monitor-exit v3

    move v0, v2

    .line 721
    goto :goto_0

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache$2;->a()Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 732
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$2;->c:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$2;->d:Lcom/squareup/okhttp/internal/DiskLruCache;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$2;->c:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->c(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    iput-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$2;->c:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    .line 741
    :goto_0
    return-void

    .line 735
    :catch_0
    move-exception v0

    .line 739
    iput-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$2;->c:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$2;->c:Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    throw v0
.end method
