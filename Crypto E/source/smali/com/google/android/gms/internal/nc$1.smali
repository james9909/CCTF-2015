.class Lcom/google/android/gms/internal/nc$1;
.super Lcom/google/android/gms/internal/mn$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nc;->insertData(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic act:Lcom/google/android/gms/fitness/data/DataSet;

.field final synthetic acu:Lcom/google/android/gms/internal/nc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nc;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nc$1;->acu:Lcom/google/android/gms/internal/nc;

    iput-object p3, p0, Lcom/google/android/gms/internal/nc$1;->act:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/mn$c;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/mn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nc$1;->a(Lcom/google/android/gms/internal/mn;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/mn;)V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/mn$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mn$b;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/mn;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/mn;->lV()Lcom/google/android/gms/internal/ms;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/fitness/request/e$a;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/request/e$a;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/nc$1;->act:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/request/e$a;->b(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/request/e$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/request/e$a;->md()Lcom/google/android/gms/fitness/request/e;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ms;->a(Lcom/google/android/gms/fitness/request/e;Lcom/google/android/gms/internal/mw;Ljava/lang/String;)V

    return-void
.end method
