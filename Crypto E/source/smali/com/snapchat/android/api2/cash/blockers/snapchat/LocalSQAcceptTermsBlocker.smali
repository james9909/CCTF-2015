.class public Lcom/snapchat/android/api2/cash/blockers/snapchat/LocalSQAcceptTermsBlocker;
.super Lcom/snapchat/android/api2/cash/blockers/Blocker;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/snapchat/LocalSQAcceptTermsBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/snapchat/LocalSQAcceptTermsBlocker;->a()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/snapchat/LocalSQAcceptTermsBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/snapchat/LocalSQAcceptTermsBlocker;->a(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 15
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/api2/cash/blockers/snapchat/LocalSQAcceptTermsBlocker;->a(Ljava/util/List;Z)V

    .line 32
    :goto_0
    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;-><init>()V

    .line 21
    new-instance v1, Lcom/snapchat/android/api2/cash/blockers/snapchat/LocalSQAcceptTermsBlocker$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/api2/cash/blockers/snapchat/LocalSQAcceptTermsBlocker$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/snapchat/LocalSQAcceptTermsBlocker;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment;->a(Lcom/snapchat/android/fragments/cash/SQAcceptTermsFragment$AcceptTermsListener;)V

    .line 31
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    invoke-direct {v2, v0}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->LOCAL_SQ_ACCEPT_TERMS_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method
