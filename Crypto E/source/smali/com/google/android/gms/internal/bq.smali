.class public Lcom/google/android/gms/internal/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/co$b;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# instance fields
.field private final mL:Ljava/lang/Object;

.field private final pt:Lcom/google/android/gms/internal/gz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gz",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final pu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private pv:Z

.field private pw:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/gz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->pt:Lcom/google/android/gms/internal/gz;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->pu:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bq;->mL:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/bq;->pv:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/bq;->pw:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bq;->pv:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->pu:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bG()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->pt:Lcom/google/android/gms/internal/gz;

    return-object v0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bq;->pv:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bq;->pv:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->pt:Lcom/google/android/gms/internal/gz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gz;->b(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->pu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bq;->pu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public j(Landroid/content/Context;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/bq;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/bq;->pw:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/co;->a(Landroid/content/Context;Lcom/google/android/gms/internal/co$b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bq;->pw:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
