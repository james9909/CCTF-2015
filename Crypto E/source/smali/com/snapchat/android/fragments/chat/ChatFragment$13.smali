.class Lcom/snapchat/android/fragments/chat/ChatFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 1171
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1174
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1252
    :cond_0
    :goto_0
    return-void

    .line 1176
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->g(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    .line 1177
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->x(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1178
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->x(Lcom/snapchat/android/fragments/chat/ChatFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 1179
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/snapchat/android/model/Snap;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/snapchat/android/model/chat/ChatScreenshot;

    if-nez v1, :cond_0

    .line 1180
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->Y()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1181
    instance-of v1, v0, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v1, :cond_2

    .line 1182
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->z(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    check-cast v0, Lcom/snapchat/android/model/chat/Chat;

    invoke-virtual {v1, v2, v0, v5, v5}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/Chat;ZZ)V

    goto :goto_0

    .line 1185
    :cond_2
    instance-of v1, v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v1, :cond_0

    .line 1186
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 1188
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/CashTransaction;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->r(Ljava/lang/String;)V

    .line 1190
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->r(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 1191
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v1, v1, Lcom/snapchat/android/fragments/chat/ChatFragment;->f:Lcom/snapchat/android/cash/SendingCashManager;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/fragments/chat/ChatFragment$13$1;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$13$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment$13;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/snapchat/android/cash/SendingCashManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/cash/SendingCashManager$SendingCashCallback;)V

    goto :goto_0

    .line 1206
    :cond_3
    instance-of v1, v0, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v1, :cond_4

    .line 1207
    if-eqz p2, :cond_4

    .line 1208
    const v1, 0x7f0a0116

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1209
    instance-of v2, v1, Lcom/snapchat/android/ui/ImageResourceView;

    if-eqz v2, :cond_4

    .line 1210
    check-cast v1, Lcom/snapchat/android/ui/ImageResourceView;

    .line 1211
    invoke-virtual {v1}, Lcom/snapchat/android/ui/ImageResourceView;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1212
    invoke-virtual {v1}, Lcom/snapchat/android/ui/ImageResourceView;->a()V

    goto/16 :goto_0

    .line 1220
    :cond_4
    instance-of v1, v0, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1222
    check-cast v1, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    .line 1225
    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ar()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p2, :cond_5

    .line 1226
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    .line 1227
    iget-object v3, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->z:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1229
    iget-object v2, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->y:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v2}, Lcom/snapchat/android/ui/ImageResourceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1231
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    neg-int v2, v2

    if-le v3, v2, :cond_0

    .line 1236
    :cond_5
    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;->n()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1237
    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;->C()I

    move-result v2

    .line 1238
    instance-of v3, v0, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v3, :cond_6

    .line 1239
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->z(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v4

    check-cast v1, Lcom/snapchat/android/model/chat/Chat;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/Chat;IZ)V

    .line 1249
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1243
    :cond_7
    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;->B()I

    move-result v2

    .line 1244
    instance-of v3, v0, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v3, :cond_6

    .line 1245
    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v3}, Lcom/snapchat/android/fragments/chat/ChatFragment;->z(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v3

    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$13;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v4}, Lcom/snapchat/android/fragments/chat/ChatFragment;->h(Lcom/snapchat/android/fragments/chat/ChatFragment;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v4

    check-cast v1, Lcom/snapchat/android/model/chat/Chat;

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/Chat;IZ)V

    goto :goto_1
.end method
