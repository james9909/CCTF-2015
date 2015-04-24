.class Lcom/google/android/gms/internal/fm$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fm;->f(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ur:Lcom/google/android/gms/internal/fm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fm$1;->ur:Lcom/google/android/gms/internal/fm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/fm$1;->ur:Lcom/google/android/gms/internal/fm;

    iget-object v6, v0, Lcom/google/android/gms/internal/fm;->mL:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fm$1;->ur:Lcom/google/android/gms/internal/fm;

    iget-object v0, v0, Lcom/google/android/gms/internal/fm;->un:Lcom/google/android/gms/internal/fz;

    iget v0, v0, Lcom/google/android/gms/internal/fz;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fm$1;->ur:Lcom/google/android/gms/internal/fm;

    iget-object v0, v0, Lcom/google/android/gms/internal/fm;->mj:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fm$1;->ur:Lcom/google/android/gms/internal/fm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hl$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fm$1;->ur:Lcom/google/android/gms/internal/fm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fm;->cQ()V

    const-string v0, "Loading HTML in WebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->W(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fm$1;->ur:Lcom/google/android/gms/internal/fm;

    iget-object v0, v0, Lcom/google/android/gms/internal/fm;->mj:Lcom/google/android/gms/internal/hk;

    invoke-static {}, Lcom/google/android/gms/internal/ab;->aG()Lcom/google/android/gms/internal/gx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fm$1;->ur:Lcom/google/android/gms/internal/fm;

    iget-object v2, v2, Lcom/google/android/gms/internal/fm;->un:Lcom/google/android/gms/internal/fz;

    iget-object v2, v2, Lcom/google/android/gms/internal/fz;->sT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gx;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fm$1;->ur:Lcom/google/android/gms/internal/fm;

    iget-object v2, v2, Lcom/google/android/gms/internal/fm;->un:Lcom/google/android/gms/internal/fz;

    iget-object v2, v2, Lcom/google/android/gms/internal/fz;->uX:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/hk;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
