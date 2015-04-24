.class Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;->a(Ljava/lang/String;Z)Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

.field final synthetic val$conversationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor$1;->this$0:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    iput-object p2, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor$1;->val$conversationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor$1;->this$0:Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    invoke-static {v0}, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;->a(Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor$1;->val$conversationId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method
