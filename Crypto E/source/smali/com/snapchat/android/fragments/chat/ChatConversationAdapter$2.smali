.class Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;->b:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 637
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->s(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;->b:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;)Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$AdapterUiVisibilityListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$AdapterUiVisibilityListener;->b()V

    .line 639
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;->b:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a:Lcom/snapchat/android/cash/ReceivingCashManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/cash/ReceivingCashManager;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/cash/ReceivingCashManager$ResolvingBlockersCallback;)V

    .line 650
    return-void
.end method
