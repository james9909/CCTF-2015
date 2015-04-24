.class Lcom/snapchat/android/api2/cash/square/LinkCardTask$RequestPayload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/JsonEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/cash/square/LinkCardTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestPayload"
.end annotation


# instance fields
.field final expiration:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiration"
    .end annotation
.end field

.field final pan:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pan"
    .end annotation
.end field

.field final postalCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "postal_code"
    .end annotation
.end field

.field final securityCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "security_code"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/cash/square/LinkCardTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/cash/square/LinkCardTask;)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/LinkCardTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/LinkCardTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->a(Lcom/snapchat/android/api2/cash/square/LinkCardTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask$RequestPayload;->pan:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/LinkCardTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->b(Lcom/snapchat/android/api2/cash/square/LinkCardTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask$RequestPayload;->expiration:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/LinkCardTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->c(Lcom/snapchat/android/api2/cash/square/LinkCardTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask$RequestPayload;->securityCode:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/cash/square/LinkCardTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/cash/square/LinkCardTask;->d(Lcom/snapchat/android/api2/cash/square/LinkCardTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/cash/square/LinkCardTask$RequestPayload;->postalCode:Ljava/lang/String;

    return-void
.end method
