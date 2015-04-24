.class public final Lcom/google/android/gms/internal/fu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fu$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/fu$a;)Lcom/google/android/gms/internal/gu;
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/fx;->lH:Lcom/google/android/gms/internal/hg;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/hg;->xS:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fu;->b(Landroid/content/Context;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/fu$a;)Lcom/google/android/gms/internal/gu;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fu;->c(Landroid/content/Context;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/fu$a;)Lcom/google/android/gms/internal/gu;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/fu$a;)Lcom/google/android/gms/internal/gu;
    .locals 1

    const-string v0, "Fetching ad response from local ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/fv$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/fv$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/fu$a;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fv$a;->start()V

    return-object v0
.end method

.method private static c(Landroid/content/Context;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/fu$a;)Lcom/google/android/gms/internal/gu;
    .locals 1

    const-string v0, "Fetching ad response from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to connect to remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->X(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/fv$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/fv$b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/fu$a;)V

    goto :goto_0
.end method
