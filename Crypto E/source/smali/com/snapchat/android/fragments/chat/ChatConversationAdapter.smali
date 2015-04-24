.class public Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$3;,
        Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$AdapterUiVisibilityListener;,
        Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;,
        Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;
    }
.end annotation


# instance fields
.field protected a:Lcom/snapchat/android/cash/ReceivingCashManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$AdapterUiVisibilityListener;

.field private final g:Lcom/snapchat/android/ui/listeners/AdapterOnGetViewListener;

.field private final h:Landroid/graphics/Typeface;

.field private final i:Lcom/snapchat/android/fragments/chat/ReleaseWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$AdapterUiVisibilityListener;Lcom/snapchat/android/ui/listeners/AdapterOnGetViewListener;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;",
            "Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$AdapterUiVisibilityListener;",
            "Lcom/snapchat/android/ui/listeners/AdapterOnGetViewListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 86
    const-string v0, "sans-serif-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->h:Landroid/graphics/Typeface;

    .line 88
    new-instance v0, Lcom/snapchat/android/fragments/chat/ReleaseWindow;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/chat/ReleaseWindow;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->i:Lcom/snapchat/android/fragments/chat/ReleaseWindow;

    .line 93
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->c:Landroid/view/LayoutInflater;

    .line 94
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->d:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->e:Ljava/util/List;

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    iput-object p3, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->f:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$AdapterUiVisibilityListener;

    .line 103
    iput-object p4, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->g:Lcom/snapchat/android/ui/listeners/AdapterOnGetViewListener;

    .line 105
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I
    .locals 2
    .parameter

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;)Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    move-result-object v0

    .line 203
    sget-object v1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$3;->a:[I

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 219
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shouldn\'t reach here. CHAT_UNKNOWN Should catch everything"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :pswitch_0
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    .line 208
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 212
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 215
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 217
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;)Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$AdapterUiVisibilityListener;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->f:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$AdapterUiVisibilityListener;

    return-object v0
.end method

