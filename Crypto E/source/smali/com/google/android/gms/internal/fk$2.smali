.class Lcom/google/android/gms/internal/fk$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fk;->cG()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uo:Lcom/google/android/gms/internal/fk;

.field final synthetic up:Lcom/google/android/gms/internal/gn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fk;Lcom/google/android/gms/internal/gn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fk$2;->uo:Lcom/google/android/gms/internal/fk;

    iput-object p2, p0, Lcom/google/android/gms/internal/fk$2;->up:Lcom/google/android/gms/internal/gn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fk$2;->uo:Lcom/google/android/gms/internal/fk;

    iget-object v1, v0, Lcom/google/android/gms/internal/fk;->mL:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fk$2;->uo:Lcom/google/android/gms/internal/fk;

    iget-object v2, p0, Lcom/google/android/gms/internal/fk$2;->up:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/fk;->h(Lcom/google/android/gms/internal/gn;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
