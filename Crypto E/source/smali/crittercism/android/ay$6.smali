.class final Lcrittercism/android/ay$6;
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
    .line 402
    iput-object p1, p0, Lcrittercism/android/ay$6;->c:Lcrittercism/android/ay;

    iput-object p2, p0, Lcrittercism/android/ay$6;->a:Ljava/lang/Throwable;

    iput-wide p3, p0, Lcrittercism/android/ay$6;->b:J

    invoke-direct {p0}, Lcrittercism/android/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 405
    iget-object v0, p0, Lcrittercism/android/ay$6;->c:Lcrittercism/android/ay;

    iget-object v0, v0, Lcrittercism/android/ay;->g:Lcrittercism/android/df;

    invoke-virtual {v0}, Lcrittercism/android/df;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcrittercism/android/ay$6;->c:Lcrittercism/android/ay;

    iget-object v1, v0, Lcrittercism/android/ay;->n:Lcrittercism/android/cf;

    monitor-enter v1

    .line 410
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/ay$6;->c:Lcrittercism/android/ay;

    iget v0, v0, Lcrittercism/android/ay;->A:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 411
    new-instance v0, Lcrittercism/android/bd;

    iget-object v2, p0, Lcrittercism/android/ay$6;->a:Ljava/lang/Throwable;

    iget-wide v4, p0, Lcrittercism/android/ay$6;->b:J

    invoke-direct {v0, v2, v4, v5}, Lcrittercism/android/bd;-><init>(Ljava/lang/Throwable;J)V

    .line 412
    const-string v2, "current_session"

    iget-object v3, p0, Lcrittercism/android/ay$6;->c:Lcrittercism/android/ay;

    iget-object v3, v3, Lcrittercism/android/ay;->l:Lcrittercism/android/bj;

    invoke-virtual {v0, v2, v3}, Lcrittercism/android/bd;->a(Ljava/lang/String;Lcrittercism/android/bj;)V

    .line 418
    iget-object v2, p0, Lcrittercism/android/ay$6;->c:Lcrittercism/android/ay;

    iget-object v2, v2, Lcrittercism/android/ay;->m:Lcrittercism/android/bj;

    invoke-virtual {v0, v2}, Lcrittercism/android/bd;->a(Lcrittercism/android/bj;)V

    .line 419
    const-string v2, "he"

    iput-object v2, v0, Lcrittercism/android/bd;->c:Ljava/lang/String;

    .line 421
    iget-object v2, p0, Lcrittercism/android/ay$6;->c:Lcrittercism/android/ay;

    iget-object v2, v2, Lcrittercism/android/ay;->n:Lcrittercism/android/cf;

    invoke-virtual {v2}, Lcrittercism/android/cf;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lcrittercism/android/bd;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 424
    new-instance v2, Lcrittercism/android/ce;

    sget-object v3, Lcrittercism/android/ay;->a:Lcrittercism/android/ay;

    invoke-direct {v2, v3}, Lcrittercism/android/ce;-><init>(Lcrittercism/android/au;)V

    sget-object v3, Lcrittercism/android/bi;->b:Lcrittercism/android/bi;

    invoke-virtual {v3}, Lcrittercism/android/bi;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcrittercism/android/ce;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lcrittercism/android/ce;

    move-result-object v0

    .line 428
    new-instance v2, Lcrittercism/android/cs;

    new-instance v3, Lcrittercism/android/ck;

    new-instance v4, Lcrittercism/android/cj;

    iget-object v5, p0, Lcrittercism/android/ay$6;->c:Lcrittercism/android/ay;

    iget-object v5, v5, Lcrittercism/android/ay;->w:Lcrittercism/android/ba;

    invoke-virtual {v5}, Lcrittercism/android/ba;->k()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/android_v2/handle_exceptions"

    invoke-direct {v4, v5, v6}, Lcrittercism/android/cj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcrittercism/android/cj;->a()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v3, v4}, Lcrittercism/android/ck;-><init>(Ljava/net/URL;)V

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcrittercism/android/cs;-><init>(Lcrittercism/android/ce;Lcrittercism/android/ck;Lcrittercism/android/cg;)V

    invoke-virtual {v2}, Lcrittercism/android/cs;->run()V

    .line 432
    iget-object v0, p0, Lcrittercism/android/ay$6;->c:Lcrittercism/android/ay;

    iget v2, v0, Lcrittercism/android/ay;->A:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcrittercism/android/ay;->A:I

    .line 433
    iget-object v0, p0, Lcrittercism/android/ay$6;->c:Lcrittercism/android/ay;

    iget-object v0, v0, Lcrittercism/android/ay;->n:Lcrittercism/android/cf;

    invoke-virtual {v0}, Lcrittercism/android/cf;->b()V

    .line 436
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
