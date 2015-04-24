.class public Lcom/snapchat/android/api2/chat/ClearConversationTask$RequestPayload;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/chat/ClearConversationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPayload"
.end annotation


# instance fields
.field private conversationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation_id"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/chat/ClearConversationTask;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api2/chat/ClearConversationTask;Ljava/lang/String;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/snapchat/android/api2/chat/ClearConversationTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/chat/ClearConversationTask;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/snapchat/android/api2/chat/ClearConversationTask$RequestPayload;->conversationId:Ljava/lang/String;

    .line 43
    return-void
.end method
