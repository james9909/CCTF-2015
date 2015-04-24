.class public Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;
.super Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/cash/CashRainMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCount:J

.field private mCreatedAt:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/snapchat/android/model/server/chat/SignedPayload;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    const-string v0, "cash_rain"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/model/server/chat/SignedPayload;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;)J
    .locals 2
    .parameter

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;->mCreatedAt:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;)J
    .locals 2
    .parameter

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;->mCount:J

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/snapchat/android/model/server/cash/CashRainMessage;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/snapchat/android/model/server/cash/CashRainMessage;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/server/cash/CashRainMessage;-><init>(Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/snapchat/android/model/server/chat/SCMessage;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;->build()Lcom/snapchat/android/model/server/cash/CashRainMessage;

    move-result-object v0

    return-object v0
.end method

.method public setCount(J)Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;->mCount:J

    .line 59
    return-object p0
.end method

.method public setCreatedAt(J)Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;->mCreatedAt:J

    .line 54
    return-object p0
.end method
