.class public Lcom/snapchat/android/model/server/ServerCashTransaction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mAmount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation
.end field

.field public mCashRecipientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient_id"
    .end annotation
.end field

.field public mCashSenderId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sender_id"
    .end annotation
.end field

.field public mConversationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_id"
    .end annotation
.end field

.field public mCreatedTimestamp:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field public mCurrencyCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency_code"
    .end annotation
.end field

.field public mFromRain:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rain"
    .end annotation
.end field

.field public mIsInvisible:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invisible"
    .end annotation
.end field

.field public mIsSavedByRecipient:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient_saved"
    .end annotation
.end field

.field public mIsSavedBySender:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sender_saved"
    .end annotation
.end field

.field public mIsViewedByRecipient:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient_viewed"
    .end annotation
.end field

.field public mIsViewedBySender:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sender_viewed"
    .end annotation
.end field

.field public mMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public mProvider:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "provider"
    .end annotation
.end field

.field public mRecipientSaveVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient_save_version"
    .end annotation
.end field

.field public mRecipientUsername:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient_username"
    .end annotation
.end field

.field public mSenderSaveVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sender_save_version"
    .end annotation
.end field

.field public mSenderUsername:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sender_username"
    .end annotation
.end field

.field public mTransactionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transaction_id"
    .end annotation
.end field

.field public mTransactionStatusCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field public mUpdatedTimestamp:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_updated_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "SQUARE"

    iput-object v0, p0, Lcom/snapchat/android/model/server/ServerCashTransaction;->mProvider:Ljava/lang/String;

    return-void
.end method
