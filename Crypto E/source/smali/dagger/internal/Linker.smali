.class public final Ldagger/internal/Linker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/Linker$1;,
        Ldagger/internal/Linker$DeferredBinding;,
        Ldagger/internal/Linker$ErrorHandler;,
        Ldagger/internal/Linker$SingletonBinding;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Ldagger/internal/Linker;

.field private final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding",
            "<*>;>;"
        }
    .end annotation
.end field

.field private volatile g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final h:Ldagger/internal/Loader;

.field private final i:Ldagger/internal/Linker$ErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldagger/internal/Linker;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldagger/internal/Linker;Ldagger/internal/Loader;Ldagger/internal/Linker$ErrorHandler;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ldagger/internal/ArrayQueue;

    invoke-direct {v0}, Ldagger/internal/ArrayQueue;-><init>()V

    iput-object v0, p0, Ldagger/internal/Linker;->c:Ljava/util/Queue;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldagger/internal/Linker;->d:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldagger/internal/Linker;->e:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldagger/internal/Linker;->f:Ljava/util/Map;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Ldagger/internal/Linker;->g:Ljava/util/Map;

    .line 65
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "plugin"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "errorHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    iput-object p1, p0, Ldagger/internal/Linker;->b:Ldagger/internal/Linker;

    .line 69
    iput-object p2, p0, Ldagger/internal/Linker;->h:Ldagger/internal/Loader;

    .line 70
    iput-object p3, p0, Ldagger/internal/Linker;->i:Ldagger/internal/Linker$ErrorHandler;

    .line 71
    return-void
.end method

.method static a(Ldagger/internal/Binding;)Ldagger/internal/Binding;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/internal/Binding",
            "<TT;>;)",
            "Ldagger/internal/Binding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Ldagger/internal/Binding;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Ldagger/internal/Linker$SingletonBinding;

    if-eqz v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ldagger/internal/Linker$SingletonBinding;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldagger/internal/Linker$SingletonBinding;-><init>(Ldagger/internal/Binding;Ldagger/internal/Linker$1;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Z)Ldagger/internal/Binding;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {p1}, Ldagger/internal/Keys;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_1

    .line 212
    new-instance v0, Ldagger/internal/BuiltInBinding;

    invoke-direct {v0, p1, p2, p3, v1}, Ldagger/internal/BuiltInBinding;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 214
    :cond_1
    invoke-static {p1}, Ldagger/internal/Keys;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_2

    .line 216
    new-instance v0, Ldagger/internal/LazyBinding;

    invoke-direct {v0, p1, p2, p3, v1}, Ldagger/internal/LazyBinding;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_2
    invoke-static {p1}, Ldagger/internal/Keys;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_3

    invoke-static {p1}, Ldagger/internal/Keys;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_4
    iget-object v0, p0, Ldagger/internal/Linker;->h:Ldagger/internal/Loader;

    invoke-virtual {v0, p1, v1, p3, p4}, Ldagger/internal/Loader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldagger/internal/Binding;

    move-result-object v0

    .line 226
    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ldagger/internal/Binding$InvalidBindingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not be bound with key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldagger/internal/Binding$InvalidBindingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Ldagger/internal/Linker;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 328
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    .line 330
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_0
    return-void
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Ldagger/internal/Linker;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private b(Ldagger/internal/Binding;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/internal/Binding",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p1, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Ldagger/internal/Linker;->f:Ljava/util/Map;

    iget-object v1, p1, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Ldagger/internal/Linker;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    :cond_0
    iget-object v0, p1, Ldagger/internal/Binding;->membersKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Ldagger/internal/Linker;->f:Ljava/util/Map;

    iget-object v1, p1, Ldagger/internal/Binding;->membersKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Ldagger/internal/Linker;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 311
    :cond_1
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 194
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 245
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            "ZZ)",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 269
    invoke-direct {p0}, Ldagger/internal/Linker;->c()V

    move-object v1, p0

    move-object v0, v5

    .line 272
    :goto_0
    if-eqz v1, :cond_1

    .line 273
    iget-object v0, v1, Ldagger/internal/Linker;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Binding;

    .line 274
    if-eqz v0, :cond_0

    .line 275
    if-eq v1, p0, :cond_1

    invoke-virtual {v0}, Ldagger/internal/Binding;->c()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 272
    :cond_0
    iget-object v1, v1, Ldagger/internal/Linker;->b:Ldagger/internal/Linker;

    goto :goto_0

    .line 280
    :cond_1
    if-nez v0, :cond_2

    .line 282
    new-instance v0, Ldagger/internal/Linker$DeferredBinding;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ldagger/internal/Linker$DeferredBinding;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLdagger/internal/Linker$1;)V

    .line 284
    invoke-virtual {v0, p5}, Ldagger/internal/Binding;->c(Z)V

    .line 285
    invoke-virtual {v0, v6}, Ldagger/internal/Binding;->d(Z)V

    .line 286
    iget-object v1, p0, Ldagger/internal/Linker;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldagger/internal/Linker;->d:Z

    .line 297
    :goto_1
    return-object v5

    .line 291
    :cond_2
    invoke-virtual {v0}, Ldagger/internal/Binding;->c()Z

    move-result v1

    if-nez v1, :cond_3

    .line 292
    iget-object v1, p0, Ldagger/internal/Linker;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_3
    invoke-virtual {v0, p5}, Ldagger/internal/Binding;->c(Z)V

    .line 296
    invoke-virtual {v0, v6}, Ldagger/internal/Binding;->d(Z)V

    move-object v5, v0

    .line 297
    goto :goto_1
