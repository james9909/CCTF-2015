.class Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/cash/ReceivingCashManager$ResolvingBlockersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2$1;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2$1;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;->b:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;)Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$AdapterUiVisibilityListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$AdapterUiVisibilityListener;->c()V

    .line 644
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2$1;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;->b:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;)Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$AdapterUiVisibilityListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$AdapterUiVisibilityListener;->c()V

    .line 648
    return-void
.end method
