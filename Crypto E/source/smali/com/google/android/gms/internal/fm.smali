.class public Lcom/google/android/gms/internal/fm;
.super Lcom/google/android/gms/internal/fh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/fl$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/fh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gn$a;Lcom/google/android/gms/internal/hk;Lcom/google/android/gms/internal/fl$a;)V

    return-void
.end method


# virtual methods
.method protected cQ()V
    .locals 0

    return-void
.end method

.method protected f(J)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/he;->xO:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/fm$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/fm$1;-><init>(Lcom/google/android/gms/internal/fm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fm;->e(J)V

    return-void
.end method
