.class Lcom/google/android/gms/internal/gp$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gp;->a(Ljava/lang/Thread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xh:Ljava/lang/Thread;

.field final synthetic xi:Lcom/google/android/gms/internal/gp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gp;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gp$1;->xi:Lcom/google/android/gms/internal/gp;

    iput-object p2, p0, Lcom/google/android/gms/internal/gp$1;->xh:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gp$1;->xi:Lcom/google/android/gms/internal/gp;

    invoke-static {v0}, Lcom/google/android/gms/internal/gp;->a(Lcom/google/android/gms/internal/gp;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gp$1;->xh:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/google/android/gms/internal/gp$1;->xi:Lcom/google/android/gms/internal/gp;

    invoke-static {v2}, Lcom/google/android/gms/internal/gp;->b(Lcom/google/android/gms/internal/gp;)Lcom/google/android/gms/internal/hg;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/fq;->a(Landroid/content/Context;Ljava/lang/Thread;Lcom/google/android/gms/internal/hg;)Lcom/google/android/gms/internal/fq;

    return-void
.end method
