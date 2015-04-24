.class Lcom/snapchat/android/api2/cash/GetCashEligibilityTask$RequestPayload;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/cash/GetCashEligibilityTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestPayload"
.end annotation


# instance fields
.field recipient:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/cash/GetCashEligibilityTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/GetCashEligibilityTask;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/GetCashEligibilityTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/GetCashEligibilityTask;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 28
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/GetCashEligibilityTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/GetCashEligibilityTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/GetCashEligibilityTask;->a(Lcom/snapchat/android/api2/cash/GetCashEligibilityTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/GetCashEligibilityTask$RequestPayload;->recipient:Ljava/lang/String;

    return-void
.end method
