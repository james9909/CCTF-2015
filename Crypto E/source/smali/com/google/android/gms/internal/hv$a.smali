.class public Lcom/google/android/gms/internal/hv$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private DR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/hz;",
            ">;"
        }
    .end annotation
.end field

.field private DS:Ljava/lang/String;

.field private DT:Z

.field private DU:Landroid/accounts/Account;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Z)Lcom/google/android/gms/internal/hv$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/hv$a;->DT:Z

    return-object p0
.end method

.method public a(Lcom/google/android/gms/internal/hz;)Lcom/google/android/gms/internal/hv$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hv$a;->DR:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hv$a;->DR:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hv$a;->DR:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public at(Ljava/lang/String;)Lcom/google/android/gms/internal/hv$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hv$a;->DS:Ljava/lang/String;

    return-object p0
.end method

.method public fM()Lcom/google/android/gms/internal/hv;
    .locals 6

    new-instance v1, Lcom/google/android/gms/internal/hv;

    iget-object v2, p0, Lcom/google/android/gms/internal/hv$a;->DS:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/hv$a;->DT:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/hv$a;->DU:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/google/android/gms/internal/hv$a;->DR:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hv$a;->DR:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/internal/hv$a;->DR:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/hz;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/hz;

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/hv;-><init>(Ljava/lang/String;ZLandroid/accounts/Account;[Lcom/google/android/gms/internal/hz;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
