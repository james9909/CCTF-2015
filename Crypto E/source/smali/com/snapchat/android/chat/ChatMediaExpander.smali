.class public Lcom/snapchat/android/chat/ChatMediaExpander;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/ListView;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/snapchat/android/chat/ChatMediaExpander;->a:Landroid/widget/ListView;

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 92
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatMediaExpander;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatMediaExpander;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    move v1, v2

    .line 94
    :goto_0
    if-gt v1, v3, :cond_1

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatMediaExpander;->a:Landroid/widget/ListView;

    sub-int v4, v1, v2

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->b()V

    .line 94
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/snapchat/android/chat/ChatMediaExpander;->b:I

    .line 28
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/model/chat/ChatFeedItem;)Z
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 111
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ar()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ar()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 5

    .prologue
    .line 120
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatMediaExpander;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 121
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatMediaExpander;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    move v1, v2

    .line 122
    :goto_0
    if-gt v1, v3, :cond_1

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/chat/ChatMediaExpander;->a:Landroid/widget/ListView;

    sub-int v4, v1, v2

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    .line 125
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->C:Z

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 129
    :goto_1
    return v0

    .line 122
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
