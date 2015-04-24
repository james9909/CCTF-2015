.class Lcom/google/android/gms/internal/ai$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ai;->a(Landroid/content/Context;Lcom/google/android/gms/internal/hg;Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic no:Landroid/content/Context;

.field final synthetic np:Lcom/google/android/gms/internal/hg;

.field final synthetic nq:Lcom/google/android/gms/internal/gz;

.field final synthetic nr:Ljava/lang/String;

.field final synthetic ns:Lcom/google/android/gms/internal/ai;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ai;Landroid/content/Context;Lcom/google/android/gms/internal/hg;Lcom/google/android/gms/internal/gz;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ai$1;->ns:Lcom/google/android/gms/internal/ai;

    iput-object p2, p0, Lcom/google/android/gms/internal/ai$1;->no:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ai$1;->np:Lcom/google/android/gms/internal/hg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ai$1;->nq:Lcom/google/android/gms/internal/gz;

    iput-object p5, p0, Lcom/google/android/gms/internal/ai$1;->nr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ai$1;->ns:Lcom/google/android/gms/internal/ai;

    iget-object v1, p0, Lcom/google/android/gms/internal/ai$1;->no:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ai$1;->np:Lcom/google/android/gms/internal/hg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ai$1;->nq:Lcom/google/android/gms/internal/gz;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ai;->a(Landroid/content/Context;Lcom/google/android/gms/internal/hg;Lcom/google/android/gms/internal/gz;)Lcom/google/android/gms/internal/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ai$1;->nr:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ah;->g(Ljava/lang/String;)V

    return-void
.end method
