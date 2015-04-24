.class public final Lcrittercism/android/ay$1;
.super Lcrittercism/android/cq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/ay;


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 347
    iget-object v0, p0, Lcrittercism/android/ay$1;->a:Lcrittercism/android/ay;

    iget-object v0, v0, Lcrittercism/android/ay;->g:Lcrittercism/android/df;

    invoke-virtual {v0}, Lcrittercism/android/df;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 349
    :cond_0
    new-instance v0, Lcrittercism/android/cn;

    iget-object v1, p0, Lcrittercism/android/ay$1;->a:Lcrittercism/android/ay;

    iget-object v1, v1, Lcrittercism/android/ay;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcrittercism/android/cn;-><init>(Landroid/content/Context;)V

    .line 350
    iget-object v1, p0, Lcrittercism/android/ay$1;->a:Lcrittercism/android/ay;

    iget-object v1, v1, Lcrittercism/android/ay;->h:Lcrittercism/android/bj;

    new-instance v2, Lcrittercism/android/cd$a;

    invoke-direct {v2}, Lcrittercism/android/cd$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ay$1;->a:Lcrittercism/android/ay;

    iget-object v3, v3, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-virtual {v3}, Lcrittercism/android/ba;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcrittercism/android/ay;->a:Lcrittercism/android/ay;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcrittercism/android/cn;->a(Lcrittercism/android/bj;Lcrittercism/android/ch;Ljava/lang/String;Lcrittercism/android/au;)V

    .line 356
    iget-object v1, p0, Lcrittercism/android/ay$1;->a:Lcrittercism/android/ay;

    iget-object v1, v1, Lcrittercism/android/ay;->i:Lcrittercism/android/bj;

    new-instance v2, Lcrittercism/android/ci$a;

    invoke-direct {v2}, Lcrittercism/android/ci$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ay$1;->a:Lcrittercism/android/ay;

    iget-object v3, v3, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-virtual {v3}, Lcrittercism/android/ba;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcrittercism/android/ay;->a:Lcrittercism/android/ay;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcrittercism/android/cn;->a(Lcrittercism/android/bj;Lcrittercism/android/ch;Ljava/lang/String;Lcrittercism/android/au;)V

    .line 362
    iget-object v1, p0, Lcrittercism/android/ay$1;->a:Lcrittercism/android/ay;

    iget-object v1, v1, Lcrittercism/android/ay;->j:Lcrittercism/android/bj;

    new-instance v2, Lcrittercism/android/ci$a;

    invoke-direct {v2}, Lcrittercism/android/ci$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ay$1;->a:Lcrittercism/android/ay;

    iget-object v3, v3, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-virtual {v3}, Lcrittercism/android/ba;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcrittercism/android/ay;->a:Lcrittercism/android/ay;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcrittercism/android/cn;->a(Lcrittercism/android/bj;Lcrittercism/android/ch;Ljava/lang/String;Lcrittercism/android/au;)V

    .line 368
    iget-object v1, p0, Lcrittercism/android/ay$1;->a:Lcrittercism/android/ay;

    iget-object v1, v1, Lcrittercism/android/ay;->k:Lcrittercism/android/bj;

    new-instance v2, Lcrittercism/android/ci$a;

    invoke-direct {v2}, Lcrittercism/android/ci$a;-><init>()V

    iget-object v3, p0, Lcrittercism/android/ay$1;->a:Lcrittercism/android/ay;

    iget-object v3, v3, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-virtual {v3}, Lcrittercism/android/ba;->k()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcrittercism/android/ay;->a:Lcrittercism/android/ay;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcrittercism/android/cn;->a(Lcrittercism/android/bj;Lcrittercism/android/ch;Ljava/lang/String;Lcrittercism/android/au;)V

    .line 374
    iget-object v1, p0, Lcrittercism/android/ay$1;->a:Lcrittercism/android/ay;

    iget-object v1, v1, Lcrittercism/android/ay;->o:Lcrittercism/android/co;

    iget-object v2, p0, Lcrittercism/android/ay$1;->a:Lcrittercism/android/ay;

    iget-object v2, v2, Lcrittercism/android/ay;->q:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcrittercism/android/cn;->a(Lcrittercism/android/co;Ljava/util/concurrent/ExecutorService;)V

    goto :goto_0
.end method
