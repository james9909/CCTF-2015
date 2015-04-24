.class Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->a(Lcom/snapchat/android/model/server/chat/ConversationMessage;Lcom/snapchat/android/util/chat/SecureChatService$SecureChatWriteCompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager$1;->a:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager$1;->a:Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;

    invoke-static {v0}, Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;->a(Lcom/snapchat/android/util/chat/SecureChatBatchedMessagesManager;)V

    .line 70
    return-void
.end method
