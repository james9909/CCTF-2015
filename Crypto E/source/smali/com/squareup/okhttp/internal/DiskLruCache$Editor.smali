.class public final Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/DiskLruCache;

.field private final b:Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 817
    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput-object p2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->b:Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    .line 819
    invoke-static {p2}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->f(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->c:[Z

    .line 820
    return-void

    .line 819
    :cond_0
    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->e(Lcom/squareup/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$Entry;Lcom/squareup/okhttp/internal/DiskLruCache$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 811
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)Lcom/squareup/okhttp/internal/DiskLruCache$Entry;
    .locals 1
    .parameter

    .prologue
    .line 811
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->b:Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 811
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)[Z
    .locals 1
    .parameter

    .prologue
    .line 811
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Lokio/Sink;
    .locals 3
    .parameter

    .prologue
    .line 859
    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v2

    .line 860
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->b:Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->a(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 861
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 881
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 863
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->b:Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->f(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 864
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 866
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->b:Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->d(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v0

    aget-object v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 869
    :try_start_2
    invoke-static {v0}, Lokio/Okio;->b(Ljava/io/File;)Lokio/Sink;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 880
    :goto_0
    :try_start_3
    new-instance v0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;

    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingSink;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Lokio/Sink;)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 870
    :catch_0
    move-exception v1

    .line 872
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->f(Lcom/squareup/okhttp/internal/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 874
    :try_start_4
    invoke-static {v0}, Lokio/Okio;->b(Ljava/io/File;)Lokio/Sink;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 878
    goto :goto_0

    .line 875
    :catch_1
    move-exception v0

    .line 877
    :try_start_5
    invoke-static {}, Lcom/squareup/okhttp/internal/DiskLruCache;->b()Lokio/Sink;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public a()V
    .locals 3

    .prologue
    .line 896
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v1

    .line 897
    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->d:Z

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/squareup/okhttp/internal/DiskLruCache;->a(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)V

    .line 899
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->b:Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/DiskLruCache;->a(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Z

    .line 903
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->e:Z

    .line 904
    monitor-exit v1

    .line 905
    return-void

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lcom/squareup/okhttp/internal/DiskLruCache;->a(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)V

    goto :goto_0

    .line 904
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 912
    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v1

    .line 913
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->a:Lcom/squareup/okhttp/internal/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/squareup/okhttp/internal/DiskLruCache;->a(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)V

    .line 914
    monitor-exit v1

    .line 915
    return-void

    .line 914
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
