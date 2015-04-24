.class public Lcom/snapchat/android/api2/cash/square/UnlinkCardTask;
.super Lcom/snapchat/android/api2/cash/square/SquareRequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/square/UnlinkCardTask$UnlinkSuccessListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnlinkCardTask"


# instance fields
.field mCashCardManager:Lcom/snapchat/android/cash/CashCardManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUnlinkSuccessListener:Lcom/snapchat/android/api2/cash/square/UnlinkCardTask$UnlinkSuccessListener;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api2/cash/square/UnlinkCardTask$UnlinkSuccessListener;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/square/SquareRequestTask;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/UnlinkCardTask;->mUnlinkSuccessListener:Lcom/snapchat/android/api2/cash/square/UnlinkCardTask$UnlinkSuccessListener;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/framework/NetworkResult;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 45
    const-string v0, "UnlinkCardTask"

    const-string v1, "CASH-LOG: UnlinkCardTask finished with status code %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 47
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->T()V

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/UnlinkCardTask;->mCashCardManager:Lcom/snapchat/android/cash/CashCardManager;

    invoke-virtual {v0}, Lcom/snapchat/android/cash/CashCardManager;->b()V

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/UnlinkCardTask;->mUnlinkSuccessListener:Lcom/snapchat/android/api2/cash/square/UnlinkCardTask$UnlinkSuccessListener;

    invoke-interface {v0}, Lcom/snapchat/android/api2/cash/square/UnlinkCardTask$UnlinkSuccessListener;->a()V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/UnlinkCardTask;->mUnlinkSuccessListener:Lcom/snapchat/android/api2/cash/square/UnlinkCardTask$UnlinkSuccessListener;

    invoke-virtual {p1}, Lcom/snapchat/android/api2/framework/NetworkResult;->j()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/snapchat/android/api2/cash/square/UnlinkCardTask$UnlinkSuccessListener;->a(I)V

    goto :goto_0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->DELETE:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "cash/card"

    return-object v0
.end method
