.class public final Lcrittercism/android/co;
.super Lcrittercism/android/cq;


# instance fields
.field private a:Landroid/os/ConditionVariable;

.field private b:Lcrittercism/android/ba;

.field private c:Landroid/content/Context;

.field private d:Lcrittercism/android/av;

.field private e:Lcrittercism/android/aw;

.field private f:Lcrittercism/android/au;

.field private g:Ljava/util/List;

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcrittercism/android/ba;Landroid/content/Context;Lcrittercism/android/av;Lcrittercism/android/aw;Lcrittercism/android/au;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcrittercism/android/cq;-><init>()V

    .line 39
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcrittercism/android/co;->a:Landroid/os/ConditionVariable;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/co;->g:Ljava/util/List;

    .line 46
    iput-boolean v1, p0, Lcrittercism/android/co;->h:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/co;->j:Ljava/lang/Exception;

    .line 57
    iput-object p1, p0, Lcrittercism/android/co;->b:Lcrittercism/android/ba;

    .line 64
    iput-object p2, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    .line 65
    iput-object p3, p0, Lcrittercism/android/co;->d:Lcrittercism/android/av;

    .line 66
    iput-object p4, p0, Lcrittercism/android/co;->e:Lcrittercism/android/aw;

    .line 67
    iput-object p5, p0, Lcrittercism/android/co;->f:Lcrittercism/android/au;

    .line 68
    iput-boolean v1, p0, Lcrittercism/android/co;->i:Z

    .line 69
    return-void
.end method

