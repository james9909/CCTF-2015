.class final Ldagger/ObjectGraph$StandardBindings;
.super Ldagger/internal/BindingsGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/ObjectGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StandardBindings"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldagger/internal/SetBinding",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Ldagger/internal/BindingsGroup;-><init>()V

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldagger/ObjectGraph$StandardBindings;->a:Ljava/util/List;

    .line 327
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldagger/internal/SetBinding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 329
    invoke-direct {p0}, Ldagger/internal/BindingsGroup;-><init>()V

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ldagger/ObjectGraph$StandardBindings;->a:Ljava/util/List;

    .line 331
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/SetBinding;

    .line 333
    new-instance v2, Ldagger/internal/SetBinding;

    invoke-direct {v2, v0}, Ldagger/internal/SetBinding;-><init>(Ldagger/internal/SetBinding;)V

    .line 334
    iget-object v0, p0, Ldagger/ObjectGraph$StandardBindings;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, v2, Ldagger/internal/SetBinding;->provideKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Ldagger/ObjectGraph$StandardBindings;->a(Ljava/lang/String;Ldagger/internal/Binding;)Ldagger/internal/Binding;

    goto :goto_0

    .line 337
    :cond_0
    return-void
.end method

.method static synthetic a(Ldagger/ObjectGraph$StandardBindings;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Ldagger/ObjectGraph$StandardBindings;->a:Ljava/util/List;

    return-object v0
.end method
