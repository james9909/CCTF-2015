.class Lcom/google/android/gms/internal/im$2$1;
.super Lcom/google/android/gms/internal/ip;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/im$2;->a(Lcom/google/android/gms/internal/in;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ip",
        "<",
        "Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResults;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic EH:Lcom/google/android/gms/internal/im$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/im$2;Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/im$2$1;->EH:Lcom/google/android/gms/internal/im$2;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ip;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/im$2$1;->EM:Lcom/google/android/gms/common/api/BaseImplementation$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/im$2$1;->EH:Lcom/google/android/gms/internal/im$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/im$2;->EF:Lcom/google/android/gms/internal/im;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/im;->a(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResults;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/BaseImplementation$b;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/im$2$1;->EM:Lcom/google/android/gms/common/api/BaseImplementation$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/im$2$1;->EH:Lcom/google/android/gms/internal/im$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/im$2;->EF:Lcom/google/android/gms/internal/im;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->RS:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/internal/im;->a(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResults;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/BaseImplementation$b;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method
