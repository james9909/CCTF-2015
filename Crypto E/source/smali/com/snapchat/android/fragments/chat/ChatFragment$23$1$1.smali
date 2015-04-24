.class Lcom/snapchat/android/fragments/chat/ChatFragment$23$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;)V
    .locals 0
    .parameter

    .prologue
    .line 2319
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;

    iget-object v1, v1, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->w()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->b(Ljava/lang/String;Z)V

    .line 2326
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$23;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->t(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 2327
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1$1;->a:Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$23$1;->b:Lcom/snapchat/android/fragments/chat/ChatFragment$23;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$23;->c:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->t(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 2331
    return-void
.end method
