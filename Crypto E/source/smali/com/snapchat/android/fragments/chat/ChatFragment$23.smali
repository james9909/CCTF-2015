.class Lcom/snapchat/android/fragments/chat/ChatFragment$23;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/ChatConversation;

.field final synthetic b:I

.field final synthetic c:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/ChatConversation;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2309
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iput p3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->b:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/cash/SendingCashManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->a:Lcom/snapchat/android/model/chat/ChatConversation;

    iget v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->b:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;IZ)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v0

    .line 2314
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/cash/SendingCashManager;

    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment$23;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/cash/SendingCashManager$ConfirmingCashCallback;)V

    .line 2341
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2309
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
