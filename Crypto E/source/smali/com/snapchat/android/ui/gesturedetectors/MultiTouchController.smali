.class public Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;,
        Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;,
        Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static A:Ljava/lang/reflect/Method;

.field private static B:Ljava/lang/reflect/Method;

.field private static C:Ljava/lang/reflect/Method;

.field private static D:Ljava/lang/reflect/Method;

.field private static E:I

.field private static F:I

.field private static final G:[F

.field private static final H:[F

.field private static final I:[F

.field private static final J:[I

.field public static final b:Z

.field private static w:Ljava/lang/reflect/Method;

.field private static x:Ljava/lang/reflect/Method;

.field private static y:Ljava/lang/reflect/Method;

.field private static z:Ljava/lang/reflect/Method;


# instance fields
.field a:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

.field private d:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Z

.field private l:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private m:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;

.field private n:J

.field private o:J

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x14

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 210
    const/4 v2, 0x6

    sput v2, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->E:I

    .line 211
    const/16 v2, 0x8

    sput v2, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->F:I

    .line 217
    :try_start_0
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerCount"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->w:Ljava/lang/reflect/Method;

    .line 218
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->x:Ljava/lang/reflect/Method;

    .line 219
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPressure"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->y:Ljava/lang/reflect/Method;

    .line 220
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalX"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->z:Ljava/lang/reflect/Method;

    .line 221
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalY"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->A:Ljava/lang/reflect/Method;

    .line 222
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalPressure"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->B:Ljava/lang/reflect/Method;

    .line 223
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getX"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->C:Ljava/lang/reflect/Method;

    .line 224
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getY"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->D:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    sput-boolean v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->b:Z

    .line 230
    sget-boolean v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->b:Z

    if-eqz v0, :cond_0

    .line 234
    :try_start_1
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "ACTION_POINTER_UP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->E:I

    .line 235
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "ACTION_POINTER_INDEX_SHIFT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->F:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    :cond_0
    :goto_1
    new-array v0, v7, [F

    sput-object v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->G:[F

    .line 244
    new-array v0, v7, [F

    sput-object v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->H:[F

    .line 245
    new-array v0, v7, [F

    sput-object v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->I:[F

    .line 246
    new-array v0, v7, [I

    sput-object v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->J:[I

    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    const-string v2, "MultiTouchController"

    const-string v3, "static initializer failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    .line 236
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;-><init>(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;Z)V

    .line 173
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->l:Ljava/lang/Object;

    .line 140
    new-instance v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;

    invoke-direct {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->m:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->v:I

    .line 177
    new-instance v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-direct {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    .line 178
    new-instance v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-direct {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->d:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    .line 179
    iput-boolean p2, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->k:Z

    .line 180
    iput-object p1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->a:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;

    .line 181
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/high16 v3, 0x41f0

    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->g()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->e:F

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->h()F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->f:F

    .line 125
    const v2, 0x41aa6666

    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->m:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->a(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->g:F

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->m:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->b(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->h:F

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->m:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->b(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->i:F

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->m:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->c(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    iput v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->j:F

    .line 129
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->e()F

    move-result v0

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->b()F

    move-result v0

    goto :goto_1

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->c()F

    move-result v0

    goto :goto_2

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->f()F

    move-result v1

    goto :goto_3
.end method

.method private a(I[F[F[F[IIZJ)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->d:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    .line 318
    iget-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    iput-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->d:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    .line 319
    iput-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    .line 321
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->a(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;I[F[F[F[IIZJ)V

    .line 322
    invoke-direct {p0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->d()V

    .line 323
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->l:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->a:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->l:Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->m:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;->a(Ljava/lang/Object;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)V

    .line 342
    invoke-direct {p0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->a()V

    .line 343
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->e:F

    iget-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->m:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;

    invoke-static {v1}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->d(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->p:F

    .line 344
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->f:F

    iget-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->m:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;

    invoke-static {v1}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->e(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->q:F

    .line 345
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->m:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->f(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->g:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->r:F

    .line 346
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->m:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->g(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->h:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->t:F

    .line 347
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->m:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->h(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->i:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->u:F

    .line 348
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->m:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;

    invoke-static {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->i(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;)F

    move-result v0

    iget v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->j:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->s:F

    goto :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 354
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->l:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    invoke-direct {p0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->a()V

    .line 359
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->e:F

    iget v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->p:F

    sub-float v1, v0, v1

    .line 360
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->f:F

    iget v2, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->q:F

    sub-float v2, v0, v2

    .line 361
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->r:F

    iget v3, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->g:F

    mul-float/2addr v3, v0

    .line 362
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->t:F

    iget v4, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->h:F

    mul-float/2addr v4, v0

    .line 363
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->u:F

    iget v5, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->i:F

    mul-float/2addr v5, v0

    .line 364
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->s:F

    iget v6, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->j:F

    add-float/2addr v6, v0

    .line 367
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->m:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;

    invoke-virtual/range {v0 .. v6}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;->a(FFFFFF)V

    .line 369
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->a:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->l:Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->m:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;

    iget-object v3, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;->a(Ljava/lang/Object;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PositionAndScale;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)Z

    move-result v0

    .line 370
    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x4220

    const/high16 v5, 0x41f0

    const/high16 v4, 0x3f00

    const-wide/16 v2, 0x14

    .line 382
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->v:I

    packed-switch v0, :pswitch_data_0

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 387
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->a:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;->b(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->l:Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->l:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 392
    const/4 v0, 0x1

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->v:I

    .line 393
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->a:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;

    iget-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->l:Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;->a(Ljava/lang/Object;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)V

    .line 394
    invoke-direct {p0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->b()V

    .line 396
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->o:J

    iput-wide v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->n:J

    goto :goto_0

    .line 405
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    iput v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->v:I

    .line 408
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->a:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->l:Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;->a(Ljava/lang/Object;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)V

    goto :goto_0

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    const/4 v0, 0x2

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->v:I

    .line 414
    invoke-direct {p0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->b()V

    .line 416
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->n:J

    .line 417
    iget-wide v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->n:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->o:J

    goto :goto_0

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->j()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->o:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 424
    invoke-direct {p0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->b()V

    goto :goto_0

    .line 427
    :cond_3
    invoke-direct {p0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c()V

    goto :goto_0

    .line 436
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->i()Z

    move-result v0

    if-nez v0, :cond_6

    .line 439
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->i()Z

    move-result v0

    if-nez v0, :cond_5

    .line 441
    iput v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->v:I

    .line 442
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->a:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->l:Ljava/lang/Object;

    iget-object v2, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$MultiTouchObjectCanvas;->a(Ljava/lang/Object;Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)V

    goto/16 :goto_0

    .line 446
    :cond_5
    const/4 v0, 0x1

    iput v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->v:I

    .line 448
    invoke-direct {p0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->b()V

    .line 450
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->n:J

    .line 451
    iget-wide v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->n:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->o:J

    goto/16 :goto_0

    .line 456
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->g()F

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->d:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->g()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->h()F

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->d:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->h()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->b()F

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->d:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->b()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v4

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->c()F

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->d:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->c()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v4

    cmpl-float v0, v0, v6

    if-lez v0, :cond_8

    .line 461
    :cond_7
    invoke-direct {p0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->b()V

    .line 462
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->n:J

    .line 463
    iget-wide v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->n:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->o:J

    goto/16 :goto_0

    .line 465
    :cond_8
    iget-object v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c:Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;

    invoke-static {v0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;->a(Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController$PointInfo;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->o:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_9

    .line 467
    invoke-direct {p0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->b()V

    goto/16 :goto_0

    .line 470
    :cond_9
    invoke-direct {p0}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->c()V

    goto/16 :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter

    .prologue
    .line 252
    :try_start_0
    sget-boolean v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->w:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 255
    :goto_0
    iget v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->v:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 257
    const/4 v0, 0x0

    .line 308
    :goto_1
    return v0

    .line 252
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    div-int v12, v0, v1

    .line 264
    const/4 v0, 0x0

    move v11, v0

    :goto_2
    if-gt v11, v12, :cond_10

    .line 266
    if-ge v11, v12, :cond_4

    const/4 v0, 0x1

    move v8, v0

    .line 267
    :goto_3
    sget-boolean v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->b:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_8

    .line 273
    :cond_2
    sget-object v2, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->G:[F

    const/4 v3, 0x0

    if-eqz v8, :cond_5

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    :goto_4
    aput v0, v2, v3

    .line 274
    sget-object v2, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->H:[F

    const/4 v3, 0x0

    if-eqz v8, :cond_6

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    :goto_5
    aput v0, v2, v3

    .line 275
    sget-object v2, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->I:[F

    const/4 v3, 0x0

    if-eqz v8, :cond_7

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v0

    :goto_6
    aput v0, v2, v3

    .line 296
    :cond_3
    sget-object v2, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->G:[F

    sget-object v3, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->H:[F

    sget-object v4, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->I:[F

    sget-object v5, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->J:[I

    if-eqz v8, :cond_c

    const/4 v6, 0x2

    :goto_7
    if-eqz v8, :cond_d

    const/4 v7, 0x1

    :goto_8
    if-eqz v8, :cond_f

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v8

    :goto_9
    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->a(I[F[F[F[IIZJ)V

    .line 264
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_2

    .line 266
    :cond_4
    const/4 v0, 0x0

    move v8, v0

    goto :goto_3

    .line 273
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_4

    .line 274
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_5

    .line 275
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    goto :goto_6

    .line 280
    :cond_8
    const/16 v0, 0x14

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 283
    const/4 v0, 0x0

    move v2, v0

    :goto_a
    if-ge v2, v3, :cond_3

    .line 284
    sget-object v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->x:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 285
    sget-object v4, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->J:[I

    aput v0, v4, v2

    .line 289
    sget-object v4, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->G:[F

    if-eqz v8, :cond_9

    sget-object v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->z:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_b
    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v2

    .line 290
    sget-object v4, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->H:[F

    if-eqz v8, :cond_a

    sget-object v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->A:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v2

    .line 291
    sget-object v4, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->I:[F

    if-eqz v8, :cond_b

    sget-object v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->B:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v2

    .line 283
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_a

    .line 289
    :cond_9
    sget-object v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->C:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b

    .line 290
    :cond_a
    sget-object v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->D:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    .line 291
    :cond_b
    sget-object v0, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->y:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    :cond_c
    move v6, v10

    .line 296
    goto/16 :goto_7

    :cond_d
    const/4 v0, 0x1

    if-eq v10, v0, :cond_e

    const/4 v0, 0x1

    sget v7, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->F:I

    shl-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v10

    sget v7, Lcom/snapchat/android/ui/gesturedetectors/MultiTouchController;->E:I

    if-eq v0, v7, :cond_e

    const/4 v0, 0x3

    if-eq v10, v0, :cond_e

    const/4 v7, 0x1

    goto/16 :goto_8

    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    goto/16 :goto_9

    .line 304
    :cond_10
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 305
    :catch_0
    move-exception v0

    .line 307
    const-string v1, "MultiTouchController"

    const-string v2, "onTouchEvent() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    const/4 v0, 0x0

    goto/16 :goto_1
.end method
