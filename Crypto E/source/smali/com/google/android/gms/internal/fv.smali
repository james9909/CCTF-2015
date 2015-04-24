.class public abstract Lcom/google/android/gms/internal/fv;
.super Lcom/google/android/gms/internal/gu;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fv$b;,
        Lcom/google/android/gms/internal/fv$a;
    }
.end annotation


# instance fields
.field private final qI:Lcom/google/android/gms/internal/fx;

.field private final uH:Lcom/google/android/gms/internal/fu$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/fu$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fv;->qI:Lcom/google/android/gms/internal/fx;

    iput-object p2, p0, Lcom/google/android/gms/internal/fv;->uH:Lcom/google/android/gms/internal/fu$a;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/gb;Lcom/google/android/gms/internal/fx;)Lcom/google/android/gms/internal/fz;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/gb;->b(Lcom/google/android/gms/internal/fx;)Lcom/google/android/gms/internal/fz;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Could not fetch ad response from ad request service."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/hf;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gp;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final cG()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->cU()Lcom/google/android/gms/internal/gb;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/fz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fz;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->cT()V

    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->uH:Lcom/google/android/gms/internal/fu$a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/fu$a;->b(Lcom/google/android/gms/internal/fz;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/fv;->qI:Lcom/google/android/gms/internal/fx;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/gb;Lcom/google/android/gms/internal/fx;)Lcom/google/android/gms/internal/fz;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/fz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fz;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->cT()V

    throw v0
.end method

.method public abstract cT()V
.end method

.method public abstract cU()Lcom/google/android/gms/internal/gb;
.end method

.method public final onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fv;->cT()V

    return-void
.end method
