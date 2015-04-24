.class public Lcom/google/android/gms/internal/v;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/v$b;,
        Lcom/google/android/gms/internal/v$a;
    }
.end annotation


# instance fields
.field private mf:Lcom/google/android/gms/internal/v$a;

.field private mg:Z

.field private mh:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/br;->pB:Lcom/google/android/gms/internal/bo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/v;->mh:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/v;->mh:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/v$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/v;->mf:Lcom/google/android/gms/internal/v$a;

    return-void
.end method

.method public az()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/v;->mh:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/v;->mg:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Action was blocked because no click was detected."

    invoke-static {v0}, Lcom/google/android/gms/internal/hf;->T(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->mf:Lcom/google/android/gms/internal/v$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/v;->mf:Lcom/google/android/gms/internal/v$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/v$a;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public recordClick()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/v;->mg:Z

    return-void
.end method
