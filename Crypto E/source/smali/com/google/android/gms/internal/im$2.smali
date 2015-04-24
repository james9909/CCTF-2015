.class Lcom/google/android/gms/internal/im$2;
.super Lcom/google/android/gms/internal/im$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/im;->loadTranslatedUris(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/im$a",
        "<",
        "Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResults;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic EE:Ljava/util/List;

.field final synthetic EF:Lcom/google/android/gms/internal/im;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/im;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/im$2;->EF:Lcom/google/android/gms/internal/im;

    iput-object p3, p0, Lcom/google/android/gms/internal/im$2;->EE:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/im$a;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/in;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/im$2$1;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gms/internal/im$2$1;-><init>(Lcom/google/android/gms/internal/im$2;Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/im$2;->EE:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/in;->a(Lcom/google/android/gms/internal/io;Ljava/util/List;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/im$2;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResults;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResults;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/im$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/im$c;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V

    return-object v0
.end method
