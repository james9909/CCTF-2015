.class Lcom/google/android/gms/internal/u$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lz:Lcom/google/android/gms/internal/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/u$1;->lz:Lcom/google/android/gms/internal/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/u$1;->lz:Lcom/google/android/gms/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/u$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u$1;->lz:Lcom/google/android/gms/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/u$b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/u$1;->lz:Lcom/google/android/gms/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/u$b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/u$b;->lM:Lcom/google/android/gms/internal/gn;

    iget-object v0, v0, Lcom/google/android/gms/internal/gn;->sR:Lcom/google/android/gms/internal/hk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->ci()V

    invoke-interface {v0}, Lcom/google/android/gms/internal/hk;->dM()Lcom/google/android/gms/internal/dw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw;->cp()V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method