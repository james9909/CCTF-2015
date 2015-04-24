.class public Lcom/snapchat/android/util/memory/DynamicByteBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/memory/Buffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/memory/DynamicByteBuffer$LinearExpansionStrategy;,
        Lcom/snapchat/android/util/memory/DynamicByteBuffer$ExpansionStrategy;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/util/memory/DynamicByteBuffer$ExpansionStrategy;

.field private b:[B

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 61
    new-instance v0, Lcom/snapchat/android/util/memory/DynamicByteBuffer$LinearExpansionStrategy;

    invoke-direct {v0, p1}, Lcom/snapchat/android/util/memory/DynamicByteBuffer$LinearExpansionStrategy;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/util/memory/DynamicByteBuffer;-><init>(ILcom/snapchat/android/util/memory/DynamicByteBuffer$ExpansionStrategy;)V

    .line 62
    return-void
.end method

.method public constructor <init>(ILcom/snapchat/android/util/memory/DynamicByteBuffer$ExpansionStrategy;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->c:I

    .line 71
    iput-object p2, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->a:Lcom/snapchat/android/util/memory/DynamicByteBuffer$ExpansionStrategy;

    .line 72
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->b:[B

    .line 73
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->c:I

    return v0
.end method

.method public a(Ljava/io/InputStream;)I
    .locals 10
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 92
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->b:[B

    array-length v0, v0

    move v1, v2

    .line 96
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->b:[B

    invoke-virtual {p1, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 99
    sub-int/2addr v0, v3

    .line 100
    add-int/2addr v1, v3

    .line 102
    if-gez v0, :cond_1

    .line 103
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "AvailableSize (%d) should not be less than 0!"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_1
    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->a:Lcom/snapchat/android/util/memory/DynamicByteBuffer$ExpansionStrategy;

    iget-object v3, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->b:[B

    array-length v3, v3

    invoke-interface {v0, v3}, Lcom/snapchat/android/util/memory/DynamicByteBuffer$ExpansionStrategy;->a(I)I

    move-result v3

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->b:[B

    array-length v0, v0

    sub-int v0, v3, v0

    .line 113
    const-string v4, "DynamicByteBuffer"

    const-string v5, "Increasing dynamic byte buffer (%s) size from %d to %d bytes"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v7, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->b:[B

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :try_start_0
    new-array v3, v3, [B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_1
    iget-object v4, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->b:[B

    iget-object v5, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->b:[B

    array-length v5, v5

    invoke-static {v4, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iput-object v3, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->b:[B

    goto :goto_0

    .line 119
    :catch_0
    move-exception v4

    .line 120
    const-string v4, "DynamicByteBuffer"

    const-string v5, "Out of memory exception caught while trying to allocated %d bytes. Running GC then trying again."

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 123
    new-array v3, v3, [B

    goto :goto_1

    .line 131
    :cond_2
    iput v1, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->c:I

    .line 132
    iget v0, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->c:I

    return v0
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/snapchat/android/util/memory/DynamicByteBuffer;->b:[B

    return-object v0
.end method
