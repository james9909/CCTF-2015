.class public Lcom/snapchat/android/cash/QuasiRandomPointGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/cash/PointGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/cash/QuasiRandomPointGenerator$1;,
        Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;
    }
.end annotation


# instance fields
.field private final a:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Ljava/util/Random;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;)V
    .locals 3
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->d:Ljava/util/Random;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->e:Ljava/util/Set;

    .line 26
    invoke-static {p1}, Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;->a(Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->a:I

    .line 27
    invoke-static {p1}, Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;->b(Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->b:I

    .line 28
    invoke-static {p1}, Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;->c(Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->c:I

    .line 30
    iget v0, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->a:I

    iget v1, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->c:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->b:I

    iget v2, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->c:I

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->f:I

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;Lcom/snapchat/android/cash/QuasiRandomPointGenerator$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;-><init>(Lcom/snapchat/android/cash/QuasiRandomPointGenerator$Builder;)V

    return-void
.end method

.method private b(Landroid/graphics/Point;)Ljava/lang/Integer;
    .locals 3
    .parameter

    .prologue
    .line 66
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->f:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->c:I

    div-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->c:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 39
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->d:Ljava/util/Random;

    iget v2, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->a:I

    iget v3, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->c:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget v2, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->d:Ljava/util/Random;

    iget v3, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->b:I

    iget v4, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->c:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget v3, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->c:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 42
    invoke-direct {p0, v0}, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->b(Landroid/graphics/Point;)Ljava/lang/Integer;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->e:Ljava/util/Set;

    monitor-enter v2

    .line 45
    :try_start_0
    iget-object v3, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->e:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    iget-object v3, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->e:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    monitor-exit v2

    .line 51
    return-object v0

    .line 49
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/graphics/Point;)V
    .locals 3
    .parameter

    .prologue
    .line 57
    iget-object v1, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->e:Ljava/util/Set;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->e:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/snapchat/android/cash/QuasiRandomPointGenerator;->b(Landroid/graphics/Point;)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
