.class Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->a(Lcom/snapchat/android/model/CashTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/cash/blockers/Blocker;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->b(Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;)V

    .line 73
    return-void
.end method

.method public a(Lcom/snapchat/android/api2/cash/blockers/Blocker;Ljava/util/List;Z)V
    .locals 3
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
    .line 46
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;

    new-instance v1, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->a(Lcom/snapchat/android/api2/cash/square/UnlinkCardTask$UnlinkSuccessListener;)Lcom/snapchat/android/api2/cash/square/SquareRequestTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;->g()V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->b(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public b(Lcom/snapchat/android/api2/cash/blockers/Blocker;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->c(Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;)V

    .line 78
    return-void
.end method

.method public b(Lcom/snapchat/android/api2/cash/blockers/Blocker;Ljava/util/List;Z)V
    .locals 3
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
    .line 83
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->b(Ljava/util/List;Z)V

    .line 84
    return-void
.end method
