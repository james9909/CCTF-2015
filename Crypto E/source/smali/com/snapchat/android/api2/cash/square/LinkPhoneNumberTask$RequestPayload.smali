.class Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask$RequestPayload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/JsonEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestPayload"
.end annotation


# instance fields
.field final phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_number"
    .end annotation
.end field

.field final signature:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signature"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask;->a(Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask$RequestPayload;->phoneNumber:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask;->b(Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/LinkPhoneNumberTask$RequestPayload;->signature:Ljava/lang/String;

    return-void
.end method
