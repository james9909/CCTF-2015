.class public Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;
.super Lcom/snapchat/android/api2/cash/blockers/Blocker;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneNumberBlocker"


# instance fields
.field protected mReceivingCashManager:Lcom/snapchat/android/cash/ReceivingCashManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;-><init>()V

    .line 32
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;->f()Z

    move-result v0

    return v0
.end method

.method private f()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 47
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->Z()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v2

    .line 48
    sget-object v3, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->NON_US_USER:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-ne v2, v3, :cond_0

    .line 49
    invoke-virtual {p0, v4, v1}, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;->b(Ljava/util/List;Z)V

    .line 50
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    new-instance v3, Lcom/snapchat/android/fragments/cash/IneligibleCashFragment;

    invoke-direct {v3}, Lcom/snapchat/android/fragments/cash/IneligibleCashFragment;-><init>()V

    invoke-direct {v2, v3}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 51
    iget-object v1, p0, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;->mReceivingCashManager:Lcom/snapchat/android/cash/ReceivingCashManager;

    invoke-static {}, Lcom/snapchat/android/chat/ConversationUtils;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/cash/ReceivingCashManager;->a(Ljava/util/List;)V

    .line 57
    :goto_0
    return v0

    .line 53
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    invoke-virtual {p0, v4, v0}, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;->a(Ljava/util/List;Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 57
    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a()V

    .line 70
    return-void
.end method

.method public a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v0, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;->e()Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$PhoneVerificationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment;->a(Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$PhoneVerificationListener;)V

    .line 43
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    invoke-direct {v2, v0}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

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
    .line 63
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Ljava/util/List;Z)V

    .line 64
    return-void
.end method

.method protected b(Ljava/util/List;Z)V
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
    .line 75
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->b(Ljava/util/List;Z)V

    .line 76
    return-void
.end method

.method public c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->PHONE_NUMBER_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method

.method protected e()Lcom/snapchat/android/fragments/cash/CashPhoneVerificationFragment$PhoneVerificationListener;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/snapchat/PhoneNumberBlocker;)V

    return-object v0
.end method
