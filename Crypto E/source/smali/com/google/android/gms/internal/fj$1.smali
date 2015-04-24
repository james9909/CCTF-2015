.class Lcom/google/android/gms/internal/fj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fj;->f(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ui:Lcom/google/android/gms/internal/fi;

.field final synthetic uj:Lcom/google/android/gms/internal/fj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fj;Lcom/google/android/gms/internal/fi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fj$1;->uj:Lcom/google/android/gms/internal/fj;

    iput-object p2, p0, Lcom/google/android/gms/internal/fj$1;->ui:Lcom/google/android/gms/internal/fi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fj$1;->uj:Lcom/google/android/gms/internal/fj;

    iget-object v1, v0, Lcom/google/android/gms/internal/fj;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fj$1;->uj:Lcom/google/android/gms/internal/fj;

    iget-object v0, v0, Lcom/google/android/gms/internal/fj;->un:Lcom/google/android/gms/internal/fz;

    iget v0, v0, Lcom/google/android/gms/internal/fz;->errorCode:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fj$1;->uj:Lcom/google/android/gms/internal/fj;

    iget-object v0, v0, Lcom/google/android/gms/internal/fj;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/fj$1;->uj:Lcom/google/android/gms/internal/fj;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hl$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fj$1;->ui:Lcom/google/android/gms/internal/fi;

    iget-object v2, p0, Lcom/google/android/gms/internal/fj$1;->uj:Lcom/google/android/gms/internal/fj;

    iget-object v2, v2, Lcom/google/android/gms/internal/fj;->un:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/fi;->a(Lcom/google/android/gms/internal/fz;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
