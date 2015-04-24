.class Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/cash/SendingCashManager$ConfirmingCashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment$23;->a([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:Lcom/snapchat/android/fragments/chat/ChatFragment$23;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment$23;Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2314
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$23;

    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 2317
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$23;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    .line 2318
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$23;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/cash/SendingCashManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$23;

    iget-object v1, v1, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    const-string v3, ""

    new-instance v4, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1$1;

    invoke-direct {v4, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Ljava/lang/String;Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;)V

    .line 2333
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$23;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->t(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 2339
    return-void
.end method
