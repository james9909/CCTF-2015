.class public Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;
.super Lcom/snapchat/android/api2/cash/blockers/Blocker;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQInitiationConfirmBlocker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;->a()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;->a()V

    return-void
.end method


# virtual methods
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
    .line 35
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;Lcom/snapchat/android/model/CashTransaction;Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v5, 0x1

    .line 20
    const-string v0, "SQInitiationConfirmBlocker"

    const-string v1, "CASH-LOG: ATTEMPT resolve SQInitiationConfirmBlocker transaction_id[%s] recipient[%s] amount [%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p1}, Lcom/snapchat/android/model/CashTransaction;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;-><init>()V

    .line 25
    invoke-virtual {p0, v0, p1}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;->a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Lcom/snapchat/android/model/CashTransaction;)Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;)V

    .line 26
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    invoke-direct {v2, v0}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v5}, Lcom/snapchat/android/api2/cash/blockers/square/SQInitiationConfirmBlocker;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_INITIATION_CONFIRM_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
