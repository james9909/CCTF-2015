.class public Lcom/snapchat/android/model/server/cash/CashStateMessage;
.super Lcom/snapchat/android/model/server/chat/ConversationMessage;
.source "SourceFile"


# static fields
.field public static final TYPE:Ljava/lang/String; = "cash_state"


# instance fields
.field private amount:I

.field private created_at:Ljava/lang/Long;

.field private currency_code:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private payment_id:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public canSendOverHTTP()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/snapchat/android/model/server/cash/CashStateMessage;->amount:I

    return v0
.end method

.method public getCreatedAt()J
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/model/server/cash/CashStateMessage;->created_at:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrencyCode()Lcom/snapchat/android/util/CashUtils$CurrencyCode;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/model/server/cash/CashStateMessage;->currency_code:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/model/server/cash/CashStateMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snapchat/android/model/server/cash/CashStateMessage;->payment_id:Ljava/lang/String;

    return-object v0
.end method

.method public needsACK()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
