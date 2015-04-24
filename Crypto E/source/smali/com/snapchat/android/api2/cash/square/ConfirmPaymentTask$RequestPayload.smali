.class Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask$RequestPayload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/JsonEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestPayload"
.end annotation


# instance fields
.field final passcode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "passcode"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;->a(Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/ConfirmPaymentTask$RequestPayload;->passcode:Ljava/lang/String;

    return-void
.end method
