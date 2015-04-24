.class public abstract Ldagger/ObjectGraph;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/ObjectGraph$OverridesBindings;,
        Ldagger/ObjectGraph$StandardBindings;,
        Ldagger/ObjectGraph$DaggerObjectGraph;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static varargs a([Ljava/lang/Object;)Ldagger/ObjectGraph;
    .locals 2
    .parameter

    .prologue
    .line 129
    const/4 v0, 0x0

    new-instance v1, Ldagger/internal/FailoverLoader;

    invoke-direct {v1}, Ldagger/internal/FailoverLoader;-><init>()V

    invoke-static {v0, v1, p0}, Ldagger/ObjectGraph$DaggerObjectGraph;->a(Ldagger/ObjectGraph$DaggerObjectGraph;Ldagger/internal/Loader;[Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation
.end method
