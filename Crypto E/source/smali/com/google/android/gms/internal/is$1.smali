.class Lcom/google/android/gms/internal/is$1;
.super Lcom/google/android/gms/internal/is$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/is;->a(Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/internal/ij;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/is$c",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic EN:Ljava/lang/String;

.field final synthetic EO:[Lcom/google/android/gms/internal/ij;

.field final synthetic EP:Lcom/google/android/gms/internal/is;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/is;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[Lcom/google/android/gms/internal/ij;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/is$1;->EP:Lcom/google/android/gms/internal/is;

    iput-object p3, p0, Lcom/google/android/gms/internal/is$1;->EN:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/is$1;->EO:[Lcom/google/android/gms/internal/ij;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/is$c;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/in;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/is$d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/is$d;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/is$1;->EN:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/is$1;->EO:[Lcom/google/android/gms/internal/ij;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/in;->a(Lcom/google/android/gms/internal/io;Ljava/lang/String;[Lcom/google/android/gms/internal/ij;)V

    return-void
.end method
