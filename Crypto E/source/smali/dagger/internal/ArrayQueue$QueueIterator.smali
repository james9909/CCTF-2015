.class Ldagger/internal/ArrayQueue$QueueIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/ArrayQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldagger/internal/ArrayQueue;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Ldagger/internal/ArrayQueue;)V
    .locals 1
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Ldagger/internal/ArrayQueue$QueueIterator;->a:Ldagger/internal/ArrayQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iget-object v0, p0, Ldagger/internal/ArrayQueue$QueueIterator;->a:Ldagger/internal/ArrayQueue;

    invoke-static {v0}, Ldagger/internal/ArrayQueue;->a(Ldagger/internal/ArrayQueue;)I

    move-result v0

    iput v0, p0, Ldagger/internal/ArrayQueue$QueueIterator;->b:I

    .line 363
    iget-object v0, p0, Ldagger/internal/ArrayQueue$QueueIterator;->a:Ldagger/internal/ArrayQueue;

    invoke-static {v0}, Ldagger/internal/ArrayQueue;->b(Ldagger/internal/ArrayQueue;)I

    move-result v0

    iput v0, p0, Ldagger/internal/ArrayQueue$QueueIterator;->c:I

    .line 369
    const/4 v0, -0x1

    iput v0, p0, Ldagger/internal/ArrayQueue$QueueIterator;->d:I

    return-void
.end method

.method synthetic constructor <init>(Ldagger/internal/ArrayQueue;Ldagger/internal/ArrayQueue$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-direct {p0, p1}, Ldagger/internal/ArrayQueue$QueueIterator;-><init>(Ldagger/internal/ArrayQueue;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 373
    iget v0, p0, Ldagger/internal/ArrayQueue$QueueIterator;->b:I

    iget v1, p0, Ldagger/internal/ArrayQueue$QueueIterator;->c:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 378
    iget v0, p0, Ldagger/internal/ArrayQueue$QueueIterator;->b:I

    iget v1, p0, Ldagger/internal/ArrayQueue$QueueIterator;->c:I

    if-ne v0, v1, :cond_0

    .line 379
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 380
    :cond_0
    iget-object v0, p0, Ldagger/internal/ArrayQueue$QueueIterator;->a:Ldagger/internal/ArrayQueue;

    invoke-static {v0}, Ldagger/internal/ArrayQueue;->c(Ldagger/internal/ArrayQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ldagger/internal/ArrayQueue$QueueIterator;->b:I

    aget-object v0, v0, v1

    .line 383
    iget-object v1, p0, Ldagger/internal/ArrayQueue$QueueIterator;->a:Ldagger/internal/ArrayQueue;

    invoke-static {v1}, Ldagger/internal/ArrayQueue;->b(Ldagger/internal/ArrayQueue;)I

    move-result v1

    iget v2, p0, Ldagger/internal/ArrayQueue$QueueIterator;->c:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    .line 384
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 385
    :cond_2
    iget v1, p0, Ldagger/internal/ArrayQueue$QueueIterator;->b:I

    iput v1, p0, Ldagger/internal/ArrayQueue$QueueIterator;->d:I

    .line 386
    iget v1, p0, Ldagger/internal/ArrayQueue$QueueIterator;->b:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Ldagger/internal/ArrayQueue$QueueIterator;->a:Ldagger/internal/ArrayQueue;

    invoke-static {v2}, Ldagger/internal/ArrayQueue;->c(Ldagger/internal/ArrayQueue;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Ldagger/internal/ArrayQueue$QueueIterator;->b:I

    .line 387
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Ldagger/internal/ArrayQueue$QueueIterator;->d:I

    if-gez v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 394
    :cond_0
    iget-object v0, p0, Ldagger/internal/ArrayQueue$QueueIterator;->a:Ldagger/internal/ArrayQueue;

    iget v1, p0, Ldagger/internal/ArrayQueue$QueueIterator;->d:I

    invoke-static {v0, v1}, Ldagger/internal/ArrayQueue;->a(Ldagger/internal/ArrayQueue;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    iget v0, p0, Ldagger/internal/ArrayQueue$QueueIterator;->b:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Ldagger/internal/ArrayQueue$QueueIterator;->a:Ldagger/internal/ArrayQueue;

    invoke-static {v1}, Ldagger/internal/ArrayQueue;->c(Ldagger/internal/ArrayQueue;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ldagger/internal/ArrayQueue$QueueIterator;->b:I

    .line 396
    iget-object v0, p0, Ldagger/internal/ArrayQueue$QueueIterator;->a:Ldagger/internal/ArrayQueue;

    invoke-static {v0}, Ldagger/internal/ArrayQueue;->b(Ldagger/internal/ArrayQueue;)I

    move-result v0

    iput v0, p0, Ldagger/internal/ArrayQueue$QueueIterator;->c:I

    .line 398
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Ldagger/internal/ArrayQueue$QueueIterator;->d:I

    .line 399
    return-void
.end method
