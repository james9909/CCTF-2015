.class public Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;
.super Lcom/snapchat/android/api2/cash/blockers/Blocker;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ValidateTransactionBlocker"


# instance fields
.field protected mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;-><init>()V

    .line 29
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;->b()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;->b(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 34
    const-string v0, "ValidateTransactionBlocker"

    const-string v1, "CASH-LOG: ATTEMPT resolve ValidateTransactionBlocker recipient[%s] amount[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    new-instance v0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->g()I

    move-result v2

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->k()Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    move-result-object v3

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->w()Z

    move-result v5

    new-instance v6, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;

    invoke-direct {v6, p0, p1}, Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/snapchat/ValidateTransactionBlocker;Lcom/snapchat/android/model/CashTransaction;)V

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;-><init>(Ljava/lang/String;ILcom/snapchat/android/util/CashUtils$CurrencyCode;Ljava/lang/String;ZLcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;)V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;->g()V

    .line 89
    return-void
.end method

.method public c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->VALIDATE_TRANSACTION_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
