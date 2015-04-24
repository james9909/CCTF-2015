.class public Lcom/snapchat/android/api2/cash/square/LinkCardTask;
.super Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/square/LinkCardTask$ResponsePayload;,
        Lcom/snapchat/android/api2/cash/square/LinkCardTask$RequestPayload;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask",
        "<",
        "Lcom/snapchat/android/api2/cash/square/LinkCardTask$ResponsePayload;",
        ">;"
    }
.end annotation


# instance fields
.field private final mExpiration:Ljava/lang/String;

.field private final mPan:Ljava/lang/String;

.field private final mPaymentId:Ljava/lang/String;

.field private final mPostalCode:Ljava/lang/String;

.field private final mSecurityCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V
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
    .line 41
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/api2/cash/square/LinkCardTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 30
    invoke-direct {p0, p6}, Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask;-><init>(Lcom/snapchat/android/api2/cash/square/SquareBlockerRequestTask$SquareBlockerRequestCallback;)V

    .line 31
    iput-object p2, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->mPan:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->mExpiration:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->mSecurityCode:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->mPostalCode:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->mPaymentId:Ljava/lang/String;

    .line 36
    const-class v0, Lcom/snapchat/android/api2/cash/square/LinkCardTask$ResponsePayload;

    invoke-virtual {p0, v0, p0}, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->a(Ljava/lang/Class;Lcom/snapchat/android/api2/framework/HyperRequest$JsonCallback;)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/square/LinkCardTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->mPan:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/square/LinkCardTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->mExpiration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/api2/cash/square/LinkCardTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->mSecurityCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/api2/cash/square/LinkCardTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/snapchat/android/api2/cash/square/LinkCardTask$RequestPayload;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/cash/square/LinkCardTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/cash/square/LinkCardTask;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->mPaymentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cash/payments/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->mPaymentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/card"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "cash/card"

    goto :goto_0
.end method
