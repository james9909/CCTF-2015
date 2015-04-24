.class Lcom/snapchat/android/chat/ChatGapDetector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/chat/ChatGapDetector;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snapchat/android/chat/ChatGapDetector;


# direct methods
.method constructor <init>(Lcom/snapchat/android/chat/ChatGapDetector;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/snapchat/android/chat/ChatGapDetector$1;->b:Lcom/snapchat/android/chat/ChatGapDetector;

    iput-object p2, p0, Lcom/snapchat/android/chat/ChatGapDetector$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatGapDetector$1;->b:Lcom/snapchat/android/chat/ChatGapDetector;

    invoke-static {v0}, Lcom/snapchat/android/chat/ChatGapDetector;->a(Lcom/snapchat/android/chat/ChatGapDetector;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/chat/ChatGapDetector$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatGapDetector$1;->b:Lcom/snapchat/android/chat/ChatGapDetector;

    iget-object v1, p0, Lcom/snapchat/android/chat/ChatGapDetector$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/chat/ChatGapDetector;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "ChatGapDetector"

    const-string v1, "CHAT-LOG: Executing conversation refresh"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatGapDetector$1;->b:Lcom/snapchat/android/chat/ChatGapDetector;

    invoke-static {v0}, Lcom/snapchat/android/chat/ChatGapDetector;->b(Lcom/snapchat/android/chat/ChatGapDetector;)Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/chat/ChatGapDetector$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;->a(Ljava/lang/String;Z)Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v0, "ChatGapDetector"

    const-string v1, "CHAT-LOG: Not executing conversation refresh because chat gap is filled"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
