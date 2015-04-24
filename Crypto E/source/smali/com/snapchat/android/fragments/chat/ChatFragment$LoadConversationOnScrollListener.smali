.class Lcom/snapchat/android/fragments/chat/ChatFragment$LoadConversationOnScrollListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadConversationOnScrollListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2881
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$LoadConversationOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/fragments/chat/ChatFragment$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2881
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatFragment$LoadConversationOnScrollListener;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2907
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2885
    if-nez p2, :cond_0

    .line 2887
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$LoadConversationOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->d(Lcom/snapchat/android/fragments/chat/ChatFragment;F)V

    .line 2889
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$LoadConversationOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->w(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$LoadConversationOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->x(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$LoadConversationOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2893
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$LoadConversationOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->V(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/util/chat/ChatMessagePaginator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/util/chat/ChatMessagePaginator;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2894
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$LoadConversationOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;Z)V

    .line 2902
    :cond_1
    :goto_0
    return-void

    .line 2896
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$LoadConversationOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->y(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$LoadConversationOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api2/chat/LoadConversationPageTaskExecutor;->a(Ljava/lang/String;Z)Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;

    move-result-object v0

    .line 2899
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$LoadConversationOnScrollListener;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/api2/chat/LoadConversationPageTask$TaskStatus;)V

    goto :goto_0
.end method