.method private declared-synchronized c()V
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcrittercism/android/co;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Z
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcrittercism/android/co;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()Ljava/io/File;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcrittercism/android/co;->b:Lcrittercism/android/ba;

    invoke-virtual {v3}, Lcrittercism/android/ba;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 96
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_0

    .line 98
    array-length v3, v2

    if-ne v3, v4, :cond_2

    .line 99
    aget-object v1, v2, v1

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 102
    :cond_2
    array-length v3, v2

    if-le v3, v4, :cond_0

    .line 103
    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 104
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 105
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private f()V
    .locals 10

    .prologue
    .line 224
    invoke-static {}, Lcrittercism/android/ay;->t()Lcrittercism/android/ay;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ay;->u:Z

    if-eqz v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-boolean v0, p0, Lcrittercism/android/co;->i:Z

    .line 229
    iget-object v0, p0, Lcrittercism/android/co;->d:Lcrittercism/android/av;

    invoke-interface {v0}, Lcrittercism/android/av;->j()Lcrittercism/android/bj;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcrittercism/android/co;->d:Lcrittercism/android/av;

    invoke-interface {v1}, Lcrittercism/android/av;->k()Lcrittercism/android/bj;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcrittercism/android/co;->d:Lcrittercism/android/av;

    invoke-interface {v2}, Lcrittercism/android/av;->l()Lcrittercism/android/bj;

    move-result-object v2

    .line 232
    iget-object v3, p0, Lcrittercism/android/co;->d:Lcrittercism/android/av;

    invoke-interface {v3}, Lcrittercism/android/av;->m()Lcrittercism/android/bj;

    move-result-object v3

    .line 233
    iget-object v4, p0, Lcrittercism/android/co;->d:Lcrittercism/android/av;

    invoke-interface {v4}, Lcrittercism/android/av;->n()Lcrittercism/android/bj;

    move-result-object v4

    .line 234
    iget-object v5, p0, Lcrittercism/android/co;->d:Lcrittercism/android/av;

    invoke-interface {v5}, Lcrittercism/android/av;->r()Lcrittercism/android/de;

    move-result-object v5

    .line 236
    iget-object v6, p0, Lcrittercism/android/co;->b:Lcrittercism/android/ba;

    invoke-virtual {v6}, Lcrittercism/android/ba;->k()Ljava/lang/String;

    .line 242
    new-instance v6, Lcrittercism/android/be;

    invoke-direct {v6}, Lcrittercism/android/be;-><init>()V

    invoke-virtual {v0, v6}, Lcrittercism/android/bj;->a(Lcrittercism/android/bv;)Z

    .line 245
    iget-object v6, p0, Lcrittercism/android/co;->b:Lcrittercism/android/ba;

    invoke-virtual {v6}, Lcrittercism/android/ba;->e()Z

    move-result v6

    if-nez v6, :cond_2

    .line 246
    new-instance v6, Lcrittercism/android/cn;

    iget-object v7, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcrittercism/android/cn;-><init>(Landroid/content/Context;)V

    .line 247
    new-instance v7, Lcrittercism/android/cd$a;

    invoke-direct {v7}, Lcrittercism/android/cd$a;-><init>()V

    iget-object v8, p0, Lcrittercism/android/co;->b:Lcrittercism/android/ba;

    invoke-virtual {v8}, Lcrittercism/android/ba;->k()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcrittercism/android/co;->f:Lcrittercism/android/au;

    invoke-virtual {v6, v0, v7, v8, v9}, Lcrittercism/android/cn;->a(Lcrittercism/android/bj;Lcrittercism/android/ch;Ljava/lang/String;Lcrittercism/android/au;)V

    .line 253
    new-instance v0, Lcrittercism/android/ci$a;

    invoke-direct {v0}, Lcrittercism/android/ci$a;-><init>()V

    iget-object v7, p0, Lcrittercism/android/co;->b:Lcrittercism/android/ba;

    invoke-virtual {v7}, Lcrittercism/android/ba;->k()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcrittercism/android/co;->f:Lcrittercism/android/au;

    invoke-virtual {v6, v1, v0, v7, v8}, Lcrittercism/android/cn;->a(Lcrittercism/android/bj;Lcrittercism/android/ch;Ljava/lang/String;Lcrittercism/android/au;)V

    .line 259
    new-instance v0, Lcrittercism/android/ci$a;

    invoke-direct {v0}, Lcrittercism/android/ci$a;-><init>()V

    iget-object v1, p0, Lcrittercism/android/co;->b:Lcrittercism/android/ba;

    invoke-virtual {v1}, Lcrittercism/android/ba;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcrittercism/android/co;->f:Lcrittercism/android/au;

    invoke-virtual {v6, v3, v0, v1, v7}, Lcrittercism/android/cn;->a(Lcrittercism/android/bj;Lcrittercism/android/ch;Ljava/lang/String;Lcrittercism/android/au;)V

    .line 265
    new-instance v0, Lcrittercism/android/ci$a;

    invoke-direct {v0}, Lcrittercism/android/ci$a;-><init>()V

    iget-object v1, p0, Lcrittercism/android/co;->b:Lcrittercism/android/ba;

    invoke-virtual {v1}, Lcrittercism/android/ba;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcrittercism/android/co;->f:Lcrittercism/android/au;

    invoke-virtual {v6, v4, v0, v1, v3}, Lcrittercism/android/cn;->a(Lcrittercism/android/bj;Lcrittercism/android/ch;Ljava/lang/String;Lcrittercism/android/au;)V

    .line 271
    new-instance v0, Lcrittercism/android/ci$a;

    invoke-direct {v0}, Lcrittercism/android/ci$a;-><init>()V

    iget-object v1, p0, Lcrittercism/android/co;->b:Lcrittercism/android/ba;

    invoke-virtual {v1}, Lcrittercism/android/ba;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcrittercism/android/az;

    iget-object v4, p0, Lcrittercism/android/co;->f:Lcrittercism/android/au;

    iget-object v7, p0, Lcrittercism/android/co;->b:Lcrittercism/android/ba;

    invoke-direct {v3, v4, v7}, Lcrittercism/android/az;-><init>(Lcrittercism/android/au;Lcrittercism/android/ba;)V

    invoke-virtual {v6, v2, v0, v1, v3}, Lcrittercism/android/cn;->a(Lcrittercism/android/bj;Lcrittercism/android/ch;Ljava/lang/String;Lcrittercism/android/au;)V

    .line 277
    invoke-virtual {v6}, Lcrittercism/android/cn;->a()V

    .line 280
    :cond_2
    invoke-virtual {v5}, Lcrittercism/android/de;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {}, Lcrittercism/android/ay;->t()Lcrittercism/android/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/ay;->w()V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 305
    :try_start_0
    invoke-static {}, Lcrittercism/android/dg;->b()V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/com.crittercism/pending"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcrittercism/android/dg;->b()V

    .line 310
    :goto_0
    invoke-static {}, Lcrittercism/android/ay;->t()Lcrittercism/android/ay;

    move-result-object v0

    .line 312
    iget-object v2, v0, Lcrittercism/android/ay;->y:Lcrittercism/android/da;

    invoke-virtual {v2}, Lcrittercism/android/da;->a()Ljava/lang/String;

    .line 315
    iget-object v2, p0, Lcrittercism/android/co;->f:Lcrittercism/android/au;

    invoke-interface {v2}, Lcrittercism/android/au;->i()Lcrittercism/android/df;

    move-result-object v2

    .line 316
    iget-object v0, v0, Lcrittercism/android/ay;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 318
    iget-object v0, p0, Lcrittercism/android/co;->e:Lcrittercism/android/aw;

    iget-object v3, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcrittercism/android/df;->a(Lcrittercism/android/aw;)V

    .line 320
    iget-object v0, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    invoke-static {v0}, Lcrittercism/android/cz;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcrittercism/android/cz;->a:Z

    .line 321
    iget-object v0, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcrittercism/android/cz;->a(Landroid/content/Context;Z)V

    .line 323
    invoke-virtual {v2}, Lcrittercism/android/df;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {v2}, Lcrittercism/android/df;->a()Lcrittercism/android/dc;

    move-result-object v0

    iget-object v3, p0, Lcrittercism/android/co;->e:Lcrittercism/android/aw;

    sget-object v4, Lcrittercism/android/cb;->h:Lcrittercism/android/cb;

    invoke-virtual {v4}, Lcrittercism/android/cb;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcrittercism/android/cb;->h:Lcrittercism/android/cb;

    invoke-virtual {v5}, Lcrittercism/android/cb;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcrittercism/android/dc;->a(Lcrittercism/android/aw;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v2}, Lcrittercism/android/df;->b()Lcrittercism/android/dd;

    move-result-object v0

    iget-object v3, p0, Lcrittercism/android/co;->e:Lcrittercism/android/aw;

    sget-object v4, Lcrittercism/android/cb;->k:Lcrittercism/android/cb;

    invoke-virtual {v4}, Lcrittercism/android/cb;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcrittercism/android/cb;->k:Lcrittercism/android/cb;

    invoke-virtual {v5}, Lcrittercism/android/cb;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcrittercism/android/dd;->a(Lcrittercism/android/aw;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_0
    invoke-virtual {v2}, Lcrittercism/android/df;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcrittercism/android/co;->i:Z

    .line 335
    invoke-direct {p0}, Lcrittercism/android/co;->e()Ljava/io/File;

    move-result-object v2

    .line 337
    iget-boolean v0, p0, Lcrittercism/android/co;->i:Z

    if-eqz v0, :cond_4

    .line 338
    iget-boolean v0, p0, Lcrittercism/android/co;->i:Z

    invoke-static {}, Lcrittercism/android/ay;->t()Lcrittercism/android/ay;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ay;->u:Z

    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    :cond_1
    new-instance v0, Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    sget-object v3, Lcrittercism/android/bi;->a:Lcrittercism/android/bi;

    invoke-direct {v0, v1, v3}, Lcrittercism/android/bj;-><init>(Landroid/content/Context;Lcrittercism/android/bi;)V

    invoke-virtual {v0}, Lcrittercism/android/bj;->a()V

    new-instance v0, Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    sget-object v3, Lcrittercism/android/bi;->b:Lcrittercism/android/bi;

    invoke-direct {v0, v1, v3}, Lcrittercism/android/bj;-><init>(Landroid/content/Context;Lcrittercism/android/bi;)V

    invoke-virtual {v0}, Lcrittercism/android/bj;->a()V

    new-instance v0, Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    sget-object v3, Lcrittercism/android/bi;->c:Lcrittercism/android/bi;

    invoke-direct {v0, v1, v3}, Lcrittercism/android/bj;-><init>(Landroid/content/Context;Lcrittercism/android/bi;)V

    invoke-virtual {v0}, Lcrittercism/android/bj;->a()V

    new-instance v0, Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    sget-object v3, Lcrittercism/android/bi;->d:Lcrittercism/android/bi;

    invoke-direct {v0, v1, v3}, Lcrittercism/android/bj;-><init>(Landroid/content/Context;Lcrittercism/android/bi;)V

    invoke-virtual {v0}, Lcrittercism/android/bj;->a()V

    new-instance v0, Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    sget-object v3, Lcrittercism/android/bi;->e:Lcrittercism/android/bi;

    invoke-direct {v0, v1, v3}, Lcrittercism/android/bj;-><init>(Landroid/content/Context;Lcrittercism/android/bi;)V

    invoke-virtual {v0}, Lcrittercism/android/bj;->a()V

    new-instance v0, Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    sget-object v3, Lcrittercism/android/bi;->f:Lcrittercism/android/bi;

    invoke-direct {v0, v1, v3}, Lcrittercism/android/bj;-><init>(Landroid/content/Context;Lcrittercism/android/bi;)V

    invoke-virtual {v0}, Lcrittercism/android/bj;->a()V

    new-instance v0, Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    sget-object v3, Lcrittercism/android/bi;->h:Lcrittercism/android/bi;

    invoke-direct {v0, v1, v3}, Lcrittercism/android/bj;-><init>(Landroid/content/Context;Lcrittercism/android/bi;)V

    invoke-virtual {v0}, Lcrittercism/android/bj;->a()V

    new-instance v0, Lcrittercism/android/bj;

    iget-object v1, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    sget-object v3, Lcrittercism/android/bi;->g:Lcrittercism/android/bi;

    invoke-direct {v0, v1, v3}, Lcrittercism/android/bj;-><init>(Landroid/content/Context;Lcrittercism/android/bi;)V

    invoke-virtual {v0}, Lcrittercism/android/bj;->a()V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    iget-object v0, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    invoke-static {v0}, Lcrittercism/android/h;->b(Landroid/content/Context;)V

    .line 343
    :goto_1
    invoke-direct {p0}, Lcrittercism/android/co;->c()V

    .line 346
    iget-object v0, p0, Lcrittercism/android/co;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 347
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 349
    :catch_0
    move-exception v0

    .line 350
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in run(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dg;->b()V

    .line 351
    invoke-static {}, Lcrittercism/android/dg;->c()V

    .line 352
    iput-object v0, p0, Lcrittercism/android/co;->j:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    iget-object v0, p0, Lcrittercism/android/co;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 355
    :goto_3
    return-void

    .line 306
    :cond_3
    :try_start_2
    invoke-static {v2}, Lcrittercism/android/dk;->a(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 354
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcrittercism/android/co;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0

    .line 340
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    new-instance v0, Lcrittercism/android/h;

    invoke-direct {v0, v3}, Lcrittercism/android/h;-><init>(Landroid/content/Context;)V

    const-string v4, "com.crittercism.optmz.config"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "interval"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "interval"

    const/16 v5, 0xa

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcrittercism/android/h;->d:I

    const-string v4, "kill"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "kill"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcrittercism/android/h;->c:Z

    const-string v4, "persist"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "persist"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcrittercism/android/h;->b:Z

    const-string v4, "enabled"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v1, "enabled"

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcrittercism/android/h;->a:Z

    :goto_4
    if-eqz v0, :cond_5

    invoke-static {}, Lcrittercism/android/ay;->t()Lcrittercism/android/ay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcrittercism/android/ay;->a(Lcrittercism/android/h;)V

    :cond_5
    iget-boolean v0, p0, Lcrittercism/android/co;->i:Z

    iget-object v0, p0, Lcrittercism/android/co;->d:Lcrittercism/android/av;

    invoke-interface {v0}, Lcrittercism/android/av;->s()V

    iget-boolean v0, p0, Lcrittercism/android/co;->i:Z

    invoke-static {}, Lcrittercism/android/ay;->t()Lcrittercism/android/ay;

    move-result-object v0

    iget-boolean v1, v0, Lcrittercism/android/ay;->u:Z

    if-nez v1, :cond_7

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    :cond_6
    iget-object v1, p0, Lcrittercism/android/co;->d:Lcrittercism/android/av;

    iget-object v1, p0, Lcrittercism/android/co;->d:Lcrittercism/android/av;

    invoke-interface {v1}, Lcrittercism/android/av;->o()Lcrittercism/android/bj;

    move-result-object v1

    iget-object v3, p0, Lcrittercism/android/co;->d:Lcrittercism/android/av;

    invoke-interface {v3}, Lcrittercism/android/av;->p()Lcrittercism/android/bj;

    move-result-object v3

    iget-object v4, p0, Lcrittercism/android/co;->d:Lcrittercism/android/av;

    invoke-interface {v4}, Lcrittercism/android/av;->q()Lcrittercism/android/bj;

    move-result-object v4

    iget-object v5, p0, Lcrittercism/android/co;->d:Lcrittercism/android/av;

    invoke-interface {v5}, Lcrittercism/android/av;->m()Lcrittercism/android/bj;

    move-result-object v5

    if-eqz v2, :cond_d

    const/4 v6, 0x1

    sput-boolean v6, Lcrittercism/android/cz;->a:Z

    iget-object v0, v0, Lcrittercism/android/ay;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    new-instance v0, Lcrittercism/android/bs;

    invoke-direct {v0, v2, v1, v4, v3}, Lcrittercism/android/bs;-><init>(Ljava/io/File;Lcrittercism/android/bj;Lcrittercism/android/bj;Lcrittercism/android/bj;)V

    invoke-virtual {v5, v0}, Lcrittercism/android/bj;->a(Lcrittercism/android/bv;)Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_5
    invoke-virtual {v4}, Lcrittercism/android/bj;->a()V

    invoke-virtual {v3}, Lcrittercism/android/bj;->a()V

    invoke-virtual {v1, v4}, Lcrittercism/android/bj;->a(Lcrittercism/android/bj;)V

    :cond_7
    iget-object v0, p0, Lcrittercism/android/co;->d:Lcrittercism/android/av;

    invoke-interface {v0}, Lcrittercism/android/av;->o()Lcrittercism/android/bj;

    move-result-object v0

    sget-object v1, Lcrittercism/android/bt;->a:Lcrittercism/android/bt;

    invoke-virtual {v0, v1}, Lcrittercism/android/bj;->a(Lcrittercism/android/bv;)Z

    invoke-static {}, Lcrittercism/android/ay;->t()Lcrittercism/android/ay;

    move-result-object v0

    iget-boolean v0, v0, Lcrittercism/android/ay;->u:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcrittercism/android/co;->b:Lcrittercism/android/ba;

    invoke-virtual {v0}, Lcrittercism/android/ba;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcrittercism/android/dg;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v0, p0, Lcrittercism/android/co;->c:Landroid/content/Context;

    iget-object v1, p0, Lcrittercism/android/co;->b:Lcrittercism/android/ba;

    invoke-virtual {v1}, Lcrittercism/android/ba;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crittercism/app/CrittercismNDK;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_8
    :goto_6
    :try_start_5
    invoke-direct {p0}, Lcrittercism/android/co;->f()V

    goto/16 :goto_1

    :cond_9
    move-object v0, v1

    goto/16 :goto_4

    :cond_a
    move-object v0, v1

    goto/16 :goto_4

    :cond_b
    move-object v0, v1

    goto/16 :goto_4

    :cond_c
    move-object v0, v1

    goto/16 :goto_4

    :cond_d
    iget-object v0, v0, Lcrittercism/android/ay;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_5

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception installing ndk library: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dg;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    .line 354
    :cond_e
    iget-object v0, p0, Lcrittercism/android/co;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_3
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/co;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcrittercism/android/co;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    const/4 v0, 0x1

    .line 84
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcrittercism/android/co;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 360
    return-void
.end method
