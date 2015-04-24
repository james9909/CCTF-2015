.class Lcom/snapchat/android/fragments/chat/ChatFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ChatFragment;

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 966
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 988
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->c:Z

    if-eqz v0, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->b:Z

    if-eqz v0, :cond_2

    .line 992
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 993
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 994
    if-ne v0, v3, :cond_2

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->j(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 995
    const-class v4, Landroid/text/style/ImageSpan;

    invoke-interface {p1, v0, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 996
    array-length v3, v0

    if-lez v3, :cond_2

    .line 997
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->c:Z

    .line 998
    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const-string v5, ""

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 999
    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1000
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->c:Z

    .line 1001
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->j(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1002
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 1008
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;)Z

    move-result v4

    .line 1010
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->k(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 1012
    if-eqz v0, :cond_c

    .line 1015
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->l(Lcom/snapchat/android/fragments/chat/ChatFragment;)F

    move-result v3

    cmpl-float v3, v3, v6

    if-nez v3, :cond_3

    .line 1016
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/ui/ChatCameraButton;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;F)F

    .line 1019
    :cond_3
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->m(Lcom/snapchat/android/fragments/chat/ChatFragment;)F

    move-result v3

    cmpl-float v3, v3, v6

    if-nez v3, :cond_4

    .line 1020
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->k(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->b(Lcom/snapchat/android/fragments/chat/ChatFragment;F)F

    .line 1023
    :cond_4
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->m(Lcom/snapchat/android/fragments/chat/ChatFragment;)F

    move-result v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    add-float/2addr v3, v5

    .line 1024
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-le v0, v2, :cond_7

    move v0, v2

    .line 1026
    :goto_1
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->l(Lcom/snapchat/android/fragments/chat/ChatFragment;)F

    move-result v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_8

    :cond_5
    move v0, v2

    .line 1029
    :goto_2
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v5

    if-eqz v0, :cond_9

    const/16 v3, 0x8

    :goto_3
    invoke-virtual {v5, v3}, Lcom/snapchat/android/ui/ChatCameraButton;->setVisibility(I)V

    .line 1031
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1032
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->n(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/here/HereTooltip;

    move-result-object v3

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v5}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v5

    if-nez v0, :cond_a

    if-nez v4, :cond_a

    move v0, v2

    :goto_4
    invoke-virtual {v3, v5, v0}, Lcom/snapchat/android/ui/here/HereTooltip;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    .line 1036
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->az()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 1041
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->k(Z)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 1024
    goto :goto_1

    :cond_8
    move v0, v1

    .line 1026
    goto :goto_2

    :cond_9
    move v3, v1

    .line 1029
    goto :goto_3

    :cond_a
    move v0, v1

    .line 1032
    goto :goto_4

    .line 1043
    :cond_b
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/chat/ChatConversation;->k(Z)V

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 972
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 977
    const/4 v1, 0x2

    if-gt p4, v1, :cond_1

    .line 978
    add-int v1, p2, p4

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 979
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/snapchat/android/util/chat/EmojiDetector;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/snapchat/android/ui/ChatCameraButton;->setIsEmoji(Z)V

    .line 983
    :goto_0
    if-ge p4, p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->b:Z

    .line 984
    return-void

    .line 981
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$6;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/ChatCameraButton;->setIsEmoji(Z)V

    goto :goto_0
.end method
