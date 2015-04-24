.class public Lcom/snapchat/android/model/server/cash/CashRainMessage;
.super Lcom/snapchat/android/model/server/chat/ConversationMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "cash_rain"


# instance fields
.field public count:J

.field public created_at:J


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;)V
    .locals 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/server/chat/ConversationMessage;-><init>(Lcom/snapchat/android/model/server/chat/ConversationMessage$Builder;)V

    .line 17
    #getter for: Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;->mCreatedAt:J
    invoke-static {p1}, Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;->access$000(Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/server/cash/CashRainMessage;->created_at:J

    .line 18
    #getter for: Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;->mCount:J
    invoke-static {p1}, Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;->access$100(Lcom/snapchat/android/model/server/cash/CashRainMessage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/model/server/cash/CashRainMessage;->count:J

    .line 19
    return-void
.end method


# virtual methods
.method public canSendOverHTTP()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/snapchat/android/model/server/cash/CashRainMessage;->count:J

    return-wide v0
.end method

.method public getCreatedAt()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/snapchat/android/model/server/cash/CashRainMessage;->created_at:J

    return-wide v0
.end method

.method public needsACK()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
