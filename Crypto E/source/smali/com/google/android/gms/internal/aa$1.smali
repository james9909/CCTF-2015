.class Lcom/google/android/gms/internal/aa$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/aa;-><init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/aa$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mu:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/u;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic mv:Lcom/google/android/gms/internal/u;

.field final synthetic mw:Lcom/google/android/gms/internal/aa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aa;Lcom/google/android/gms/internal/u;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/aa$1;->mw:Lcom/google/android/gms/internal/aa;

    iput-object p2, p0, Lcom/google/android/gms/internal/aa$1;->mv:Lcom/google/android/gms/internal/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/aa$1;->mv:Lcom/google/android/gms/internal/u;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aa$1;->mu:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aa$1;->mw:Lcom/google/android/gms/internal/aa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/aa;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/aa$1;->mu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/u;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aa$1;->mw:Lcom/google/android/gms/internal/aa;

    invoke-static {v1}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/aa;)Lcom/google/android/gms/internal/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/u;->b(Lcom/google/android/gms/internal/av;)V

    :cond_0
    return-void
.end method
