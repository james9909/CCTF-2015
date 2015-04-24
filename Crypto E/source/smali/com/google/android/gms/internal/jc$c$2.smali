.class Lcom/google/android/gms/internal/jc$c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jc$c;->b(Lcom/google/android/gms/internal/je;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic NB:Lcom/google/android/gms/internal/jc$c;

.field final synthetic NC:Lcom/google/android/gms/internal/je;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jc$c;Lcom/google/android/gms/internal/je;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jc$c$2;->NB:Lcom/google/android/gms/internal/jc$c;

    iput-object p2, p0, Lcom/google/android/gms/internal/jc$c$2;->NC:Lcom/google/android/gms/internal/je;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jc$c$2;->NB:Lcom/google/android/gms/internal/jc$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/jc$c;->Ny:Lcom/google/android/gms/internal/jc;

    iget-object v1, p0, Lcom/google/android/gms/internal/jc$c$2;->NC:Lcom/google/android/gms/internal/je;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jc;->a(Lcom/google/android/gms/internal/jc;Lcom/google/android/gms/internal/je;)V

    return-void
.end method
