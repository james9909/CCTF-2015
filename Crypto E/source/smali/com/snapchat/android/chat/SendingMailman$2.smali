.class Lcom/snapchat/android/chat/SendingMailman$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/chat/SendingMailman;->f(Lcom/snapchat/android/model/chat/ChatConversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic b:Lcom/snapchat/android/chat/SendingMailman;


# direct methods
.method constructor <init>(Lcom/snapchat/android/chat/SendingMailman;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 998
    iput-object p1, p0, Lcom/snapchat/android/chat/SendingMailman$2;->b:Lcom/snapchat/android/chat/SendingMailman;

    iput-object p2, p0, Lcom/snapchat/android/chat/SendingMailman$2;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1001
    if-nez p1, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman$2;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    sget-object v1, Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;->NOT_UPDATED:Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatConversation$SequenceNumberState;)V

    .line 1003
    iget-object v0, p0, Lcom/snapchat/android/chat/SendingMailman$2;->b:Lcom/snapchat/android/chat/SendingMailman;

    iget-object v1, p0, Lcom/snapchat/android/chat/SendingMailman$2;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/chat/SendingMailman;->e(Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 1005
    :cond_0
    return-void
.end method
