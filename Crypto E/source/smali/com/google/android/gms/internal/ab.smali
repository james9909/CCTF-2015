.class public Lcom/google/android/gms/internal/ab;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# static fields
.field private static final mx:Ljava/lang/Object;

.field private static my:Lcom/google/android/gms/internal/ab;


# instance fields
.field private final mA:Lcom/google/android/gms/internal/fl;

.field private final mB:Lcom/google/android/gms/internal/gx;

.field private final mC:Lcom/google/android/gms/internal/hm;

.field private final mD:Lcom/google/android/gms/internal/gy;

.field private final mE:Lcom/google/android/gms/internal/bp;

.field private final mF:Lcom/google/android/gms/internal/bq;

.field private final mG:Lcom/google/android/gms/internal/db;

.field private final mz:Lcom/google/android/gms/internal/fs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ab;->mx:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ab;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ab;->a(Lcom/google/android/gms/internal/ab;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 9

    new-instance v1, Lcom/google/android/gms/internal/fs;

    invoke-direct {v1}, Lcom/google/android/gms/internal/fs;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/fl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/fl;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/gx;

    invoke-direct {v3}, Lcom/google/android/gms/internal/gx;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/hm;

    invoke-direct {v4}, Lcom/google/android/gms/internal/hm;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/google/android/gms/internal/gy;->w(I)Lcom/google/android/gms/internal/gy;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/bp;

    invoke-direct {v6}, Lcom/google/android/gms/internal/bp;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/bq;

    invoke-direct {v7}, Lcom/google/android/gms/internal/bq;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/db;

    invoke-direct {v8}, Lcom/google/android/gms/internal/db;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ab;-><init>(Lcom/google/android/gms/internal/fs;Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/internal/gx;Lcom/google/android/gms/internal/hm;Lcom/google/android/gms/internal/gy;Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/db;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/internal/fs;Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/internal/gx;Lcom/google/android/gms/internal/hm;Lcom/google/android/gms/internal/gy;Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/db;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ab;->mz:Lcom/google/android/gms/internal/fs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ab;->mA:Lcom/google/android/gms/internal/fl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ab;->mB:Lcom/google/android/gms/internal/gx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ab;->mC:Lcom/google/android/gms/internal/hm;

    iput-object p5, p0, Lcom/google/android/gms/internal/ab;->mD:Lcom/google/android/gms/internal/gy;

    iput-object p6, p0, Lcom/google/android/gms/internal/ab;->mE:Lcom/google/android/gms/internal/bp;

    iput-object p7, p0, Lcom/google/android/gms/internal/ab;->mF:Lcom/google/android/gms/internal/bq;

    iput-object p8, p0, Lcom/google/android/gms/internal/ab;->mG:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method protected static a(Lcom/google/android/gms/internal/ab;)V
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/ab;->mx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/google/android/gms/internal/ab;->my:Lcom/google/android/gms/internal/ab;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static aD()Lcom/google/android/gms/internal/ab;
    .locals 2

    sget-object v1, Lcom/google/android/gms/internal/ab;->mx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ab;->my:Lcom/google/android/gms/internal/ab;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static aE()Lcom/google/android/gms/internal/fs;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aD()Lcom/google/android/gms/internal/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ab;->mz:Lcom/google/android/gms/internal/fs;

    return-object v0
.end method

.method public static aF()Lcom/google/android/gms/internal/fl;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aD()Lcom/google/android/gms/internal/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ab;->mA:Lcom/google/android/gms/internal/fl;

    return-object v0
.end method

.method public static aG()Lcom/google/android/gms/internal/gx;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aD()Lcom/google/android/gms/internal/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ab;->mB:Lcom/google/android/gms/internal/gx;

    return-object v0
.end method

.method public static aH()Lcom/google/android/gms/internal/hm;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aD()Lcom/google/android/gms/internal/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ab;->mC:Lcom/google/android/gms/internal/hm;

    return-object v0
.end method

.method public static aI()Lcom/google/android/gms/internal/bp;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aD()Lcom/google/android/gms/internal/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ab;->mE:Lcom/google/android/gms/internal/bp;

    return-object v0
.end method

.method public static aJ()Lcom/google/android/gms/internal/bq;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aD()Lcom/google/android/gms/internal/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ab;->mF:Lcom/google/android/gms/internal/bq;

    return-object v0
.end method

.method public static aK()Lcom/google/android/gms/internal/db;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aD()Lcom/google/android/gms/internal/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ab;->mG:Lcom/google/android/gms/internal/db;

    return-object v0
.end method

.method public static aL()Lcom/google/android/gms/internal/gy;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aD()Lcom/google/android/gms/internal/ab;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ab;->mD:Lcom/google/android/gms/internal/gy;

    return-object v0
.end method
