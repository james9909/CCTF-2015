.class Lcom/snapchat/android/api2/cash/UpdateTransactionTask$RequestPayload;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/cash/UpdateTransactionTask;
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

.field saved:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "saved"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/cash/UpdateTransactionTask;

.field transactionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transaction_id"
    .end annotation
.end field

.field version:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/UpdateTransactionTask;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/UpdateTransactionTask;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 45
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/UpdateTransactionTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->a(Lcom/snapchat/android/api2/cash/UpdateTransactionTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask$RequestPayload;->transactionId:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/UpdateTransactionTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->b(Lcom/snapchat/android/api2/cash/UpdateTransactionTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask$RequestPayload;->conversationId:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/UpdateTransactionTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->c(Lcom/snapchat/android/api2/cash/UpdateTransactionTask;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask$RequestPayload;->saved:Ljava/lang/Boolean;

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/UpdateTransactionTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/UpdateTransactionTask;->d(Lcom/snapchat/android/api2/cash/UpdateTransactionTask;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/UpdateTransactionTask$RequestPayload;->version:Ljava/lang/Integer;

    return-void
.end method
