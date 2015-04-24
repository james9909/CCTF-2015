.class Lcom/snapchat/android/api2/GetConversationAuthTokenTask$RequestPayload;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/GetConversationAuthTokenTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestPayload"
.end annotation


# instance fields
.field final conversationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_id"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/GetConversationAuthTokenTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/GetConversationAuthTokenTask;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/snapchat/android/api2/GetConversationAuthTokenTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/GetConversationAuthTokenTask;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/snapchat/android/api2/GetConversationAuthTokenTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/GetConversationAuthTokenTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/GetConversationAuthTokenTask;->a(Lcom/snapchat/android/api2/GetConversationAuthTokenTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/GetConversationAuthTokenTask$RequestPayload;->conversationId:Ljava/lang/String;

    return-void
.end method
