.class public Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;
.super Lcom/snapchat/android/api2/cash/blockers/Blocker;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQInitiatePaymentBlocker"


# instance fields
.field protected mCashCardManager:Lcom/snapchat/android/cash/CashCardManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mSquareProvider:Lcom/snapchat/android/api2/cash/square/SquareProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;-><init>()V

    .line 39
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->b()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->b(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;)Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 143
    new-instance v0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;-><init>(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;)V

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 44
    const-string v0, "SQInitiatePaymentBlocker"

    const-string v1, "CASH-LOG: ATTEMPT resolve SQInitiatePaymentBlocker"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->mCashCardManager:Lcom/snapchat/android/cash/CashCardManager;

    invoke-virtual {v0}, Lcom/snapchat/android/cash/CashCardManager;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v1, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;

    invoke-direct {v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->b(Ljava/util/List;Z)V

    .line 137
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->mCashCardManager:Lcom/snapchat/android/cash/CashCardManager;

    invoke-virtual {v0}, Lcom/snapchat/android/cash/CashCardManager;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;Lcom/snapchat/android/model/CashTransaction;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiatePaymentBlocker;->a(Lcom/snapchat/android/model/CashTransaction;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareCashPaymentCallback;)Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;->g()V

    goto :goto_0
.end method

.method public c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_INITIATE_PAYMENT_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
