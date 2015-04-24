.class public Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;
.super Lcom/snapchat/android/api2/cash/blockers/Blocker;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQConfirmBlocker"


# instance fields
.field protected mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mRequiresPasscode:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requires_passcode"
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
    .line 46
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;-><init>()V

    .line 47
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->b()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->b()V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->a()V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic g(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic h(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic i(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->b(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;
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
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 245
    new-instance v0, Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V

    return-object v0
.end method

.method protected a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Lcom/snapchat/android/model/CashTransaction;)Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 155
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$2;-><init>(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 52
    const-string v0, "SQConfirmBlocker"

    const-string v1, "CASH-LOG: ATTEMPT resolve SQConfirmBlocker id[%s] recipient[%s] amount[%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-boolean v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->mRequiresPasscode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->z()Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    iget-boolean v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->mRequiresPasscode:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->e()Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Lcom/snapchat/android/model/CashTransaction;)Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;)V

    .line 60
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    invoke-direct {v2, v0}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 145
    :goto_1
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;

    invoke-direct {v2, p0, p1}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;Lcom/snapchat/android/model/CashTransaction;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/snapchat/android/api2/cash/blockers/square/SQConfirmBlocker;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;->g()V

    goto :goto_1
.end method

.method public c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_CONFIRM_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method

.method protected e()Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;-><init>()V

    return-object v0
.end method
