.class Lcom/google/android/gms/internal/pe$1;
.super Lcom/google/android/gms/internal/pe$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/pe;->loadPanoramaInfo(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aub:Landroid/net/Uri;

.field final synthetic auc:Lcom/google/android/gms/internal/pe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pe;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/pe$1;->auc:Lcom/google/android/gms/internal/pe;

    iput-object p3, p0, Lcom/google/android/gms/internal/pe$1;->aub:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/pe$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/google/android/gms/internal/pd;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/pe$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/pe$b;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/pe$1;->aub:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/google/android/gms/internal/pd;->a(Lcom/google/android/gms/internal/pc;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    return-void
.end method
