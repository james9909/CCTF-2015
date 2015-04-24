.class Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$RequestPayload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/JsonEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;
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

.field final passcodeConfirmation:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "passcode_confirmation_enabled"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;->a(Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$RequestPayload;->passcodeConfirmation:Z

    .line 49
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;->b(Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/UpdateSquareSettingsTask$RequestPayload;->passcode:Ljava/lang/String;

    return-void
.end method
