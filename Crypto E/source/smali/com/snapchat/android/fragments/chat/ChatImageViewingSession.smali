.class public Lcom/snapchat/android/fragments/chat/ChatImageViewingSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;


# instance fields
.field private final a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatImageViewingSession;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatImageViewingSession;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->E:Landroid/view/View;

    const/16 v1, 0x96

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;I)V

    .line 23
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatImageViewingSession;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->E:Landroid/view/View;

    const/16 v1, 0x96

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    .line 28
    return-void
.end method
