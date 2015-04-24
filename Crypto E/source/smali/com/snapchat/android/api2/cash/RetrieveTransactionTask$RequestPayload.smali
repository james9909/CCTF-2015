.class Lcom/snapchat/android/api2/cash/RetrieveTransactionTask$RequestPayload;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestPayload"
.end annotation


# instance fields
.field conversationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_id"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;

.field transactionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transaction_id"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/RetrieveTransactionTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 30
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/RetrieveTransactionTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;->a(Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/RetrieveTransactionTask$RequestPayload;->transactionId:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/RetrieveTransactionTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;->b(Lcom/snapchat/android/api2/cash/RetrieveTransactionTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/RetrieveTransactionTask$RequestPayload;->conversationId:Ljava/lang/String;

    return-void
.end method
