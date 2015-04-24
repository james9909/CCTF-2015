.class Lcom/google/android/gms/internal/hj$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public final xV:Lcom/google/android/gms/internal/hi$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hi$b",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final xW:Lcom/google/android/gms/internal/hi$a;

.field final synthetic xX:Lcom/google/android/gms/internal/hj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hj;Lcom/google/android/gms/internal/hi$b;Lcom/google/android/gms/internal/hi$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hi$b",
            "<TT;>;",
            "Lcom/google/android/gms/internal/hi$a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/hj$a;->xX:Lcom/google/android/gms/internal/hj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/hj$a;->xV:Lcom/google/android/gms/internal/hi$b;

    iput-object p3, p0, Lcom/google/android/gms/internal/hj$a;->xW:Lcom/google/android/gms/internal/hi$a;

    return-void
.end method
