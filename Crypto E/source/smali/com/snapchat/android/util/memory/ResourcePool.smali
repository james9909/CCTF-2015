.class public Lcom/snapchat/android/util/memory/ResourcePool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/snapchat/android/util/memory/ResourcePool;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 34
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/util/memory/ResourcePool;->b:I

    .line 35
    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p1, p2}, Lcom/snapchat/android/util/memory/ResourcePool;->a(Ljavax/inject/Provider;I)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/memory/ResourcePool;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    .line 29
    return-void
.end method

.method private static a(Ljavax/inject/Provider;I)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider",
            "<TT;>;I)",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 91
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 92
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/snapchat/android/util/memory/ResourcePool;->b:I

    return v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/snapchat/android/util/memory/ResourcePool;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/util/memory/ResourcePool;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/snapchat/android/util/memory/ResourcePool;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
