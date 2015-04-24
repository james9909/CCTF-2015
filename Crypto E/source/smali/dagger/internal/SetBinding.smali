.class public final Ldagger/internal/SetBinding;
.super Ldagger/internal/Binding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldagger/internal/Binding",
        "<",
        "Ljava/util/Set",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ldagger/internal/SetBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/SetBinding",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldagger/internal/SetBinding;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/SetBinding",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p1, Ldagger/internal/SetBinding;->provideKey:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p1, Ldagger/internal/SetBinding;->requiredBy:Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 82
    iput-object p1, p0, Ldagger/internal/SetBinding;->a:Ldagger/internal/SetBinding;

    .line 83
    invoke-virtual {p1}, Ldagger/internal/SetBinding;->g()Z

    move-result v0

    invoke-virtual {p0, v0}, Ldagger/internal/SetBinding;->c(Z)V

    .line 84
    invoke-virtual {p1}, Ldagger/internal/SetBinding;->h()Z

    move-result v0

    invoke-virtual {p0, v0}, Ldagger/internal/SetBinding;->d(Z)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldagger/internal/SetBinding;->b:Ljava/util/List;

    .line 86
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, p0

    .line 105
    :goto_0
    if-eqz v3, :cond_2

    .line 106
    const/4 v0, 0x0

    iget-object v1, v3, Ldagger/internal/SetBinding;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 107
    iget-object v0, v3, Ldagger/internal/SetBinding;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Binding;

    .line 108
    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    .line 109
    iget-object v0, v0, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    iget-object v6, p0, Ldagger/internal/SetBinding;->provideKey:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 110
    check-cast v0, Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 112
    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    :cond_1
    iget-object v0, v3, Ldagger/internal/SetBinding;->a:Ldagger/internal/SetBinding;

    move-object v3, v0

    goto :goto_0

    .line 116
    :cond_2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v4}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Ldagger/internal/SetBinding;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Binding;

    .line 90
    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->a(Ldagger/internal/Linker;)V

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Ldagger/internal/SetBinding;->a(Ljava/util/Set;)V

    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot inject members on a contributed Set<T>."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    :goto_0
    if-eqz p0, :cond_0

    .line 122
    iget-object v0, p0, Ldagger/internal/SetBinding;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 121
    iget-object p0, p0, Ldagger/internal/SetBinding;->a:Ldagger/internal/SetBinding;

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Ldagger/internal/SetBinding;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 131
    const/4 v0, 0x1

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "SetBinding["

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    :goto_0
    if-eqz p0, :cond_2

    .line 134
    iget-object v2, p0, Ldagger/internal/SetBinding;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_1

    .line 135
    if-nez v2, :cond_0

    .line 136
    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_0
    iget-object v2, p0, Ldagger/internal/SetBinding;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    .line 133
    :cond_1
    iget-object p0, p0, Ldagger/internal/SetBinding;->a:Ldagger/internal/SetBinding;

    move v0, v2

    goto :goto_0

    .line 142
    :cond_2
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
