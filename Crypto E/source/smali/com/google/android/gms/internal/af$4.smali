.class Lcom/google/android/gms/internal/af$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hi$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/af;-><init>(Lcom/google/android/gms/internal/ay;Lcom/google/android/gms/internal/gn;Lcom/google/android/gms/internal/hg;Landroid/view/View;Lcom/google/android/gms/internal/hi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/hi$b",
        "<",
        "Lcom/google/android/gms/internal/ah;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic nm:Lcom/google/android/gms/internal/af;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/af;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/af$4;->nm:Lcom/google/android/gms/internal/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ah;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/af$4;->b(Lcom/google/android/gms/internal/ah;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/ah;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/af$4;->nm:Lcom/google/android/gms/internal/af;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/af;->b(Lcom/google/android/gms/internal/af;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/af$4;->nm:Lcom/google/android/gms/internal/af;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af;->a(Lcom/google/android/gms/internal/ah;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/af$4;->nm:Lcom/google/android/gms/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/af;->aQ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/af$4;->nm:Lcom/google/android/gms/internal/af;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/af;->g(Z)V

    return-void
.end method
