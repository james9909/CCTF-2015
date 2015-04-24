.class Lcom/google/android/gms/internal/dw$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dw;->s(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sL:Lcom/google/android/gms/internal/dw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dw$1;->sL:Lcom/google/android/gms/internal/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/hk;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/android/gms/internal/hk;->dN()Lcom/google/android/gms/internal/hl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl;->dU()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/hk;->cq()V

    return-void
.end method
