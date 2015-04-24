.class public Lcom/snapchat/android/api2/chat/LoadConversationPageTask$ResponsePayload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/chat/LoadConversationPageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponsePayload"
.end annotation


# instance fields
.field mConversation:Lcom/snapchat/android/model/server/chat/ServerChatConversation;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversation"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/chat/LoadConversationPageTask;


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/api2/chat/LoadConversationPageTask;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTask$ResponsePayload;->this$0:Lcom/snapchat/android/api2/chat/LoadConversationPageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
