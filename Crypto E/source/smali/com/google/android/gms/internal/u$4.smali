.class Lcom/google/android/gms/internal/u$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/u;->a(Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/internal/ep;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lB:Landroid/content/Intent;

.field final synthetic lz:Lcom/google/android/gms/internal/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/u;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/u$4;->lz:Lcom/google/android/gms/internal/u;

    iput-object p2, p0, Lcom/google/android/gms/internal/u$4;->lB:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/u$4;->lB:Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/internal/es;->d(Landroid/content/Intent;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u$4;->lz:Lcom/google/android/gms/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/u$b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u$4;->lz:Lcom/google/android/gms/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/u$b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u$4;->lz:Lcom/google/android/gms/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/u$b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dM()Lcom/google/android/gms/internal/dw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u$4;->lz:Lcom/google/android/gms/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/u$b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dM()Lcom/google/android/gms/internal/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw;->close()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/u$4;->lz:Lcom/google/android/gms/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/u$b;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/u$b;->ma:Z

    return-void
.end method
