.class public Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;
.super Lcom/snapchat/android/api2/cash/blockers/Blocker;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQAccessTokenBlocker"


# instance fields
.field protected mCashAuthManager:Lcom/snapchat/android/cash/CashAuthManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mForced:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;->mForced:Z

    .line 35
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;-><init>()V

    .line 40
    iput-boolean p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;->mForced:Z

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;->b(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;)Lcom/snapchat/android/api2/cash/GenerateSquareAccessTokenTask;
    .locals 1
    .parameter

    .prologue
    .line 84
    new-instance v0, Lcom/snapchat/android/api2/cash/GenerateSquareAccessTokenTask;

    invoke-direct {v0, p1}, Lcom/snapchat/android/api2/cash/GenerateSquareAccessTokenTask;-><init>(Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;)V

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 45
    const-string v0, "SQAccessTokenBlocker"

    const-string v1, "CASH-LOG: ATTEMPT resolve SQAccessTokenBlocker"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-boolean v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;->mForced:Z

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;->mCashAuthManager:Lcom/snapchat/android/cash/CashAuthManager;

    invoke-virtual {v0}, Lcom/snapchat/android/cash/CashAuthManager;->a()Lcom/snapchat/android/cash/CashAuthToken;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/cash/CashAuthToken;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;->a(Ljava/util/List;Z)V

    .line 79
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker$1;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;Lcom/snapchat/android/model/CashTransaction;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;->a(Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;)Lcom/snapchat/android/api2/cash/GenerateSquareAccessTokenTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/GenerateSquareAccessTokenTask;->g()V

    goto :goto_0
.end method

.method protected a(Ljava/util/List;Z)V
    .locals 0
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
    .line 90
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Ljava/util/List;Z)V

    .line 91
    return-void
.end method

.method public c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_ACCESS_TOKEN_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
