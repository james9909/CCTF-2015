.class Lcom/snapchat/android/fragments/chat/ChatFragment$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;->onChatLinkClickedEvent(Lcom/snapchat/android/util/eventbus/ChatLinkClickedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

.field final synthetic b:Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

.field final synthetic c:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/util/chat/SnapchatUrlSpan;Lcom/snapchat/android/model/chat/ISavableChatFeedItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2164
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->a:Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

    iput-object p3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->b:Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2167
    packed-switch p2, :pswitch_data_0

    .line 2195
    :cond_0
    :goto_0
    return-void

    .line 2169
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->a:Lcom/snapchat/android/util/chat/SnapchatUrlSpan;

    invoke-virtual {v2}, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2171
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2174
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2175
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->b:Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2176
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->b:Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;->C()I

    move-result v1

    .line 2177
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->b:Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    instance-of v0, v0, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v0, :cond_1

    .line 2178
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->z(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v2

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v3

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->b:Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/Chat;IZ)V

    .line 2188
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->w(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 2182
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->b:Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;->B()I

    move-result v1

    .line 2183
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->b:Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    instance-of v0, v0, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v0, :cond_1

    .line 2184
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->z(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v2

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v3

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$20;->b:Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/Chat;IZ)V

    goto :goto_1

    .line 2192
    :pswitch_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 2167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
