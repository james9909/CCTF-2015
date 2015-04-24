.class Lcom/snapchat/android/chat/ChatConversationUpdater$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/chat/ChatConversationUpdater;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic b:Lcom/snapchat/android/chat/ChatConversationUpdater;


# direct methods
.method constructor <init>(Lcom/snapchat/android/chat/ChatConversationUpdater;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/snapchat/android/chat/ChatConversationUpdater$2;->b:Lcom/snapchat/android/chat/ChatConversationUpdater;

    iput-object p2, p0, Lcom/snapchat/android/chat/ChatConversationUpdater$2;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 584
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConversationUpdater$2;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    sget-object v1, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;)V

    .line 585
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConversationUpdater$2;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(I)V

    .line 586
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConversationUpdater$2;->b:Lcom/snapchat/android/chat/ChatConversationUpdater;

    invoke-static {v0}, Lcom/snapchat/android/chat/ChatConversationUpdater;->c(Lcom/snapchat/android/chat/ChatConversationUpdater;)Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/chat/ChatConversationUpdater$2;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, p0, Lcom/snapchat/android/chat/ChatConversationUpdater$2;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->X()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;J)V

    .line 587
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatConversationUpdater$2;->b:Lcom/snapchat/android/chat/ChatConversationUpdater;

    invoke-static {v0}, Lcom/snapchat/android/chat/ChatConversationUpdater;->c(Lcom/snapchat/android/chat/ChatConversationUpdater;)Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/chat/ChatConversationUpdater$2;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/chat/SendingMailman;->d(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 588
    return-void
.end method
