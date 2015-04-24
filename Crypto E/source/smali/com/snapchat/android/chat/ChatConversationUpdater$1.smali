.class Lcom/snapchat/android/chat/ChatConversationUpdater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/chat/ChatConversationUpdater;->b(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/server/chat/ServerChatConversation$ConversationState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snapchat/android/chat/ChatConversationUpdater;


# direct methods
.method constructor <init>(Lcom/snapchat/android/chat/ChatConversationUpdater;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/snapchat/android/chat/ChatConversationUpdater$1;->b:Lcom/snapchat/android/chat/ChatConversationUpdater;

    iput-object p2, p0, Lcom/snapchat/android/chat/ChatConversationUpdater$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConversationUpdater$1;->b:Lcom/snapchat/android/chat/ChatConversationUpdater;

    invoke-static {v0}, Lcom/snapchat/android/chat/ChatConversationUpdater;->a(Lcom/snapchat/android/chat/ChatConversationUpdater;)Lcom/snapchat/android/chat/ChatGapDetector;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/chat/ChatConversationUpdater$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/chat/ChatGapDetector;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConversationUpdater$1;->b:Lcom/snapchat/android/chat/ChatConversationUpdater;

    invoke-static {v0}, Lcom/snapchat/android/chat/ChatConversationUpdater;->b(Lcom/snapchat/android/chat/ChatConversationUpdater;)Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/chat/ChatConversationUpdater$1;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;->a(Ljava/lang/String;Z)Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    .line 441
    :cond_0
    return-void
.end method
