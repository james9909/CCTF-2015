.class Lcom/snapchat/android/fragments/chat/ChatFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->getIsEmoji()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->f(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 1119
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->getCashSwipeDetected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1082
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->P()V

    .line 1083
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->e(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 1084
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    sget-object v1, Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;->a:Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/ui/CashSwiperView$SwipeActivationMethod;)V

    goto :goto_0

    .line 1085
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->i(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ChatCameraButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ChatCameraButton;->getCashtagDetected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1086
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1089
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->P()V

    .line 1090
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->r(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 1091
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->k(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/ui/CursorCallbackEditText;->hasFocus()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;Z)Z

    .line 1092
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->s(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/cash/CashTooltip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CashTooltip;->b()V

    .line 1093
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/cash/CashtagParser;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->k(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/cash/CashtagParser;->b(Landroid/widget/EditText;)I

    move-result v0

    .line 1094
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->e:Lcom/snapchat/android/cash/CashtagParser;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->k(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/cash/CashtagParser;->a(Landroid/text/Editable;)I

    move-result v1

    add-int/2addr v1, v0

    .line 1095
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->k(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/CursorCallbackEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/ui/CursorCallbackEditText;->getSelectionEnd()I

    move-result v2

    .line 1096
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v3, v3, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/cash/SendingCashManager;

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;I)Lcom/snapchat/android/model/chat/CashFeedItem;

    move-result-object v1

    .line 1097
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v3, v3, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/cash/SendingCashManager;

    new-instance v4, Lcom/snapchat/android/fragments/chat/ChatFragment$9$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment$9$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment$9;Lcom/snapchat/android/model/chat/CashFeedItem;II)V

    invoke-virtual {v3, v1, v4}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/cash/SendingCashManager$ConfirmingCashCallback;)V

    goto/16 :goto_0

    .line 1117
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$9;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->u(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    goto/16 :goto_0
.end method
