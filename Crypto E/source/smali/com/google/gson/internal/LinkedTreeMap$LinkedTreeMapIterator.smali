.class abstract Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LinkedTreeMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/google/gson/internal/LinkedTreeMap;


# direct methods
.method private constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 1
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->e:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->e:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object v0, v0, Lcom/google/gson/internal/LinkedTreeMap;->e:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->d:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->b:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->c:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 529
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->e:Lcom/google/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/google/gson/internal/LinkedTreeMap;->d:I

    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;Lcom/google/gson/internal/LinkedTreeMap$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method final b()Lcom/google/gson/internal/LinkedTreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->b:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 537
    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->e:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lcom/google/gson/internal/LinkedTreeMap;->e:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-ne v0, v1, :cond_0

    .line 538
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->e:Lcom/google/gson/internal/LinkedTreeMap;

    iget v1, v1, Lcom/google/gson/internal/LinkedTreeMap;->d:I

    iget v2, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->d:I

    if-eq v1, v2, :cond_1

    .line 541
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 543
    :cond_1
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->d:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->b:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 544
    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->c:Lcom/google/gson/internal/LinkedTreeMap$Node;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->b:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->e:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lcom/google/gson/internal/LinkedTreeMap;->e:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->c:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->e:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->c:Lcom/google/gson/internal/LinkedTreeMap$Node;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/internal/LinkedTreeMap;->a(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->c:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 553
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->e:Lcom/google/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/google/gson/internal/LinkedTreeMap;->d:I

    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;->d:I

    .line 554
    return-void
.end method