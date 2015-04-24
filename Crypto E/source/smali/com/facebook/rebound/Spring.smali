.class public Lcom/facebook/rebound/Spring;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rebound/Spring$1;,
        Lcom/facebook/rebound/Spring$PhysicsState;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:Lcom/facebook/rebound/SpringConfig;

.field private c:Z

.field private final d:Ljava/lang/String;

.field private final e:Lcom/facebook/rebound/Spring$PhysicsState;

.field private final f:Lcom/facebook/rebound/Spring$PhysicsState;

.field private final g:Lcom/facebook/rebound/Spring$PhysicsState;

.field private h:D

.field private i:D

.field private j:Z

.field private k:D

.field private l:D

.field private m:Lcom/facebook/rebound/ReentrantCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rebound/ReentrantCallback",
            "<",
            "Lcom/facebook/rebound/SpringListener;",
            ">;"
        }
    .end annotation
.end field

.field private n:D

.field private final o:Lcom/facebook/rebound/BaseSpringSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/facebook/rebound/Spring;->a:I

    return-void
.end method

.method constructor <init>(Lcom/facebook/rebound/BaseSpringSystem;)V
    .locals 4
    .parameter

    .prologue
    const-wide v2, 0x3f747ae147ae147bL

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {v0, v1}, Lcom/facebook/rebound/Spring$PhysicsState;-><init>(Lcom/facebook/rebound/Spring$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->e:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 38
    new-instance v0, Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {v0, v1}, Lcom/facebook/rebound/Spring$PhysicsState;-><init>(Lcom/facebook/rebound/Spring$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->f:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 39
    new-instance v0, Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {v0, v1}, Lcom/facebook/rebound/Spring$PhysicsState;-><init>(Lcom/facebook/rebound/Spring$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->g:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rebound/Spring;->j:Z

    .line 44
    iput-wide v2, p0, Lcom/facebook/rebound/Spring;->k:D

    .line 45
    iput-wide v2, p0, Lcom/facebook/rebound/Spring;->l:D

    .line 46
    new-instance v0, Lcom/facebook/rebound/ReentrantCallback;

    invoke-direct {v0}, Lcom/facebook/rebound/ReentrantCallback;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->m:Lcom/facebook/rebound/ReentrantCallback;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/rebound/Spring;->n:D

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spring cannot be created outside of a BaseSpringSystem"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/facebook/rebound/Spring;->o:Lcom/facebook/rebound/BaseSpringSystem;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spring:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/rebound/Spring;->a:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/facebook/rebound/Spring;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->d:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/facebook/rebound/SpringConfig;->c:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {p0, v0}, Lcom/facebook/rebound/Spring;->a(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 61
    return-void
.end method

.method private a(Lcom/facebook/rebound/Spring$PhysicsState;)D
    .locals 4
    .parameter

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->i:D

    iget-wide v2, p1, Lcom/facebook/rebound/Spring$PhysicsState;->a:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private d(D)V
    .locals 11
    .parameter

    .prologue
    const-wide/high16 v8, 0x3ff0

    .line 462
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->e:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-object v1, p0, Lcom/facebook/rebound/Spring;->e:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v2, v1, Lcom/facebook/rebound/Spring$PhysicsState;->a:D

    mul-double/2addr v2, p1

    iget-object v1, p0, Lcom/facebook/rebound/Spring;->f:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v4, v1, Lcom/facebook/rebound/Spring$PhysicsState;->a:D

    sub-double v6, v8, p1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/facebook/rebound/Spring$PhysicsState;->a:D

    .line 463
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->e:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-object v1, p0, Lcom/facebook/rebound/Spring;->e:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v2, v1, Lcom/facebook/rebound/Spring$PhysicsState;->b:D

    mul-double/2addr v2, p1

    iget-object v1, p0, Lcom/facebook/rebound/Spring;->f:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v4, v1, Lcom/facebook/rebound/Spring$PhysicsState;->b:D

    sub-double v6, v8, p1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/facebook/rebound/Spring$PhysicsState;->b:D

    .line 464
    return-void
.end method


# virtual methods
.method public a(D)Lcom/facebook/rebound/Spring;
    .locals 3
    .parameter

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/facebook/rebound/Spring;->h:D

    .line 111
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->e:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide p1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->a:D

    .line 112
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->m:Lcom/facebook/rebound/ReentrantCallback;

    invoke-virtual {v0}, Lcom/facebook/rebound/ReentrantCallback;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/SpringListener;

    .line 113
    invoke-interface {v0, p0}, Lcom/facebook/rebound/SpringListener;->a(Lcom/facebook/rebound/Spring;)V

    goto :goto_0

    .line 115
    :cond_0
    return-object p0
.end method

.method public a(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;
    .locals 2
    .parameter

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "springConfig is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/facebook/rebound/Spring;->b:Lcom/facebook/rebound/SpringConfig;

    .line 91
    return-object p0
.end method

.method public a(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;
    .locals 2
    .parameter

    .prologue
    .line 474
    if-nez p1, :cond_0

    .line 475
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newListener is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->m:Lcom/facebook/rebound/ReentrantCallback;

    invoke-virtual {v0, p1}, Lcom/facebook/rebound/ReentrantCallback;->a(Ljava/lang/Object;)V

    .line 478
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->d:Ljava/lang/String;

    return-object v0
.end method

.method a(DD)V
    .locals 33
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rebound/Spring;->g()Z

    move-result v10

    .line 269
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/rebound/Spring;->j:Z

    if-eqz v2, :cond_1

    .line 416
    :cond_0
    return-void

    .line 279
    :cond_1
    const-wide v2, 0x3fb0624dd2f1a9fcL

    cmpl-double v2, p3, v2

    if-lez v2, :cond_2

    .line 280
    const-wide p3, 0x3fb0624dd2f1a9fcL

    .line 288
    :cond_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/facebook/rebound/Spring;->n:D

    add-double v2, v2, p3

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/facebook/rebound/Spring;->n:D

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rebound/Spring;->b:Lcom/facebook/rebound/SpringConfig;

    iget-wide v12, v2, Lcom/facebook/rebound/SpringConfig;->b:D

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rebound/Spring;->b:Lcom/facebook/rebound/SpringConfig;

    iget-wide v14, v2, Lcom/facebook/rebound/SpringConfig;->a:D

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rebound/Spring;->e:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v8, v2, Lcom/facebook/rebound/Spring$PhysicsState;->a:D

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rebound/Spring;->e:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v6, v2, Lcom/facebook/rebound/Spring$PhysicsState;->b:D

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rebound/Spring;->g:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v4, v2, Lcom/facebook/rebound/Spring$PhysicsState;->a:D

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rebound/Spring;->g:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v2, v2, Lcom/facebook/rebound/Spring$PhysicsState;->b:D

    .line 306
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/rebound/Spring;->n:D

    move-wide/from16 v16, v0

    const-wide v18, 0x3f50624dd2f1a9fcL

    cmpl-double v11, v16, v18

    if-ltz v11, :cond_4

    .line 310
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/facebook/rebound/Spring;->n:D

    const-wide v16, 0x3f50624dd2f1a9fcL

    sub-double v2, v2, v16

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/facebook/rebound/Spring;->n:D

    .line 312
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/facebook/rebound/Spring;->n:D

    const-wide v16, 0x3f50624dd2f1a9fcL

    cmpg-double v2, v2, v16

    if-gez v2, :cond_3

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rebound/Spring;->f:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide v8, v2, Lcom/facebook/rebound/Spring$PhysicsState;->a:D

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rebound/Spring;->f:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide v6, v2, Lcom/facebook/rebound/Spring$PhysicsState;->b:D

    .line 328
    :cond_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/facebook/rebound/Spring;->i:D

    sub-double/2addr v2, v4

    mul-double/2addr v2, v12

    mul-double v4, v14, v6

    sub-double v16, v2, v4

    .line 332
    const-wide v2, 0x3f50624dd2f1a9fcL

    mul-double/2addr v2, v6

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    add-double/2addr v2, v8

    .line 333
    const-wide v4, 0x3f50624dd2f1a9fcL

    mul-double v4, v4, v16

    const-wide/high16 v18, 0x3fe0

    mul-double v4, v4, v18

    add-double v18, v6, v4

    .line 335
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/facebook/rebound/Spring;->i:D

    sub-double v2, v4, v2

    mul-double/2addr v2, v12

    mul-double v4, v14, v18

    sub-double v20, v2, v4

    .line 337
    const-wide v2, 0x3f50624dd2f1a9fcL

    mul-double v2, v2, v18

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    add-double/2addr v2, v8

    .line 338
    const-wide v4, 0x3f50624dd2f1a9fcL

    mul-double v4, v4, v20

    const-wide/high16 v22, 0x3fe0

    mul-double v4, v4, v22

    add-double v22, v6, v4

    .line 340
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/facebook/rebound/Spring;->i:D

    sub-double v2, v4, v2

    mul-double/2addr v2, v12

    mul-double v4, v14, v22

    sub-double v24, v2, v4

    .line 342
    const-wide v2, 0x3f50624dd2f1a9fcL

    mul-double v2, v2, v22

    add-double v4, v8, v2

    .line 343
    const-wide v2, 0x3f50624dd2f1a9fcL

    mul-double v2, v2, v24

    add-double/2addr v2, v6

    .line 345
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/rebound/Spring;->i:D

    move-wide/from16 v26, v0

    sub-double v26, v26, v4

    mul-double v26, v26, v12

    mul-double v28, v14, v2

    sub-double v26, v26, v28

    .line 348
    const-wide v28, 0x3fc5555555555555L

    const-wide/high16 v30, 0x4000

    add-double v18, v18, v22

    mul-double v18, v18, v30

    add-double v18, v18, v6

    add-double v18, v18, v2

    mul-double v18, v18, v28

    .line 349
    const-wide v22, 0x3fc5555555555555L

    const-wide/high16 v28, 0x4000

    add-double v20, v20, v24

    mul-double v20, v20, v28

    add-double v16, v16, v20

    add-double v16, v16, v26

    mul-double v16, v16, v22

    .line 351
    const-wide v20, 0x3f50624dd2f1a9fcL

    mul-double v18, v18, v20

    add-double v8, v8, v18

    .line 352
    const-wide v18, 0x3f50624dd2f1a9fcL

    mul-double v16, v16, v18

    add-double v6, v6, v16

    goto/16 :goto_0

    .line 355
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/rebound/Spring;->g:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide v4, v11, Lcom/facebook/rebound/Spring$PhysicsState;->a:D

    .line 356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/rebound/Spring;->g:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide v2, v4, Lcom/facebook/rebound/Spring$PhysicsState;->b:D

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rebound/Spring;->e:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide v8, v2, Lcom/facebook/rebound/Spring$PhysicsState;->a:D

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rebound/Spring;->e:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide v6, v2, Lcom/facebook/rebound/Spring$PhysicsState;->b:D

    .line 361
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/facebook/rebound/Spring;->n:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5

    .line 362
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/facebook/rebound/Spring;->n:D

    const-wide v4, 0x3f50624dd2f1a9fcL

    div-double/2addr v2, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/facebook/rebound/Spring;->d(D)V

    .line 368
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rebound/Spring;->g()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/facebook/rebound/Spring;->c:Z

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rebound/Spring;->d()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 370
    :cond_6
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/facebook/rebound/Spring;->i:D

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/facebook/rebound/Spring;->h:D

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rebound/Spring;->e:Lcom/facebook/rebound/Spring$PhysicsState;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/facebook/rebound/Spring;->i:D

    iput-wide v4, v2, Lcom/facebook/rebound/Spring$PhysicsState;->a:D

    .line 372
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->c(D)Lcom/facebook/rebound/Spring;

    .line 373
    const/4 v2, 0x1

    .line 392
    :goto_1
    const/4 v3, 0x0

    .line 393
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/facebook/rebound/Spring;->j:Z

    if-eqz v4, :cond_a

    .line 394
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/facebook/rebound/Spring;->j:Z

    .line 395
    const/4 v3, 0x1

    move v4, v3

    .line 397
    :goto_2
    const/4 v3, 0x0

    .line 398
    if-eqz v2, :cond_7

    .line 399
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/facebook/rebound/Spring;->j:Z

    .line 400
    const/4 v2, 0x1

    move v3, v2

    .line 402
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/rebound/Spring;->m:Lcom/facebook/rebound/ReentrantCallback;

    invoke-virtual {v2}, Lcom/facebook/rebound/ReentrantCallback;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/rebound/SpringListener;

    .line 404
    if-eqz v4, :cond_9

    .line 405
    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/facebook/rebound/SpringListener;->c(Lcom/facebook/rebound/Spring;)V

    .line 409
    :cond_9
    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/facebook/rebound/SpringListener;->a(Lcom/facebook/rebound/Spring;)V

    .line 412
    if-eqz v3, :cond_8

    .line 413
    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/facebook/rebound/SpringListener;->b(Lcom/facebook/rebound/Spring;)V

    goto :goto_3

    :cond_a
    move v4, v3

    goto :goto_2

    :cond_b
    move v2, v10

    goto :goto_1
.end method

.method public b()D
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->e:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->a:D

    return-wide v0
.end method

.method public b(D)Lcom/facebook/rebound/Spring;
    .locals 3
    .parameter

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->i:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    return-object p0

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rebound/Spring;->h:D

    .line 161
    iput-wide p1, p0, Lcom/facebook/rebound/Spring;->i:D

    .line 162
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->o:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/BaseSpringSystem;->a(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->m:Lcom/facebook/rebound/ReentrantCallback;

    invoke-virtual {v0}, Lcom/facebook/rebound/ReentrantCallback;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/SpringListener;

    .line 164
    invoke-interface {v0, p0}, Lcom/facebook/rebound/SpringListener;->d(Lcom/facebook/rebound/Spring;)V

    goto :goto_0
.end method

.method public c()D
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->i:D

    return-wide v0
.end method

.method public c(D)Lcom/facebook/rebound/Spring;
    .locals 1
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->e:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide p1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->b:D

    .line 183
    return-object p0
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->h:D

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->i:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->b()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->i:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->h:D

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->i:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->b()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->i:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/facebook/rebound/Spring;->j:Z

    return v0
.end method

.method public g()Z
    .locals 4

    .prologue
    .line 441
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->e:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->k:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rebound/Spring;->e:Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {p0, v0}, Lcom/facebook/rebound/Spring;->a(Lcom/facebook/rebound/Spring$PhysicsState;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->l:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
