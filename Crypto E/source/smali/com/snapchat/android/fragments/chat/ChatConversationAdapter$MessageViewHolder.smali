.class public Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageViewHolder"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field D:Landroid/widget/TextView;

.field public E:Landroid/view/View;

.field public a:Lcom/snapchat/android/model/chat/ChatFeedItem;

.field b:Landroid/view/View;

.field c:Landroid/view/View;

.field public d:Landroid/view/ViewGroup;

.field e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

.field f:Landroid/view/View;

.field g:Landroid/widget/LinearLayout;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/view/View;

.field m:Lcom/snapchat/android/ui/FeedReplayAnimationView;

.field n:Landroid/widget/ProgressBar;

.field o:Lcom/snapchat/android/ui/TextureVideoView;

.field p:Landroid/view/View;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/ImageView;

.field u:Landroid/widget/ImageView;

.field v:Landroid/widget/ImageView;

.field w:Landroid/widget/ImageView;

.field x:Landroid/widget/ProgressBar;

.field public y:Lcom/snapchat/android/ui/ImageResourceView;

.field public z:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 894
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setLinkTextColor(I)V

    .line 898
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->b()V

    .line 900
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->n:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->x:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 905
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 907
    :cond_2
    return-void
.end method

.method public a(F)V
    .locals 1
    .parameter

    .prologue
    .line 886
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 888
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 891
    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 910
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->z:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 911
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->z:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 913
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v1, v4, :cond_0

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq v1, v3, :cond_1

    .line 915
    :cond_0
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 916
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 917
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 918
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->z:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->z:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    if-eqz v0, :cond_2

    .line 921
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->z:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTop(I)V

    .line 923
    :cond_2
    iput v2, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->A:I

    .line 924
    iput v2, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->B:I

    .line 925
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->C:Z

    .line 927
    :cond_3
    return-void
.end method
