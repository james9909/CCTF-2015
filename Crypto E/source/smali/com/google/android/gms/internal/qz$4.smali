.class Lcom/google/android/gms/internal/qz$4;
.super Lcom/google/android/gms/wallet/Wallet$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/qz;->changeMaskedWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aDK:Lcom/google/android/gms/internal/qz;

.field final synthetic aDN:Ljava/lang/String;

.field final synthetic aDO:Ljava/lang/String;

.field final synthetic amV:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/qz;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/qz$4;->aDK:Lcom/google/android/gms/internal/qz;

    iput-object p3, p0, Lcom/google/android/gms/internal/qz$4;->aDN:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/qz$4;->aDO:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/qz$4;->amV:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/Wallet$b;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ra;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/qz$4;->a(Lcom/google/android/gms/internal/ra;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ra;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/qz$4;->aDN:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/qz$4;->aDO:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/qz$4;->amV:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ra;->e(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->RQ:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/qz$4;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
