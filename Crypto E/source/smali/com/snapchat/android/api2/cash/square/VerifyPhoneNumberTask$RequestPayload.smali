.class Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask$RequestPayload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/JsonEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;
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

.field final synthetic this$0:Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;

.field final verificationCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verification_code"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;->a(Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask$RequestPayload;->phoneNumber:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;->b(Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/VerifyPhoneNumberTask$RequestPayload;->verificationCode:Ljava/lang/String;

    return-void
.end method
