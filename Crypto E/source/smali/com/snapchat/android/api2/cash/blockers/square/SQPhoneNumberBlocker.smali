.class public Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;
.super Lcom/snapchat/android/api2/cash/blockers/Blocker;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQPhoneNumberBlocker"


# instance fields
.field protected mCashErrorReporter:Lcom/snapchat/android/api2/cash/CashErrorReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;-><init>()V

    .line 34
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;->a(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic e(Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;Ljava/util/List;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;->b(Ljava/util/List;Z)V

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
    .line 39
    const-string v0, "SQPhoneNumberBlocker"

    const-string v1, "CASH-LOG: ATTEMPT resolve SQPhoneNumberBlocker"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    new-instance v0, Lcom/snapchat/android/api2/cash/GenerateSignatureForSquarePhoneTask;

    new-instance v1, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/square/SQPhoneNumberBlocker;Lcom/snapchat/android/model/CashTransaction;)V

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/cash/GenerateSignatureForSquarePhoneTask;-><init>(Lcom/snapchat/android/api2/cash/BasicScCashRequestTask$BasicScCashRequestTaskCallback;)V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/GenerateSignatureForSquarePhoneTask;->g()V

    .line 107
    return-void
.end method

.method public c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_PHONE_NUMBER_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method
