.class public Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;
.super Lcom/snapchat/android/api2/cash/blockers/Blocker;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/cash/CardLinkFragment$CardDetailsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SQCardFormBlocker"


# instance fields
.field private mCardStatus:Lcom/snapchat/android/api2/cash/square/data/CardStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_status"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field protected mCashCardManager:Lcom/snapchat/android/cash/CashCardManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRetriedFrom401:Z

.field protected mSquareProvider:Lcom/snapchat/android/api2/cash/square/SquareProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTransactionContext:Lcom/snapchat/android/model/CashTransaction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mUseDefaultGreen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;-><init>()V

    .line 46
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CardStatus;->NOT_LINKED:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->mCardStatus:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->mUseDefaultGreen:Z

    .line 54
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;-><init>()V

    .line 59
    iput-boolean p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->mUseDefaultGreen:Z

    .line 60
    return-void
.end method

.method private a(Z)Lcom/snapchat/android/api2/cash/blockers/Blocker;
    .locals 1
    .parameter

    .prologue
    .line 217
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;

    invoke-direct {v0, p1}, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;-><init>(Z)V

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;Lcom/snapchat/android/api2/cash/square/data/ErrorType;)Lcom/snapchat/android/api2/cash/blockers/CardInputError;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Lcom/snapchat/android/api2/cash/square/data/ErrorType;)Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/snapchat/android/api2/cash/square/data/ErrorType;)Lcom/snapchat/android/api2/cash/blockers/CardInputError;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 222
    if-eqz p1, :cond_0

    .line 223
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$2;->$SwitchMap$com$snapchat$android$api2$cash$square$data$ErrorType:[I

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 245
    :cond_0
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->UNKNOWN:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    :goto_0
    return-object v0

    .line 225
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->CARD_TYPE_UNSUPPORTED:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    .line 227
    :pswitch_1
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->INVALID_CARD_NUMBER:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    .line 229
    :pswitch_2
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->INVALID_EXPIRATION:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    .line 231
    :pswitch_3
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->INVALID_SECURITY_CODE:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    .line 233
    :pswitch_4
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->UNSUPPORTED_REGION:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    .line 235
    :pswitch_5
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->INVALID_POSTAL_CODE:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    .line 237
    :pswitch_6
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->TOO_MANY_ATTEMPTS:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    .line 239
    :pswitch_7
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->BLOCKED_CARD:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    .line 241
    :pswitch_8
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->NETWORK_FAILURE:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;)Lcom/snapchat/android/model/CashTransaction;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->mTransactionContext:Lcom/snapchat/android/model/CashTransaction;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;Lcom/snapchat/android/model/CashTransaction;)Lcom/snapchat/android/model/CashTransaction;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->mTransactionContext:Lcom/snapchat/android/model/CashTransaction;

    return-object p1
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct/range {p0 .. p6}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;Z)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Ljava/util/List;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;Z)V
    .locals 8
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
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 103
    const-string v0, "SQCardFormBlocker"

    const-string v1, "CASH-LOG: SQCardBlocker onValidateCardInputEvent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-direct {p0, p6}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Z)Lcom/snapchat/android/api2/cash/blockers/Blocker;

    move-result-object v7

    .line 105
    if-nez v7, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "createAccessTokenBlocker for Square returned null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;)V

    .line 206
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 207
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->mRetriedFrom401:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->mRetriedFrom401:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x0

    .line 64
    const-string v0, "SQCardFormBlocker"

    const-string v1, "CASH-LOG: ATTEMPT resolve SQCardFormBlocker"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->mTransactionContext:Lcom/snapchat/android/model/CashTransaction;

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->mCardStatus:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/CardStatus;->NOT_LINKED:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->mCashCardManager:Lcom/snapchat/android/cash/CashCardManager;

    invoke-virtual {v0}, Lcom/snapchat/android/cash/CashCardManager;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "SQCardFormBlocker"

    const-string v1, "CASH-LOG: Exists card token. Resolving card blocker without linking flow."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Ljava/util/List;Z)V

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;-><init>()V

    .line 76
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 77
    const-string v2, "use_default_green"

    iget-boolean v3, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->mUseDefaultGreen:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {v0, p0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a(Lcom/snapchat/android/fragments/cash/CardLinkFragment$CardDetailsListener;)V

    .line 80
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    invoke-direct {v2, v0}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;)V
    .locals 7
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
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 94
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/blockers/ValidatedCardInputCallback;Z)V

    .line 95
    return-void
.end method

.method public c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_CARD_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 211
    const-string v0, "SQCardFormBlocker"

    const-string v1, "CASH-LOG: SQCardFormBlocker onCanceled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->Q()V

    .line 213
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->a()V

    .line 214
    return-void
.end method

.method public f()Lcom/snapchat/android/api2/cash/square/data/CardStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQCardFormBlocker;->mCardStatus:Lcom/snapchat/android/api2/cash/square/data/CardStatus;

    return-object v0
.end method
