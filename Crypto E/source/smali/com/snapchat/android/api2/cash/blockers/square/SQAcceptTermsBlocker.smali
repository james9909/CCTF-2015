.class public Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;
.super Lcom/snapchat/android/api2/cash/blockers/Blocker;
.source "SourceFile"


# instance fields
.field protected mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;-><init>()V

    .line 28
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;->b(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 33
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker$1;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/square/SQAcceptTermsBlocker;Lcom/snapchat/android/model/CashTransaction;)V

    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->h()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/snapchat/android/api2/cash/square/AcceptTermsTask;

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/snapchat/android/api2/cash/square/AcceptTermsTask;-><init>(Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V

    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/square/AcceptTermsTask;->g()V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v1, Lcom/snapchat/android/api2/cash/square/AcceptTermsTask;

    invoke-direct {v1, v0}, Lcom/snapchat/android/api2/cash/square/AcceptTermsTask;-><init>(Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V

    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/square/AcceptTermsTask;->g()V

    goto :goto_0
.end method

.method public c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_ACCEPT_TERMS_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method
