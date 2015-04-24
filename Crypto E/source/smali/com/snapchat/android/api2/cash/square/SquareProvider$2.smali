.class Lcom/snapchat/android/api2/cash/square/SquareProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/square/SquareProvider;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/cash/square/SquareProvider;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/square/SquareProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/SquareProvider$2;->this$0:Lcom/snapchat/android/api2/cash/square/SquareProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/cash/blockers/Blocker;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 171
    return-void
.end method

.method public a(Lcom/snapchat/android/api2/cash/blockers/Blocker;Ljava/util/List;Z)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 164
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/SquareProvider$2;->this$0:Lcom/snapchat/android/api2/cash/square/SquareProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/SquareProvider;->j()Lcom/snapchat/android/api2/cash/square/SquareRequestTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;->g()V

    .line 167
    :cond_1
    return-void
.end method

.method public b(Lcom/snapchat/android/api2/cash/blockers/Blocker;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 175
    return-void
.end method

.method public b(Lcom/snapchat/android/api2/cash/blockers/Blocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/api2/cash/blockers/Blocker;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 180
    return-void
.end method
