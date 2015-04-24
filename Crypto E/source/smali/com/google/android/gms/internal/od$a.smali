.class final Lcom/google/android/gms/internal/od$a;
.super Lcom/google/android/gms/common/internal/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/od;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/h",
        "<",
        "Lcom/google/android/gms/internal/ob;",
        ">.b<",
        "Lcom/google/android/gms/location/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final Pu:I

.field private final aop:[Ljava/lang/String;

.field final synthetic aoq:Lcom/google/android/gms/internal/od;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/od;Lcom/google/android/gms/location/b$a;I[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/od$a;->aoq:Lcom/google/android/gms/internal/od;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/h$b;-><init>(Lcom/google/android/gms/common/internal/h;Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/google/android/gms/location/LocationStatusCodes;->fI(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/od$a;->Pu:I

    iput-object p4, p0, Lcom/google/android/gms/internal/od$a;->aop:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/location/b$a;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/od$a;->Pu:I

    iget-object v1, p0, Lcom/google/android/gms/internal/od$a;->aop:[Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/b$a;->a(I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected synthetic j(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/location/b$a;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/od$a;->a(Lcom/google/android/gms/location/b$a;)V

    return-void
.end method

.method protected jH()V
    .locals 0

    return-void
.end method