.method private static a(Ljava/util/List;)Lcom/snapchat/android/model/chat/ChatFeedItem;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;",
            ">;)",
            "Lcom/snapchat/android/model/chat/ChatFeedItem;"
        }
    .end annotation

    .prologue
    .line 180
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 181
    :goto_0
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    .line 182
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 183
    instance-of v2, v0, Lcom/snapchat/android/model/chat/Chat;

    if-eqz v2, :cond_1

    .line 187
    :goto_2
    return-object v0

    .line 180
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 181
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 187
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 766
    invoke-static {}, Lcom/snapchat/android/util/chat/EmojiDetector;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/chat/EmojiDetector;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 775
    :goto_0
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/Snap;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x7f020039

    const/4 v1, 0x0

    .line 520
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->m:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setVisibility(I)V

    .line 521
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/snapchat/android/model/Snap;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->h:Landroid/widget/TextView;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 525
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/snapchat/android/model/Snap;->ae()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/util/DateTimeUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 528
    invoke-direct {p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V

    .line 529
    invoke-direct {p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V

    .line 530
    invoke-direct {p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/Snap;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V

    .line 531
    invoke-direct {p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/Snap;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V

    .line 533
    invoke-virtual {p2}, Lcom/snapchat/android/model/Snap;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->m:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v0, v4, v4}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setIconResources(II)V

    .line 536
    :cond_0
    return-void
.end method

.method private a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/CashFeedItem;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 539
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;)V

    .line 540
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->r:Landroid/widget/TextView;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 541
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->s:Landroid/widget/TextView;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 543
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/CashFeedItem;->ae()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/util/DateTimeUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 546
    invoke-direct {p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V

    .line 547
    invoke-direct {p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V

    .line 548
    invoke-direct {p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V

    .line 552
    invoke-static {p2}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    :cond_0
    return-void
.end method

.method private a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 439
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->D:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->D:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    return-void
.end method

.method private a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/ChatFeedItem;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x7f08

    .line 410
    instance-of v0, p2, Lcom/snapchat/android/model/chat/ChatDateHeader;

    if-eqz v0, :cond_1

    .line 411
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    .line 418
    :goto_0
    instance-of v1, v0, Lcom/snapchat/android/model/chat/ChatUnknown;

    if-eqz v1, :cond_2

    .line 419
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 436
    :cond_0
    :goto_1
    return-void

    .line 412
    :cond_1
    instance-of v0, p2, Lcom/snapchat/android/model/chat/ChatHeader;

    if-eqz v0, :cond_4

    .line 414
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    goto :goto_0

    .line 421
    :cond_2
    instance-of v1, v0, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 425
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 430
    :cond_3
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_4
    move-object v0, p2

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/ChatMedia;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    .line 485
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;)V

    .line 487
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatMedia;->ae()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/util/DateTimeUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 490
    invoke-direct {p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V

    .line 491
    invoke-direct {p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V

    .line 493
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->y:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/ui/ImageResourceView;->setChatMedia(Lcom/snapchat/android/model/chat/ChatMedia;)V

    .line 494
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->y:Lcom/snapchat/android/ui/ImageResourceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ImageResourceView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 497
    iget-object v1, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->y:Lcom/snapchat/android/ui/ImageResourceView;

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/ImageResourceView;->setMinimumHeight(I)V

    .line 498
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->p:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 500
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->y:Lcom/snapchat/android/ui/ImageResourceView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ImageResourceView;->setAlpha(F)V

    .line 501
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    return-void
.end method

.method private a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/ChatSharedDSnap;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 560
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;)V

    .line 562
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatSharedDSnap;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->h:Landroid/widget/TextView;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 564
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatSharedDSnap;->ae()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/util/DateTimeUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 567
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->p:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    invoke-direct {p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V

    .line 571
    invoke-direct {p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V

    .line 573
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatSharedDSnap;->G()Lcom/snapchat/android/model/chat/ChatSharedDSnap$MediaType;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/chat/ChatSharedDSnap$MediaType;->VIDEO:Lcom/snapchat/android/model/chat/ChatSharedDSnap$MediaType;

    if-ne v0, v1, :cond_1

    .line 574
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->y:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/ImageResourceView;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 576
    iget-object v1, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->o:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v1, v4}, Lcom/snapchat/android/ui/TextureVideoView;->setVisibility(I)V

    .line 578
    iget-object v1, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->o:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/TextureVideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 579
    iget-object v2, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/lit8 v0, v0, 0x3

    sub-int v0, v2, v0

    .line 580
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int v2, v0, v2

    int-to-float v2, v2

    .line 581
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 582
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 583
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->o:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->o:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/TextureVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->o:Lcom/snapchat/android/ui/TextureVideoView;

    new-instance v1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 592
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->o:Lcom/snapchat/android/ui/TextureVideoView;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatSharedDSnap;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/TextureVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->y:Lcom/snapchat/android/ui/ImageResourceView;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/ImageResourceView;->setVisibility(I)V

    .line 596
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->p:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 597
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/ChatText;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 475
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;)V

    .line 476
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatText;->ae()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/util/DateTimeUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 479
    invoke-direct {p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V

    .line 480
    invoke-direct {p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V

    .line 481
    return-void
.end method

.method private a(Lcom/snapchat/android/model/Snap;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 812
    invoke-virtual {p1}, Lcom/snapchat/android/model/Snap;->V()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->Z()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    :cond_0
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->m:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setVisibility(I)V

    .line 814
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 820
    :goto_0
    return-void

    .line 816
    :cond_1
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->m:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setDisplayedIcon(Lcom/snapchat/android/model/Snap;)V

    .line 817
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->m:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setVisibility(I)V

    .line 818
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->n:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 616
    const/4 v3, 0x0

    .line 617
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->g:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 619
    iget-object v4, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->f:Landroid/view/View;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->W()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->V()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 623
    invoke-static {p1}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 624
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->V()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 625
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object v0, v3

    .line 658
    :goto_1
    iget-object v3, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    if-nez v0, :cond_1

    .line 662
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 665
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->x()I

    move-result v0

    .line 666
    if-nez v0, :cond_6

    .line 667
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 674
    :goto_2
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->r:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->w()Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 677
    iget-object v2, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 682
    :goto_3
    return-void

    :cond_2
    move v0, v1

    .line 619
    goto :goto_0

    .line 628
    :cond_3
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$3;->b:[I

    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->h()Lcom/snapchat/android/model/CashTransaction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction;->o()Lcom/snapchat/android/model/CashTransaction$TransactionStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/CashTransaction$TransactionStatus;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    :cond_4
    move-object v0, v3

    goto :goto_1

    .line 631
    :pswitch_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->K()Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    move-result-object v0

    sget-object v4, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->RECEIVING:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    if-ne v0, v4, :cond_5

    .line 632
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object v0, v3

    goto :goto_1

    .line 633
    :cond_5
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->Z()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/CashUtils;->a(Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 634
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$2;-><init>(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    goto :goto_1

    .line 669
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V

    .line 670
    iget-object v3, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->x:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 671
    iget-object v3, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->u:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 672
    iget-object v3, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->u:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 680
    :cond_7
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 628
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 742
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 743
    instance-of v0, p1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->V()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 750
    :goto_0
    return-void

    .line 748
    :cond_1
    const/high16 v0, -0x100

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 778
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatUnknown;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 794
    :goto_0
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 797
    instance-of v1, p1, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;->n()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 799
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 800
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 808
    :goto_1
    iget-object v1, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->l:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    return-void

    .line 782
    :cond_0
    invoke-static {p1}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 783
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatScreenshot;

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->V()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 784
    :cond_1
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 787
    :cond_2
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 790
    :cond_3
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 802
    :cond_4
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 804
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method private a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 716
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ap()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setVisibility(I)V

    .line 734
    :goto_0
    return-void

    .line 720
    :cond_0
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ap()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setVisibility(I)V

    .line 724
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    invoke-static {v0, p2}, Lcom/snapchat/android/util/ChatLinkUtils;->a(Lcom/snapchat/android/model/chat/ISavableChatFeedItem;Lcom/snapchat/android/ui/FixTouchConsumeTextView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/snapchat/android/ui/FixTouchConsumeTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 729
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 730
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 731
    const-string v0, "sans-serif-light"

    invoke-static {p2, v0}, Lcom/snapchat/android/util/EmojiUtils;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 733
    :cond_2
    invoke-direct {p0, p2}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private b(Lcom/snapchat/android/model/chat/ChatFeedItem;)Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;
    .locals 1
    .parameter

    .prologue
    .line 223
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatText;

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->a:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    .line 240
    :goto_0
    return-object v0

    .line 225
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/Snap;

    if-eqz v0, :cond_1

    .line 226
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->d:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    goto :goto_0

    .line 227
    :cond_1
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatDateHeader;

    if-eqz v0, :cond_2

    .line 228
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->b:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    goto :goto_0

    .line 229
    :cond_2
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatHeader;

    if-eqz v0, :cond_3

    .line 230
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->c:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    goto :goto_0

    .line 231
    :cond_3
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatSharedDSnap;

    if-eqz v0, :cond_4

    .line 232
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->i:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    goto :goto_0

    .line 233
    :cond_4
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatMedia;

    if-eqz v0, :cond_5

    .line 234
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->e:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    goto :goto_0

    .line 235
    :cond_5
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ChatScreenshot;

    if-eqz v0, :cond_6

    .line 236
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->f:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    goto :goto_0

    .line 237
    :cond_6
    instance-of v0, p1, Lcom/snapchat/android/model/chat/CashFeedItem;

    if-eqz v0, :cond_7

    .line 238
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->h:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    goto :goto_0

    .line 240
    :cond_7
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->g:Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    goto :goto_0
.end method

.method private b(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f020036

    const/16 v4, 0x8

    .line 505
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->m:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setVisibility(I)V

    .line 506
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 508
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->h:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->h:Landroid/widget/TextView;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 510
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-interface {p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/util/DateTimeUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 513
    invoke-direct {p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V

    .line 514
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->m:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v0, v5, v5}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setIconResources(II)V

    .line 516
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    return-void
.end method

.method private b(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/ChatFeedItem;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 445
    invoke-interface {p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->l()Ljava/lang/String;

    move-result-object v0

    .line 446
    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v1

    .line 448
    iget-object v2, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->D:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    iget-object v2, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 450
    iget-object v2, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->i:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 451
    instance-of v1, v1, Lcom/snapchat/android/model/chat/ChatUnknown;

    if-eqz v1, :cond_1

    .line 452
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    const v2, 0x7f0c006d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 468
    :goto_0
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    .line 469
    instance-of v0, v0, Lcom/snapchat/android/model/chat/ChatDateHeader;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->b:Landroid/view/View;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 472
    :cond_0
    return-void

    .line 456
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 457
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    const v1, 0x7f0c0124

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 458
    iget-object v1, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 461
    :cond_3
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FriendUtils;->a(Ljava/lang/String;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 463
    iget-object v1, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private b(Lcom/snapchat/android/model/Snap;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 823
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->k:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    instance-of v0, p1, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v0, :cond_0

    .line 825
    check-cast p1, Lcom/snapchat/android/model/ReceivedSnap;

    .line 826
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->N()D

    move-result-wide v0

    .line 827
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->K()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 828
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->N()D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    :cond_0
    return-void
.end method

.method private b(Lcom/snapchat/android/model/chat/CashFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 685
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    :goto_0
    return-void

    .line 689
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/CashFeedItem;->q()V

    .line 691
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->v:Landroid/widget/ImageView;

    .line 692
    iget-object v1, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->w:Landroid/widget/ImageView;

    .line 695
    const v2, 0x7f0200b2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 696
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 697
    const v2, 0x7f0200bf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 698
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 701
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 702
    invoke-virtual {v0, v3, v3}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    .line 704
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 705
    invoke-virtual {v0, v3, v3}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    goto :goto_0
.end method

.method private b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 758
    instance-of v0, p1, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ISavableChatFeedItem;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    const v1, 0x7f0d0034

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 763
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    const v1, 0x7f0d0035

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 834
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->t:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 839
    :goto_0
    return-void

    .line 837
    :cond_0
    iget-object v0, p2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->t:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private c(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 602
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->m:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/FeedReplayAnimationView;->setVisibility(I)V

    .line 603
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->h:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->h:Landroid/widget/TextView;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 607
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-interface {p2}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/util/DateTimeUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Landroid/widget/TextView;)V

    .line 610
    invoke-direct {p0, p2, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;)V

    .line 611
    iget-object v0, p1, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 613
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->i:Lcom/snapchat/android/fragments/chat/ReleaseWindow;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;
    .locals 2
    .parameter

    .prologue
    .line 130
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->e:Ljava/util/List;

    monitor-enter v1

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    monitor-exit v1

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->i:Lcom/snapchat/android/fragments/chat/ReleaseWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->a(Z)V

    .line 153
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->i:Lcom/snapchat/android/fragments/chat/ReleaseWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->a(Z)V

    .line 157
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 141
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    .line 198
    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/model/chat/ChatFeedItem;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f0a0109

    const v8, 0x7f0a0111

    const v7, 0x7f0a0108

    const v6, 0x7f0a0105

    const/4 v5, 0x0

    .line 253
    invoke-virtual {p0, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v1

    .line 254
    invoke-direct {p0, v1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/model/chat/ChatFeedItem;)Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;

    move-result-object v3

    .line 255
    if-nez p2, :cond_1

    .line 256
    new-instance v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;-><init>()V

    .line 257
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$3;->a:[I

    invoke-virtual {v3}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 322
    :goto_0
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 259
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->c:Landroid/view/LayoutInflater;

    const v4, 0x7f04002a

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 260
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    .line 261
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->t:Landroid/widget/ImageView;

    .line 262
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->l:Landroid/view/View;

    .line 263
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->c:Landroid/view/LayoutInflater;

    const v4, 0x7f040027

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 268
    const v0, 0x7f0a0113

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->i:Landroid/widget/TextView;

    .line 269
    const v0, 0x7f0a0112

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->D:Landroid/widget/TextView;

    goto :goto_0

    .line 274
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->c:Landroid/view/LayoutInflater;

    const v4, 0x7f040029

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 275
    const v0, 0x7f0a0120

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->h:Landroid/widget/TextView;

    .line 276
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->t:Landroid/widget/ImageView;

    .line 277
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->l:Landroid/view/View;

    .line 278
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    .line 280
    const v0, 0x7f0a0114

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->d:Landroid/view/ViewGroup;

    .line 281
    const v0, 0x7f0a011d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FeedReplayAnimationView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->m:Lcom/snapchat/android/ui/FeedReplayAnimationView;

    .line 282
    const v0, 0x7f0a011e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->n:Landroid/widget/ProgressBar;

    .line 283
    const v0, 0x7f0a011f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->k:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 287
    :pswitch_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->c:Landroid/view/LayoutInflater;

    const v4, 0x7f040028

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 288
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    .line 289
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->t:Landroid/widget/ImageView;

    .line 290
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->l:Landroid/view/View;

    .line 291
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    .line 293
    const v0, 0x7f0a0114

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->d:Landroid/view/ViewGroup;

    .line 294
    const v0, 0x7f0a0115

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->z:Landroid/view/ViewGroup;

    .line 295
    const v0, 0x7f0a0116

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ImageResourceView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->y:Lcom/snapchat/android/ui/ImageResourceView;

    .line 296
    const v0, 0x7f0a0118

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->p:Landroid/view/View;

    .line 297
    const v0, 0x7f0a0119

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->q:Landroid/widget/TextView;

    .line 299
    const v0, 0x7f0a011a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->E:Landroid/view/View;

    .line 300
    const v0, 0x7f0a0117

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/TextureVideoView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->o:Lcom/snapchat/android/ui/TextureVideoView;

    .line 301
    iget-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->o:Lcom/snapchat/android/ui/TextureVideoView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/TextureVideoView;->setVisibility(I)V

    .line 302
    iget-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->E:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 305
    :pswitch_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->c:Landroid/view/LayoutInflater;

    const v4, 0x7f040026

    invoke-virtual {v0, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 306
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->e:Lcom/snapchat/android/ui/FixTouchConsumeTextView;

    .line 307
    const v0, 0x7f0a010f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->r:Landroid/widget/TextView;

    .line 308
    const v0, 0x7f0a0110

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->s:Landroid/widget/TextView;

    .line 309
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->t:Landroid/widget/ImageView;

    .line 310
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->l:Landroid/view/View;

    .line 311
    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    .line 313
    const v0, 0x7f0a010c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->u:Landroid/widget/ImageView;

    .line 314
    const v0, 0x7f0a010d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->v:Landroid/widget/ImageView;

    .line 315
    const v0, 0x7f0a010e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->w:Landroid/widget/ImageView;

    .line 316
    const v0, 0x7f0a0107

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->g:Landroid/widget/LinearLayout;

    .line 317
    const v0, 0x7f0a0106

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->f:Landroid/view/View;

    .line 318
    const v0, 0x7f0a010b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->x:Landroid/widget/ProgressBar;

    goto/16 :goto_0

    .line 323
    :cond_0
    invoke-virtual {p2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 324
    iput-object p2, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->b:Landroid/view/View;

    .line 325
    const v0, 0x7f0a0104

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->c:Landroid/view/View;

    .line 326
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 334
    :goto_1
    if-nez v2, :cond_3

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHAT-LOG: Holder is null for position ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") and ChatFeedItem ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    const-string v1, "ChatConversationAdapter"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;

    .line 329
    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 330
    iget-object v2, v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    move-object v2, v0

    goto :goto_1

    .line 342
    :cond_3
    iget-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 344
    invoke-virtual {v2}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->a()V

    .line 347
    :cond_4
    iput-object v1, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->a:Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 348
    iget-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->b:Landroid/view/View;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 349
    invoke-direct {p0, v2, v1, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/ChatFeedItem;I)V

    .line 350
    sget-object v0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$3;->a:[I

    invoke-virtual {v3}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$ChatItemType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    .line 381
    :goto_2
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    .line 382
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(I)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v3

    .line 384
    if-eqz v3, :cond_5

    instance-of v4, v3, Lcom/snapchat/android/model/chat/ChatHeader;

    if-nez v4, :cond_5

    instance-of v4, v1, Lcom/snapchat/android/model/chat/ChatHeader;

    if-nez v4, :cond_5

    .line 385
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-interface {v3}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/snapchat/android/util/DateTimeUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 386
    iget-object v4, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-interface {v1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/snapchat/android/util/DateTimeUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 387
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 388
    iget-object v3, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    :cond_5
    :goto_3
    instance-of v1, v1, Lcom/snapchat/android/model/chat/ChatDateHeader;

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    instance-of v0, v0, Lcom/snapchat/android/model/chat/ChatHeader;

    if-eqz v0, :cond_6

    .line 395
    iget-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->b:Landroid/view/View;

    const/high16 v1, 0x4110

    iget-object v3, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v5, v5, v5, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 398
    :cond_6
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_7

    .line 399
    iget-object v0, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v5, v5, v5, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 404
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->g:Lcom/snapchat/android/ui/listeners/AdapterOnGetViewListener;

    invoke-interface {v0, p2}, Lcom/snapchat/android/ui/listeners/AdapterOnGetViewListener;->d(Landroid/view/View;)V

    .line 406
    return-object p2

    :pswitch_5
    move-object v0, v1

    .line 352
    check-cast v0, Lcom/snapchat/android/model/chat/ChatText;

    invoke-direct {p0, v2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/ChatText;)V

    goto :goto_2

    .line 355
    :pswitch_6
    invoke-direct {p0, v2, v1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    goto :goto_2

    .line 358
    :pswitch_7
    invoke-direct {p0, v2, v1, p1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/ChatFeedItem;I)V

    goto/16 :goto_2

    :pswitch_8
    move-object v0, v1

    .line 361
    check-cast v0, Lcom/snapchat/android/model/Snap;

    invoke-direct {p0, v2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/Snap;)V

    goto/16 :goto_2

    .line 364
    :pswitch_9
    invoke-direct {p0, v2, v1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->b(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    goto/16 :goto_2

    .line 367
    :pswitch_a
    invoke-direct {p0, v2, v1}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->c(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    goto/16 :goto_2

    .line 370
    :pswitch_b
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    move-object v0, v1

    .line 371
    check-cast v0, Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-direct {p0, v2, v0, v3}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/ChatMedia;I)V

    goto/16 :goto_2

    :pswitch_c
    move-object v0, v1

    .line 374
    check-cast v0, Lcom/snapchat/android/model/chat/ChatSharedDSnap;

    invoke-direct {p0, v2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/ChatSharedDSnap;)V

    goto/16 :goto_2

    :pswitch_d
    move-object v0, v1

    .line 377
    check-cast v0, Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-direct {p0, v2, v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;Lcom/snapchat/android/model/chat/CashFeedItem;)V

    goto/16 :goto_2

    .line 390
    :cond_8
    iget-object v3, v2, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter$MessageViewHolder;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 350
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x5

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 6

    .prologue
    .line 161
    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->e:Ljava/util/List;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    const-string v0, "ChatConversationAdapter"

    const-string v2, "CHAT-LOG: ChatConversationAdapter notifyDataSetChanged %d items"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->a(Ljava/util/List;)Lcom/snapchat/android/model/chat/ChatFeedItem;

    move-result-object v0

    .line 169
    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->i:Lcom/snapchat/android/fragments/chat/ReleaseWindow;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->a()V

    .line 174
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 177
    return-void

    .line 172
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/snapchat/android/fragments/chat/ChatConversationAdapter;->i:Lcom/snapchat/android/fragments/chat/ReleaseWindow;

    invoke-interface {v0}, Lcom/snapchat/android/model/chat/ChatFeedItem;->ae()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/snapchat/android/fragments/chat/ReleaseWindow;->a(J)V

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
