.class Lcom/google/android/gms/internal/ft$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ft;->cG()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uF:Lcom/google/android/gms/internal/ft;

.field final synthetic uG:Lcom/google/android/gms/internal/gn$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ft;Lcom/google/android/gms/internal/gn$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ft$2;->uF:Lcom/google/android/gms/internal/ft;

    iput-object p2, p0, Lcom/google/android/gms/internal/ft$2;->uG:Lcom/google/android/gms/internal/gn$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ft$2;->uF:Lcom/google/android/gms/internal/ft;

    invoke-static {v0}, Lcom/google/android/gms/internal/ft;->a(Lcom/google/android/gms/internal/ft;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ft$2;->uF:Lcom/google/android/gms/internal/ft;

    invoke-static {v0}, Lcom/google/android/gms/internal/ft;->b(Lcom/google/android/gms/internal/ft;)Lcom/google/android/gms/internal/fs$a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ft$2;->uG:Lcom/google/android/gms/internal/gn$a;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/fs$a;->a(Lcom/google/android/gms/internal/gn$a;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
