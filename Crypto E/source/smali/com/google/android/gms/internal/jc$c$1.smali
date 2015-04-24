.class Lcom/google/android/gms/internal/jc$c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jc$c;->onApplicationDisconnected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic NA:I

.field final synthetic NB:Lcom/google/android/gms/internal/jc$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jc$c;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jc$c$1;->NB:Lcom/google/android/gms/internal/jc$c;

    iput p2, p0, Lcom/google/android/gms/internal/jc$c$1;->NA:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jc$c$1;->NB:Lcom/google/android/gms/internal/jc$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/jc$c;->Ny:Lcom/google/android/gms/internal/jc;

    invoke-static {v0}, Lcom/google/android/gms/internal/jc;->e(Lcom/google/android/gms/internal/jc;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/jc$c$1;->NB:Lcom/google/android/gms/internal/jc$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/jc$c;->Ny:Lcom/google/android/gms/internal/jc;

    invoke-static {v0}, Lcom/google/android/gms/internal/jc;->e(Lcom/google/android/gms/internal/jc;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/jc$c$1;->NA:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationDisconnected(I)V

    :cond_0
    return-void
.end method
