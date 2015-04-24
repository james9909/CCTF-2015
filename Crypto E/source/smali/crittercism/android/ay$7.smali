.class final Lcrittercism/android/ay$7;
.super Lcrittercism/android/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:J

.field final synthetic c:Lcrittercism/android/ay;


# direct methods
.method constructor <init>(Lcrittercism/android/ay;Ljava/lang/Throwable;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcrittercism/android/ay$7;->c:Lcrittercism/android/ay;

    iput-object p2, p0, Lcrittercism/android/ay$7;->a:Ljava/lang/Throwable;

    iput-wide p3, p0, Lcrittercism/android/ay$7;->b:J

    invoke-direct {p0}, Lcrittercism/android/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 450
    iget-object v0, p0, Lcrittercism/android/ay$7;->c:Lcrittercism/android/ay;

    iget-object v0, v0, Lcrittercism/android/ay;->g:Lcrittercism/android/df;

    invoke-virtual {v0}, Lcrittercism/android/df;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    new-instance v0, Lcrittercism/android/bd;

    iget-object v1, p0, Lcrittercism/android/ay$7;->a:Ljava/lang/Throwable;

    iget-wide v2, p0, Lcrittercism/android/ay$7;->b:J

    invoke-direct {v0, v1, v2, v3}, Lcrittercism/android/bd;-><init>(Ljava/lang/Throwable;J)V

    .line 453
    const-string v1, "current_session"

    iget-object v2, p0, Lcrittercism/android/ay$7;->c:Lcrittercism/android/ay;

    iget-object v2, v2, Lcrittercism/android/ay;->l:Lcrittercism/android/bj;

    invoke-virtual {v0, v1, v2}, Lcrittercism/android/bd;->a(Ljava/lang/String;Lcrittercism/android/bj;)V

    .line 455
    const-string v1, "he"

    iput-object v1, v0, Lcrittercism/android/bd;->c:Ljava/lang/String;

    .line 459
    iget-object v1, p0, Lcrittercism/android/ay$7;->c:Lcrittercism/android/ay;

    iget-object v1, v1, Lcrittercism/android/ay;->i:Lcrittercism/android/bj;

    invoke-virtual {v1, v0}, Lcrittercism/android/bj;->a(Lcrittercism/android/bv;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcrittercism/android/ay$7;->c:Lcrittercism/android/ay;

    iget-object v0, v0, Lcrittercism/android/ay;->n:Lcrittercism/android/cf;

    invoke-virtual {v0}, Lcrittercism/android/cf;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Lcrittercism/android/cn;

    iget-object v1, p0, Lcrittercism/android/ay$7;->c:Lcrittercism/android/ay;

    iget-object v1, v1, Lcrittercism/android/ay;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcrittercism/android/cn;-><init>(Landroid/content/Context;)V

    .line 463
    iget-object v1, p0, Lcrittercism/android/ay$7;->c:Lcrittercism/android/ay;

    iget-object v1, v1, Lcrittercism/android/ay;->i:Lcrittercism/android/bj;

    new-instance v2, Lcrittercism/android/ci$a;

    invoke-direct {v2}, Lcrittercism/android/ci$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ay$7;->c:Lcrittercism/android/ay;

    iget-object v3, v3, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-virtual {v3}, Lcrittercism/android/ba;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcrittercism/android/ay;->a:Lcrittercism/android/ay;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcrittercism/android/cn;->a(Lcrittercism/android/bj;Lcrittercism/android/ch;Ljava/lang/String;Lcrittercism/android/au;)V

    .line 469
    iget-object v1, p0, Lcrittercism/android/ay$7;->c:Lcrittercism/android/ay;

    iget-object v1, v1, Lcrittercism/android/ay;->o:Lcrittercism/android/co;

    iget-object v2, p0, Lcrittercism/android/ay$7;->c:Lcrittercism/android/ay;

    iget-object v2, v2, Lcrittercism/android/ay;->q:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcrittercism/android/cn;->a(Lcrittercism/android/co;Ljava/util/concurrent/ExecutorService;)V

    .line 470
    iget-object v0, p0, Lcrittercism/android/ay$7;->c:Lcrittercism/android/ay;

    iget-object v0, v0, Lcrittercism/android/ay;->n:Lcrittercism/android/cf;

    invoke-virtual {v0}, Lcrittercism/android/cf;->b()V

    goto :goto_0
.end method
