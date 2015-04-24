.class Lcom/google/android/gms/internal/cz$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cz;->b(JJ)Lcom/google/android/gms/internal/da;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rm:Lcom/google/android/gms/internal/cy;

.field final synthetic rn:Lcom/google/android/gms/internal/cz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cz;Lcom/google/android/gms/internal/cy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cz$1;->rn:Lcom/google/android/gms/internal/cz;

    iput-object p2, p0, Lcom/google/android/gms/internal/cz$1;->rm:Lcom/google/android/gms/internal/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/cz$1;->rn:Lcom/google/android/gms/internal/cz;

    invoke-static {v0}, Lcom/google/android/gms/internal/cz;->a(Lcom/google/android/gms/internal/cz;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cz$1;->rn:Lcom/google/android/gms/internal/cz;

    invoke-static {v0}, Lcom/google/android/gms/internal/cz;->b(Lcom/google/android/gms/internal/cz;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cz$1;->rn:Lcom/google/android/gms/internal/cz;

    iget-object v2, p0, Lcom/google/android/gms/internal/cz$1;->rn:Lcom/google/android/gms/internal/cz;

    invoke-static {v2}, Lcom/google/android/gms/internal/cz;->c(Lcom/google/android/gms/internal/cz;)Lcom/google/android/gms/internal/de;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/cz;->a(Lcom/google/android/gms/internal/cz;Lcom/google/android/gms/internal/de;)Lcom/google/android/gms/internal/de;

    iget-object v0, p0, Lcom/google/android/gms/internal/cz$1;->rn:Lcom/google/android/gms/internal/cz;

    invoke-static {v0}, Lcom/google/android/gms/internal/cz;->d(Lcom/google/android/gms/internal/cz;)Lcom/google/android/gms/internal/de;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cz$1;->rn:Lcom/google/android/gms/internal/cz;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cz;->k(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cz$1;->rm:Lcom/google/android/gms/internal/cy;

    iget-object v2, p0, Lcom/google/android/gms/internal/cz$1;->rn:Lcom/google/android/gms/internal/cz;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/cy;->a(Lcom/google/android/gms/internal/da$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cz$1;->rn:Lcom/google/android/gms/internal/cz;

    iget-object v2, p0, Lcom/google/android/gms/internal/cz$1;->rm:Lcom/google/android/gms/internal/cy;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/cz;->a(Lcom/google/android/gms/internal/cz;Lcom/google/android/gms/internal/cy;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
