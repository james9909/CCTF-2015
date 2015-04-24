.class public Lcom/googlecode/mp4parser/util/IntHashMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
    }
.end annotation


# instance fields
.field private transient a:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

.field private transient b:I

.field private c:I

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    const/16 v0, 0x14

    const/high16 v1, 0x3f40

    invoke-direct {p0, v0, v1}, Lcom/googlecode/mp4parser/util/IntHashMap;-><init>(IF)V

    .line 95
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    if-gez p1, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal Capacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal Load: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    if-nez p1, :cond_2

    .line 127
    const/4 p1, 0x1

    .line 130
    :cond_2
    iput p2, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->d:F

    .line 131
    new-array v0, p1, [Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    iput-object v0, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->a:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 132
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->c:I

    .line 133
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->a:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 235
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    array-length v2, v0

    rem-int/2addr v1, v2

    .line 236
    aget-object v0, v0, v1

    :goto_0
    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 237
    :cond_0
    iget v1, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->a:I

    if-ne v1, p1, :cond_1

    .line 238
    iget-object v0, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->c:Ljava/lang/Object;

    goto :goto_1

    .line 236
    :cond_1
    iget-object v0, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->d:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    goto :goto_0
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x7fffffff

    .line 290
    iget-object v1, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->a:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 292
    and-int v0, p1, v4

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 293
    aget-object v2, v1, v0

    :goto_0
    if-nez v2, :cond_1

    .line 301
    iget v2, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->b:I

    iget v3, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->c:I

    if-lt v2, v3, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/util/IntHashMap;->a()V

    .line 305
    iget-object v1, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->a:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 306
    and-int v0, p1, v4

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 310
    :cond_0
    new-instance v2, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    aget-object v3, v1, v0

    invoke-direct {v2, p1, p1, p2, v3}, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;-><init>(IILjava/lang/Object;Lcom/googlecode/mp4parser/util/IntHashMap$Entry;)V

    .line 311
    aput-object v2, v1, v0

    .line 312
    iget v0, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->b:I

    .line 313
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 294
    :cond_1
    iget v3, v2, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->a:I

    if-ne v3, p1, :cond_2

    .line 295
    iget-object v0, v2, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->c:Ljava/lang/Object;

    .line 296
    iput-object p2, v2, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->c:Ljava/lang/Object;

    goto :goto_1

    .line 293
    :cond_2
    iget-object v2, v2, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->d:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    goto :goto_0
.end method

.method protected a()V
    .locals 8

    .prologue
    .line 253
    iget-object v0, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->a:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    array-length v0, v0

    .line 254
    iget-object v3, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->a:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 256
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v4, v1, 0x1

    .line 257
    new-array v5, v4, [Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 259
    int-to-float v1, v4

    iget v2, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->c:I

    .line 260
    iput-object v5, p0, Lcom/googlecode/mp4parser/util/IntHashMap;->a:[Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 262
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-gtz v0, :cond_0

    .line 272
    return-void

    .line 263
    :cond_0
    aget-object v0, v3, v2

    :goto_1
    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 265
    :cond_1
    iget-object v1, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->d:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 267
    iget v6, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->a:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    rem-int/2addr v6, v4

    .line 268
    aget-object v7, v5, v6

    iput-object v7, v0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->d:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 269
    aput-object v0, v5, v6

    move-object v0, v1

    goto :goto_1
.end method
