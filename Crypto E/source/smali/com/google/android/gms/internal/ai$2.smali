.class Lcom/google/android/gms/internal/ai$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ah$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ai;->a(Landroid/content/Context;Lcom/google/android/gms/internal/hg;Lcom/google/android/gms/internal/gz;)Lcom/google/android/gms/internal/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nq:Lcom/google/android/gms/internal/gz;

.field final synthetic ns:Lcom/google/android/gms/internal/ai;

.field final synthetic nt:Lcom/google/android/gms/internal/ah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/gz;Lcom/google/android/gms/internal/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ai$2;->ns:Lcom/google/android/gms/internal/ai;

    iput-object p2, p0, Lcom/google/android/gms/internal/ai$2;->nq:Lcom/google/android/gms/internal/gz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ai$2;->nt:Lcom/google/android/gms/internal/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aZ()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ai$2;->nq:Lcom/google/android/gms/internal/gz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ai$2;->nt:Lcom/google/android/gms/internal/ah;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gz;->b(Ljava/lang/Object;)V

    return-void
.end method
