.class public abstract Lcom/snapchat/android/api2/cash/blockers/Blocker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Blocker"


# instance fields
.field private mListener:Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/cash/blockers/Blocker;)I
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->ordinal()I

    move-result v0

    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public a()V
    .locals 5

    .prologue
    .line 49
    const-string v0, "Blocker"

    const-string v1, "CASH-LOG: %s DISMISSED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/Blocker;->mListener:Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/Blocker;->mListener:Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;

    invoke-interface {v0, p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker;)V

    .line 53
    :cond_0
    return-void
.end method

.method public a(Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/Blocker;->mListener:Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;

    .line 19
    return-void
.end method

.method public abstract a(Lcom/snapchat/android/model/CashTransaction;)V
.end method

.method public a(Ljava/util/List;Z)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 37
    const-string v0, "Blocker"

    const-string v1, "CASH-LOG: %s RESOLVED newBlockers[%s] shouldContinueResolution[%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/Blocker;->mListener:Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/Blocker;->mListener:Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker;Ljava/util/List;Z)V

    .line 42
    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 70
    const-string v0, "Blocker"

    const-string v1, "CASH-LOG: %s HARD FAILED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/Blocker;->mListener:Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/Blocker;->mListener:Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;

    invoke-interface {v0, p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;->b(Lcom/snapchat/android/api2/cash/blockers/Blocker;)V

    .line 74
    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;Z)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 59
    const-string v0, "Blocker"

    const-string v1, "CASH-LOG: %s FAILED additionalBlockers[%s] shouldContinueResolution[%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/Blocker;->mListener:Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/Blocker;->mListener:Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;->b(Lcom/snapchat/android/api2/cash/blockers/Blocker;Ljava/util/List;Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public abstract c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 11
    check-cast p1, Lcom/snapchat/android/api2/cash/blockers/Blocker;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 95
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
