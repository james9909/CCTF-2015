.class public Lcom/snapchat/android/api2/chat/LoadConversationPageTask$RequestPayload;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/chat/LoadConversationPageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPayload"
.end annotation


# instance fields
.field final mConversationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_id"
    .end annotation
.end field

.field final mOffset:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offset"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/chat/LoadConversationPageTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/chat/LoadConversationPageTask;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/chat/LoadConversationPageTask;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$RequestPayload;->mConversationId:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$RequestPayload;->mOffset:Ljava/lang/String;

    .line 139
    return-void
.end method
