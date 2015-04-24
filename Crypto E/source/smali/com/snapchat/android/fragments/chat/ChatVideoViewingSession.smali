.class public Lcom/snapchat/android/fragments/chat/ChatVideoViewingSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/chat/ChatFeedItemViewingSession;


# instance fields
.field private final a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatVideoViewingSession;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    .line 18
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatVideoViewingSession;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->o:Lcom/snapchat/android/ui/TextureVideoView;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatVideoViewingSession;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->o:Lcom/snapchat/android/ui/TextureVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->seekTo(I)V

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatVideoViewingSession;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->E:Landroid/view/View;

    const/16 v1, 0x96

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;I)V

    .line 26
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatVideoViewingSession;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->o:Lcom/snapchat/android/ui/TextureVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatVideoViewingSession;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->o:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatVideoViewingSession;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->o:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->start()V

    .line 29
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatVideoViewingSession;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->E:Landroid/view/View;

    const/16 v1, 0x96

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->b(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    .line 34
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatVideoViewingSession;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->o:Lcom/snapchat/android/ui/TextureVideoView;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatVideoViewingSession;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->o:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->pause()V

    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatVideoViewingSession;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->o:Lcom/snapchat/android/ui/TextureVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->seekTo(I)V

    .line 38
    :cond_0
    return-void
.end method
