.class Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/JsonEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestPayload"
.end annotation


# instance fields
.field private action:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field

.field private cardToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "card_token"
    .end annotation
.end field

.field private extras:Lcom/snapchat/android/api2/cash/square/data/CashPaymentExtras;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extras"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private money:Lcom/snapchat/android/api2/cash/square/data/Money;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "amount_money"
    .end annotation
.end field

.field private recipient:Lcom/snapchat/android/api2/cash/square/data/CashCustomer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient"
    .end annotation
.end field

.field private recipientCustomization:Lcom/snapchat/android/api2/cash/square/data/CashCustomization;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient_customization"
    .end annotation
.end field

.field private senderCustomization:Lcom/snapchat/android/api2/cash/square/data/CashCustomization;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sender_customization"
    .end annotation
.end field

.field private signature:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signature"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 34
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;->a(Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->id:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;->SEND:Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/square/data/CashPayment$Action;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->action:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashCustomer;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;

    invoke-static {v1}, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;->a(Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lcom/snapchat/android/api2/cash/square/data/CashCustomer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->recipient:Lcom/snapchat/android/api2/cash/square/data/CashCustomer;

    .line 41
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/Money;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;

    invoke-static {v1}, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;->a(Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->g()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/cash/square/data/Money;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->money:Lcom/snapchat/android/api2/cash/square/data/Money;

    .line 43
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;->b(Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->cardToken:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;->a(Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->signature:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashPaymentExtras;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;

    invoke-static {v1}, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;->a(Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->w()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/cash/square/data/CashPaymentExtras;-><init>(Z)V

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->extras:Lcom/snapchat/android/api2/cash/square/data/CashPaymentExtras;

    .line 49
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashCustomization;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;

    invoke-static {v1}, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;->a(Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->A()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/cash/square/data/CashCustomization;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->senderCustomization:Lcom/snapchat/android/api2/cash/square/data/CashCustomization;

    .line 52
    new-instance v0, Lcom/snapchat/android/api2/cash/square/data/CashCustomization;

    iget-object v1, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;

    invoke-static {v1}, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;->a(Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask;)Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->B()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snapchat/android/api2/cash/square/data/CashCustomization;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/InitiateCashPaymentTask$RequestPayload;->recipientCustomization:Lcom/snapchat/android/api2/cash/square/data/CashCustomization;

    return-void
.end method
