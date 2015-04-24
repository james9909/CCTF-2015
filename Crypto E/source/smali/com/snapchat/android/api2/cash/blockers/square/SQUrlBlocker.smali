.class public Lcom/snapchat/android/api2/cash/blockers/square/SQUrlBlocker;
.super Lcom/snapchat/android/api2/cash/blockers/Blocker;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQUrlBlocker"


# instance fields
.field private final mUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUrlBlocker;->mUrl:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQUrlBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQUrlBlocker;->a()V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQUrlBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQUrlBlocker;->a(Ljava/util/List;Z)V

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
    .line 29
    const-string v0, "SQUrlBlocker"

    const-string v1, "CASH-LOG: ATTEMPT resolve SQUrlBlocker"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    new-instance v0, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;-><init>()V

    .line 32
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUrlBlocker;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a(Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcom/snapchat/android/api2/cash/blockers/square/SQUrlBlocker$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQUrlBlocker$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/square/SQUrlBlocker;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/verification/URLVerificationFragment;->a(Lcom/snapchat/android/fragments/verification/URLVerificationFragment$OnCompleteListener;)V

    .line 43
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    invoke-direct {v2, v0}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_URL_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUrlBlocker;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 55
    :cond_3
    invoke-super {p0, p1}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->hashCode()I

    move-result v0

    return v0
.end method
