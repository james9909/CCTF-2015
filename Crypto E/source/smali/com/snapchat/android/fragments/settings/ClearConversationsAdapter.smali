.class public Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/snapchat/android/model/chat/ChatConversation;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Lcom/snapchat/android/util/ListViewAdapterList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/snapchat/android/util/ListViewAdapterList",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/snapchat/android/util/ListViewAdapterList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/snapchat/android/util/ListViewAdapterList",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    const v0, 0x7f04002f

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 41
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;->a:Landroid/content/Context;

    .line 42
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;->b:Landroid/view/LayoutInflater;

    .line 43
    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;->c:Lcom/snapchat/android/util/ListViewAdapterList;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/snapchat/android/util/ListViewAdapterList;)Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/snapchat/android/util/ListViewAdapterList",
            "<",
            "Lcom/snapchat/android/model/chat/ChatConversation;",
            ">;)",
            "Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;-><init>(Landroid/content/Context;Lcom/snapchat/android/util/ListViewAdapterList;)V

    .line 35
    invoke-virtual {p1, v0}, Lcom/snapchat/android/util/ListViewAdapterList;->a(Landroid/widget/BaseAdapter;)V

    .line 36
    return-object v0
.end method

.method private a(Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-virtual {p2, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->m(Z)V

    .line 100
    invoke-direct {p0, v0, p1, p2}, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;->a(ZLcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 101
    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/ChatConversation;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->n(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->K()V

    .line 103
    new-instance v0, Lcom/snapchat/android/api2/chat/ClearConversationTask;

    invoke-direct {v0, p2}, Lcom/snapchat/android/api2/chat/ClearConversationTask;-><init>(Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/chat/ClearConversationTask;->g()V

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;->a(Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)V

    return-void
.end method

.method private a(ZLcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 107
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p2, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;->b:Landroid/widget/TextView;

    const v1, 0x7f0c01b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    iget-object v0, p2, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v0, p2, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 117
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p2, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3}, Lcom/snapchat/android/model/chat/ChatConversation;->U()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/util/DateTimeUtils;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p2, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p2, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;->b:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    if-nez p2, :cond_0

    .line 50
    new-instance v1, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;-><init>(Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1;)V

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f04002f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 52
    const v0, 0x7f0a012f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;->a:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0a0130

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;->b:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0a0131

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;->c:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f0a0132

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;->d:Landroid/widget/ProgressBar;

    .line 56
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;->c:Lcom/snapchat/android/util/ListViewAdapterList;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/ListViewAdapterList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 62
    iget-object v2, v1, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/snapchat/android/chat/ConversationUtils;->a(Lcom/snapchat/android/model/chat/ChatConversation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->aB()Z

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;->a(ZLcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 66
    iget-object v2, v1, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;->c:Landroid/widget/ImageView;

    new-instance v3, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1;-><init>(Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-object p2

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;

    move-object v1, v0

    goto :goto_0
.end method
