.class Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$RequestPayload;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;
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

.field final synthetic this$0:Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;

.field transactionIds:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transaction_ids"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 45
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;->a(Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$RequestPayload;->transactionIds:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;->b(Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/MarkTransactionsAsViewedTask$RequestPayload;->conversationId:Ljava/lang/String;

    return-void
.end method
