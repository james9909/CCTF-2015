.class Ldagger/internal/Loader$1;
.super Ldagger/internal/Memoizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Memoizer",
        "<",
        "Ljava/lang/ClassLoader;",
        "Ldagger/internal/Memoizer",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Class",
        "<*>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldagger/internal/Loader;


# direct methods
.method constructor <init>(Ldagger/internal/Loader;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Ldagger/internal/Loader$1;->a:Ldagger/internal/Loader;

    invoke-direct {p0}, Ldagger/internal/Memoizer;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/ClassLoader;)Ldagger/internal/Memoizer;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ldagger/internal/Memoizer",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ldagger/internal/Loader$1$1;

    invoke-direct {v0, p0, p1}, Ldagger/internal/Loader$1$1;-><init>(Ldagger/internal/Loader$1;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 29
    check-cast p1, Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1}, Ldagger/internal/Loader$1;->a(Ljava/lang/ClassLoader;)Ldagger/internal/Memoizer;

    move-result-object v0

    return-object v0
.end method
