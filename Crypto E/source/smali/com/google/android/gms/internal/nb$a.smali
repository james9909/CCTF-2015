.class Lcom/google/android/gms/internal/nb$a;
.super Lcom/google/android/gms/internal/mr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/nb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final Fn:Lcom/google/android/gms/common/api/BaseImplementation$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/fitness/result/DataTypeResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/fitness/result/DataTypeResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/mr$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nb$a;->Fn:Lcom/google/android/gms/common/api/BaseImplementation$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/internal/nb$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nb$a;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/fitness/result/DataTypeResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nb$a;->Fn:Lcom/google/android/gms/common/api/BaseImplementation$b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/BaseImplementation$b;->e(Ljava/lang/Object;)V

    return-void
.end method
