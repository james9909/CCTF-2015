.class public Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;
.super Lcom/snapchat/android/api2/framework/BasicScRequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/api2/cash/RetrieveTransactionTask$RequestPayload;
    }
.end annotation


# instance fields
.field private final mConversationId:Ljava/lang/String;

.field private final mTransactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/BasicScRequestTask;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;->mTransactionId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;->mConversationId:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;->mTransactionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;->mConversationId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/snapchat/android/api2/cash/RetrieveTransactionTask$RequestPayload;

    invoke-direct {v0, p0}, Lcom/snapchat/android/api2/cash/RetrieveTransactionTask$RequestPayload;-><init>(Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;)V

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "/cash/transaction"

    return-object v0
.end method
