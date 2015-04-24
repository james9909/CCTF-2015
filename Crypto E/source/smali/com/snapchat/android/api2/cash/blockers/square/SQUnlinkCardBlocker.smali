.class public Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;
.super Lcom/snapchat/android/api2/cash/blockers/Blocker;
.source "SourceFile"


# instance fields
.field protected mCashAuthManager:Lcom/snapchat/android/cash/CashAuthManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRetriedAfter401:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->mRetriedAfter401:Z

    .line 30
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/cash/CashAuthManager;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->mRetriedAfter401:Z

    .line 35
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->mCashAuthManager:Lcom/snapchat/android/cash/CashAuthManager;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->mRetriedAfter401:Z

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->mRetriedAfter401:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->a()V

    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->b()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/api2/cash/square/UnlinkCardTask$UnlinkSuccessListener;)Lcom/snapchat/android/api2/cash/square/SquareRequestTask;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 112
    new-instance v0, Lcom/snapchat/android/api2/cash/square/UnlinkCardTask;

    invoke-direct {v0, p1}, Lcom/snapchat/android/api2/cash/square/UnlinkCardTask;-><init>(Lcom/snapchat/android/api2/cash/square/UnlinkCardTask$UnlinkSuccessListener;)V

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/CashTransaction;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;->e()Lcom/snapchat/android/api2/cash/blockers/Blocker;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker$1;-><init>(Lcom/snapchat/android/api2/cash/blockers/square/SQUnlinkCardBlocker;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/api2/cash/blockers/Blocker$ResolutionListener;)V

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Lcom/snapchat/android/model/CashTransaction;)V

    .line 87
    return-void
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
    .line 96
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->a(Ljava/util/List;Z)V

    .line 97
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
    .line 101
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/api2/cash/blockers/Blocker;->b(Ljava/util/List;Z)V

    .line 102
    return-void
.end method

.method public c()Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;->SQ_UNLINK_CARD_BLOCKER:Lcom/snapchat/android/api2/cash/blockers/BlockerOrder;

    return-object v0
.end method

.method protected e()Lcom/snapchat/android/api2/cash/blockers/Blocker;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;

    invoke-direct {v0}, Lcom/snapchat/android/api2/cash/blockers/square/SQAccessTokenBlocker;-><init>()V

    return-object v0
.end method
