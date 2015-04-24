.class Lcom/google/android/gms/internal/im$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResults;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final EI:Lcom/google/android/gms/common/api/Status;

.field private final EL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/im$c;->EL:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/im$c;->EI:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/im$c;->EL:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResult;

    return-object v0
.end method

.method public getAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/AppLinkingApi$TranslatedUriResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/im$c;->EL:Ljava/util/List;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/im$c;->EL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/im$c;->EI:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
