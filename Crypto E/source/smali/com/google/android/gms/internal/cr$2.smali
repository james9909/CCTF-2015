.class Lcom/google/android/gms/internal/cr$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/internal/hi;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qD:Lcom/google/android/gms/internal/hi;

.field final synthetic qE:Lcom/google/android/gms/internal/cr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cr;Lcom/google/android/gms/internal/hi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cr$2;->qE:Lcom/google/android/gms/internal/cr;

    iput-object p2, p0, Lcom/google/android/gms/internal/cr$2;->qD:Lcom/google/android/gms/internal/hi;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$2;->qE:Lcom/google/android/gms/internal/cr;

    invoke-static {v0}, Lcom/google/android/gms/internal/cr;->d(Lcom/google/android/gms/internal/cr;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr$2;->qD:Lcom/google/android/gms/internal/hi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hi;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$2;->qD:Lcom/google/android/gms/internal/hi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hi;->getStatus()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cr$2;->qE:Lcom/google/android/gms/internal/cr;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/internal/cr;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$2;->qD:Lcom/google/android/gms/internal/hi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hi;->reject()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
