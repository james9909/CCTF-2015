.class public final Ldagger/internal/FailoverLoader;
.super Ldagger/internal/Loader;
.source "SourceFile"


# instance fields
.field private final a:Ldagger/internal/Memoizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Memoizer",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ldagger/internal/ModuleAdapter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ldagger/internal/Loader;-><init>()V

    .line 39
    new-instance v0, Ldagger/internal/FailoverLoader$1;

    invoke-direct {v0, p0}, Ldagger/internal/FailoverLoader$1;-><init>(Ldagger/internal/FailoverLoader;)V

    iput-object v0, p0, Ldagger/internal/FailoverLoader;->a:Ldagger/internal/Memoizer;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldagger/internal/Binding;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 62
    const-string v0, "$$InjectAdapter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Ldagger/internal/FailoverLoader;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Binding;

    .line 63
    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-object v0

    .line 66
    :cond_0
    invoke-virtual {p0, p3, p2}, Ldagger/internal/FailoverLoader;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 67
    const-class v1, Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not load class %s needed for binding %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :cond_2
    invoke-static {v0, p4}, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->a(Ljava/lang/Class;Z)Ldagger/internal/Binding;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;)Ldagger/internal/ModuleAdapter;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ldagger/internal/ModuleAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Ldagger/internal/FailoverLoader;->a:Ldagger/internal/Memoizer;

    invoke-virtual {v0, p1}, Ldagger/internal/Memoizer;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/ModuleAdapter;

    return-object v0
.end method
