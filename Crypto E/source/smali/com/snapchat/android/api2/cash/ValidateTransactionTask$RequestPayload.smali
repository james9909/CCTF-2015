.class Lcom/snapchat/android/api2/cash/ValidateTransactionTask$RequestPayload;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/cash/ValidateTransactionTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestPayload"
.end annotation


# instance fields
.field final amount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount"
    .end annotation
.end field

.field final currencyCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency_code"
    .end annotation
.end field

.field final isRain:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rain"
    .end annotation
.end field

.field final message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field final recipient:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/cash/ValidateTransactionTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/ValidateTransactionTask;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/ValidateTransactionTask;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/ValidateTransactionTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;->a(Lcom/snapchat/android/api2/cash/ValidateTransactionTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$RequestPayload;->recipient:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/ValidateTransactionTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;->b(Lcom/snapchat/android/api2/cash/ValidateTransactionTask;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$RequestPayload;->amount:I

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/ValidateTransactionTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;->c(Lcom/snapchat/android/api2/cash/ValidateTransactionTask;)Lcom/snapchat/android/util/CashUtils$CurrencyCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/CashUtils$CurrencyCode;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$RequestPayload;->currencyCode:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/ValidateTransactionTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;->d(Lcom/snapchat/android/api2/cash/ValidateTransactionTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$RequestPayload;->message:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/ValidateTransactionTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/ValidateTransactionTask;->e(Lcom/snapchat/android/api2/cash/ValidateTransactionTask;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/api2/cash/ValidateTransactionTask$RequestPayload;->isRain:Z

    return-void
.end method
