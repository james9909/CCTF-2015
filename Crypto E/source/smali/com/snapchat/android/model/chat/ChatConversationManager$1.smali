.class Lcom/snapchat/android/model/chat/ChatConversationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/model/chat/ChatConversationManager;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/model/chat/ChatConversationManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/chat/ChatConversationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversationManager$1;->this$0:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/snapchat/android/model/chat/ChatConversationManager$1;->this$0:Lcom/snapchat/android/model/chat/ChatConversationManager;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->g()V

    .line 182
    return-void
.end method