.end method

.method public a()V
    .locals 5

    .prologue
    .line 130
    invoke-direct {p0}, Ldagger/internal/Linker;->c()V

    .line 132
    :cond_0
    :goto_0
    iget-object v0, p0, Ldagger/internal/Linker;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Binding;

    if-eqz v0, :cond_4

    .line 133
    instance-of v1, v0, Ldagger/internal/Linker$DeferredBinding;

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 134
    check-cast v1, Ldagger/internal/Linker$DeferredBinding;

    .line 135
    iget-object v2, v1, Ldagger/internal/Linker$DeferredBinding;->b:Ljava/lang/String;

    .line 136
    iget-boolean v3, v1, Ldagger/internal/Linker$DeferredBinding;->c:Z

    .line 137
    iget-object v4, p0, Ldagger/internal/Linker;->f:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    :try_start_0
    iget-object v4, v0, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    iget-object v1, v1, Ldagger/internal/Linker$DeferredBinding;->a:Ljava/lang/ClassLoader;

    invoke-direct {p0, v2, v4, v1, v3}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Z)Ldagger/internal/Binding;

    move-result-object v1

    .line 143
    invoke-virtual {v0}, Ldagger/internal/Binding;->g()Z

    move-result v3

    invoke-virtual {v1, v3}, Ldagger/internal/Binding;->c(Z)V

    .line 144
    invoke-virtual {v0}, Ldagger/internal/Binding;->h()Z

    move-result v3

    invoke-virtual {v1, v3}, Ldagger/internal/Binding;->d(Z)V

    .line 146
    iget-object v3, v1, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Ldagger/internal/Binding;->membersKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 147
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create binding for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ldagger/internal/Binding$InvalidBindingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 153
    :catch_0
    move-exception v1

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Ldagger/internal/Binding$InvalidBindingException;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ldagger/internal/Binding$InvalidBindingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " required by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldagger/internal/Linker;->a(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Ldagger/internal/Linker;->f:Ljava/util/Map;

    sget-object v1, Ldagger/internal/Binding;->UNRESOLVED:Ldagger/internal/Binding;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 150
    :cond_1
    :try_start_1
    invoke-static {v1}, Ldagger/internal/Linker;->a(Ldagger/internal/Binding;)Ldagger/internal/Binding;

    move-result-object v1

    .line 151
    iget-object v3, p0, Ldagger/internal/Linker;->c:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0, v1}, Ldagger/internal/Linker;->b(Ldagger/internal/Binding;)V
    :try_end_1
    .catch Ldagger/internal/Binding$InvalidBindingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 156
    :catch_1
    move-exception v1

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " required by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldagger/internal/Linker;->a(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Ldagger/internal/Linker;->f:Ljava/util/Map;

    sget-object v1, Ldagger/internal/Binding;->UNRESOLVED:Ldagger/internal/Binding;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 159
    :catch_2
    move-exception v1

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " required by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldagger/internal/Linker;->a(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Ldagger/internal/Linker;->f:Ljava/util/Map;

    sget-object v1, Ldagger/internal/Binding;->UNRESOLVED:Ldagger/internal/Binding;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 162
    :catch_3
    move-exception v0

    .line 163
    throw v0

    .line 164
    :catch_4
    move-exception v0

    .line 165
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 171
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldagger/internal/Linker;->d:Z

    .line 172
    invoke-virtual {v0, p0}, Ldagger/internal/Binding;->a(Ldagger/internal/Linker;)V

    .line 173
    iget-boolean v1, p0, Ldagger/internal/Linker;->d:Z

    if-eqz v1, :cond_3

    .line 174
    invoke-virtual {v0}, Ldagger/internal/Binding;->b()V

    goto/16 :goto_0

    .line 176
    :cond_3
    iget-object v1, p0, Ldagger/internal/Linker;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 182
    :cond_4
    :try_start_2
    iget-object v0, p0, Ldagger/internal/Linker;->i:Ldagger/internal/Linker$ErrorHandler;

    iget-object v1, p0, Ldagger/internal/Linker;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ldagger/internal/Linker$ErrorHandler;->a(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    iget-object v0, p0, Ldagger/internal/Linker;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 186
    return-void

    .line 184
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ldagger/internal/Linker;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    throw v0
.end method

.method public a(Ldagger/internal/BindingsGroup;)V
    .locals 4
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Ldagger/internal/Linker;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot install further bindings after calling linkAll()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    invoke-virtual {p1}, Ldagger/internal/BindingsGroup;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 86
    iget-object v2, p0, Ldagger/internal/Linker;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Binding;

    invoke-static {v0}, Ldagger/internal/Linker;->a(Ldagger/internal/Binding;)Ldagger/internal/Binding;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method
