.class Lcom/snapchat/android/chat/SendingMailman$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/server/chat/ConversationMessage;

.field final synthetic b:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic c:Lcom/snapchat/android/chat/SendingMailman;


# direct methods
.method constructor <init>(Lcom/snapchat/android/chat/SendingMailman;Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/snapchat/android/chat/SendingMailman$1;->c:Lcom/snapchat/android/chat/SendingMailman;

    iput-object p2, p0, Lcom/snapchat/android/chat/SendingMailman$1;->a:Lcom/snapchat/android/model/server/chat/ConversationMessage;

    iput-object p3, p0, Lcom/snapchat/android/chat/SendingMailman$1;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman$1;->c:Lcom/snapchat/android/chat/SendingMailman;

    invoke-static {v0}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/chat/SendingMailman;)Lcom/snapchat/android/analytics/SendingMailmanAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/chat/SendingMailman$1;->a:Lcom/snapchat/android/model/server/chat/ConversationMessage;

    invoke-virtual {v0, v1, p1, p2}, Lcom/snapchat/android/analytics/SendingMailmanAnalytics;->a(Lcom/snapchat/android/model/server/chat/ConversationMessage;ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;)V

    .line 219
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman$1;->c:Lcom/snapchat/android/chat/SendingMailman;

    iget-object v1, p0, Lcom/snapchat/android/chat/SendingMailman$1;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, p0, Lcom/snapchat/android/chat/SendingMailman$1;->a:Lcom/snapchat/android/model/server/chat/ConversationMessage;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ConversationMessage;ZLcom/snapchat/android/util/chat/SecureChatService$Protocol;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback$Status;Ljava/lang/String;)V

    .line 221
    return-void
.end method
