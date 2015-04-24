.class Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

.field final synthetic val$callback:Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;

.field final synthetic val$cvv:Ljava/lang/String;

.field final synthetic val$expiry:Ljava/lang/String;

.field final synthetic val$pan:Ljava/lang/String;

.field final synthetic val$zip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    iput-object p2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$callback:Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;

    iput-object p3, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$pan:Ljava/lang/String;

    iput-object p4, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$expiry:Ljava/lang/String;

    iput-object p5, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$cvv:Ljava/lang/String;

    iput-object p6, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$zip:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/cash/blockers/Blocker;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 181
    const-string v0, "SQCardFormBlocker"

    const-string v1, "CASH-LOG: SQCardFormBlocker dismissed when trying to get access token"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$callback:Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->UNKNOWN:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;->a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    .line 185
    return-void
.end method

.method public a(Lcom/snapchat/android/api2/cash/blockers/Blocker;Ljava/util/List;Z)V
    .locals 7
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
    .line 111
    new-instance v6, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;

    invoke-direct {v6, p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;)V

    .line 171
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/snapchat/android/api2/cash/square/LinkCardTask;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    invoke-static {v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$pan:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$expiry:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$cvv:Ljava/lang/String;

    iget-object v5, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$zip:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/api2/cash/square/LinkCardTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->g()V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v1, Lcom/snapchat/android/api2/cash/square/LinkCardTask;

    iget-object v2, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$pan:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$expiry:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$cvv:Ljava/lang/String;

    iget-object v5, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$zip:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/snapchat/android/api2/cash/square/LinkCardTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V

    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->g()V

    goto :goto_0
.end method

.method public b(Lcom/snapchat/android/api2/cash/blockers/Blocker;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 189
    const-string v0, "SQCardFormBlocker"

    const-string v1, "CASH-LOG: SQCardFormBlocker hard failed when trying to get access token"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$callback:Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->UNKNOWN:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;->a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    .line 192
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
    .line 198
    const-string v0, "SQCardFormBlocker"

    const-string v1, "CASH-LOG: SQCardFormBlocker failed to get access token"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->val$callback:Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;

    sget-object v1, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->UNKNOWN:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-interface {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;->a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;->this$0:Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    invoke-static {v0, p2, p3}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->b(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;Ljava/util/List;Z)V

    .line 204
    return-void
.end method
