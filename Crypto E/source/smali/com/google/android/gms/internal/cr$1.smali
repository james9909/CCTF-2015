.class Lcom/google/android/gms/internal/cr$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/internal/hi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qD:Lcom/google/android/gms/internal/hi;

.field final synthetic qE:Lcom/google/android/gms/internal/cr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cr;Lcom/google/android/gms/internal/hi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    iput-object p2, p0, Lcom/google/android/gms/internal/cr$1;->qD:Lcom/google/android/gms/internal/hi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    iget-object v1, p0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    iget-object v2, p0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    invoke-static {v2}, Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/internal/cr;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    invoke-static {v3}, Lcom/google/android/gms/internal/cr;->b(Lcom/google/android/gms/internal/cr;)Lcom/google/android/gms/internal/hg;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/cr;->a(Landroid/content/Context;Lcom/google/android/gms/internal/hg;)Lcom/google/android/gms/internal/ah;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/internal/cr;Lcom/google/android/gms/internal/ah;)Lcom/google/android/gms/internal/ah;

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    invoke-static {v0}, Lcom/google/android/gms/internal/cr;->c(Lcom/google/android/gms/internal/cr;)Lcom/google/android/gms/internal/ah;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/cr$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cr$1$1;-><init>(Lcom/google/android/gms/internal/cr$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ah;->a(Lcom/google/android/gms/internal/ah$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    invoke-static {v0}, Lcom/google/android/gms/internal/cr;->c(Lcom/google/android/gms/internal/cr;)Lcom/google/android/gms/internal/ah;

    move-result-object v0

    const-string v1, "/jsLoaded"

    new-instance v2, Lcom/google/android/gms/internal/cr$1$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/cr$1$2;-><init>(Lcom/google/android/gms/internal/cr$1;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ah;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    invoke-static {v0}, Lcom/google/android/gms/internal/cr;->c(Lcom/google/android/gms/internal/cr;)Lcom/google/android/gms/internal/ah;

    move-result-object v0

    const-string v1, "/requestReload"

    new-instance v2, Lcom/google/android/gms/internal/cr$1$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/cr$1$3;-><init>(Lcom/google/android/gms/internal/cr$1;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ah;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ch;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    invoke-static {v0}, Lcom/google/android/gms/internal/cr;->e(Lcom/google/android/gms/internal/cr;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    invoke-static {v0}, Lcom/google/android/gms/internal/cr;->c(Lcom/google/android/gms/internal/cr;)Lcom/google/android/gms/internal/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    invoke-static {v1}, Lcom/google/android/gms/internal/cr;->e(Lcom/google/android/gms/internal/cr;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ah;->f(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    iget-object v1, p0, Lcom/google/android/gms/internal/cr$1;->qD:Lcom/google/android/gms/internal/hi;

    sget v2, Lcom/google/android/gms/internal/cr$a;->qG:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/internal/cr;Lcom/google/android/gms/internal/hi;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    invoke-static {v0}, Lcom/google/android/gms/internal/cr;->c(Lcom/google/android/gms/internal/cr;)Lcom/google/android/gms/internal/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cr$1;->qE:Lcom/google/android/gms/internal/cr;

    invoke-static {v1}, Lcom/google/android/gms/internal/cr;->e(Lcom/google/android/gms/internal/cr;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ah;->g(Ljava/lang/String;)V

    goto :goto_0
.end method
