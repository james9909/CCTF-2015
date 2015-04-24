.class Lcom/google/android/gms/internal/cr$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ch;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cr$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qF:Lcom/google/android/gms/internal/cr$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cr$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cr$1$2;->qF:Lcom/google/android/gms/internal/cr$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/hk;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hk;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$1$2;->qF:Lcom/google/android/gms/internal/cr$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    invoke-static {v0}, Lcom/google/android/gms/internal/cr;->d(Lcom/google/android/gms/internal/cr;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr$1$2;->qF:Lcom/google/android/gms/internal/cr$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/cr$1;->qD:Lcom/google/android/gms/internal/hi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hi;->getStatus()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$1$2;->qF:Lcom/google/android/gms/internal/cr$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/cr$1;->qD:Lcom/google/android/gms/internal/hi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hi;->getStatus()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cr$1$2;->qF:Lcom/google/android/gms/internal/cr$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    iget-object v2, p0, Lcom/google/android/gms/internal/cr$1$2;->qF:Lcom/google/android/gms/internal/cr$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    invoke-static {v2}, Lcom/google/android/gms/internal/cr;->c(Lcom/google/android/gms/internal/cr;)Lcom/google/android/gms/internal/ah;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/cr;->b(Lcom/google/android/gms/internal/cr;Lcom/google/android/gms/internal/ah;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$1$2;->qF:Lcom/google/android/gms/internal/cr$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/cr$1;->qD:Lcom/google/android/gms/internal/hi;

    iget-object v2, p0, Lcom/google/android/gms/internal/cr$1$2;->qF:Lcom/google/android/gms/internal/cr$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    invoke-static {v2}, Lcom/google/android/gms/internal/cr;->c(Lcom/google/android/gms/internal/cr;)Lcom/google/android/gms/internal/ah;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/hi;->c(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$1$2;->qF:Lcom/google/android/gms/internal/cr$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/internal/cr;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$1$2;->qF:Lcom/google/android/gms/internal/cr$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    iget-object v2, p0, Lcom/google/android/gms/internal/cr$1$2;->qF:Lcom/google/android/gms/internal/cr$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/cr$1;->qD:Lcom/google/android/gms/internal/hi;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/internal/cr;Lcom/google/android/gms/internal/hi;)Lcom/google/android/gms/internal/hi;

    const-string v0, "Javascript has loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
