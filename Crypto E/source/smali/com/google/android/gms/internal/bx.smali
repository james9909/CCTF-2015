.class public Lcom/google/android/gms/internal/bx;
.super Lcom/google/android/gms/internal/ca$a;

# interfaces
.implements Lcom/google/android/gms/internal/bz$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# instance fields
.field private final mL:Ljava/lang/Object;

.field private final pS:Ljava/lang/String;

.field private final pT:Landroid/graphics/drawable/Drawable;

.field private final pU:Ljava/lang/String;

.field private final pV:Landroid/graphics/drawable/Drawable;

.field private final pW:Ljava/lang/String;

.field private final pX:D

.field private final pY:Ljava/lang/String;

.field private final pZ:Ljava/lang/String;

.field private qa:Lcom/google/android/gms/internal/bz;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ca$a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bx;->mL:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/bx;->pS:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/bx;->pT:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/google/android/gms/internal/bx;->pU:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bx;->pV:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/google/android/gms/internal/bx;->pW:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/internal/bx;->pX:D

    iput-object p8, p0, Lcom/google/android/gms/internal/bx;->pY:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/bx;->pZ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/bz;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/bx;->qa:Lcom/google/android/gms/internal/bz;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->pS:Ljava/lang/String;

    return-object v0
.end method

.method public bI()Lcom/google/android/gms/dynamic/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->pT:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->n(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    return-object v0
.end method

.method public bJ()Lcom/google/android/gms/dynamic/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->pV:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->n(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    return-object v0
.end method

.method public bK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->pW:Ljava/lang/String;

    return-object v0
.end method

.method public bL()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/bx;->pX:D

    return-wide v0
.end method

.method public bM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->pY:Ljava/lang/String;

    return-object v0
.end method

.method public bN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->pZ:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->pU:Ljava/lang/String;

    return-object v0
.end method

.method public j(I)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->qa:Lcom/google/android/gms/internal/bz;

    if-nez v0, :cond_0

    const-string v0, "Attempt to perform click before app install ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->U(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->qa:Lcom/google/android/gms/internal/bz;

    const-string v2, "2"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/bz;->b(Ljava/lang/String;I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recordImpression()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->qa:Lcom/google/android/gms/internal/bz;

    if-nez v0, :cond_0

    const-string v0, "Attempt to record impression before app install ad initialized."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->U(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->qa:Lcom/google/android/gms/internal/bz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bz;->recordImpression()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
