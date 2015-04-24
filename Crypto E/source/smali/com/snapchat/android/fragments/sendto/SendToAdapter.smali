.class public Lcom/snapchat/android/fragments/sendto/SendToAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;
.implements Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/sendto/SendToAdapter$HeaderViewHolder;,
        Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/snapchat/android/fragments/sendto/SendToItem;",
        ">;",
        "Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;",
        "Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface",
        "<",
        "Lcom/snapchat/android/fragments/sendto/SendToItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/snapchat/android/util/debug/ExceptionReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/fragments/sendto/SendToItem;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/view/LayoutInflater;

.field private final e:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

.field private final f:Lcom/snapchat/android/ui/sendto/SendToItemCheckboxResourceProvider;

.field private final g:Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/fragments/sendto/SendToItem;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/snapchat/android/model/Friend$FriendListSectionizer;Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;Lcom/snapchat/android/ui/sendto/SendToItemCheckboxResourceProvider;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/fragments/sendto/SendToItem;",
            ">;",
            "Lcom/snapchat/android/model/Friend$FriendListSectionizer;",
            "Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;",
            "Lcom/snapchat/android/ui/sendto/SendToItemCheckboxResourceProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 63
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 64
    iput-object p3, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->h:Ljava/util/List;

    .line 65
    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->c:Ljava/util/List;

    .line 66
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->d:Landroid/view/LayoutInflater;

    .line 67
    iput-object p1, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->b:Landroid/content/Context;

    .line 68
    iput-object p4, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->e:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    .line 69
    iput-object p5, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->g:Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;

    .line 70
    iput-object p6, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->f:Lcom/snapchat/android/ui/sendto/SendToItemCheckboxResourceProvider;

    .line 71
    return-void
.end method

.method private a(Landroid/view/View;Lcom/snapchat/android/fragments/sendto/SendToItem;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 133
    instance-of v0, p2, Lcom/snapchat/android/model/PostToStory;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/snapchat/android/model/MyPostToStory;

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 140
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->g:Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;

    invoke-interface {v0, p2}, Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;->a(Lcom/snapchat/android/fragments/sendto/SendToItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Lcom/snapchat/android/ui/viewholders/SendToViewHolder;Lcom/snapchat/android/fragments/sendto/SendToItem;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-interface {p2}, Lcom/snapchat/android/fragments/sendto/SendToItem;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->a(Ljava/lang/String;)V

    .line 144
    instance-of v0, p2, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 145
    check-cast v0, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/snapchat/android/fragments/sendto/SendToItem;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0126

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->a(Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;Lcom/snapchat/android/fragments/sendto/SendToItem;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;

    .line 153
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->f:Lcom/snapchat/android/ui/sendto/SendToItemCheckboxResourceProvider;

    invoke-virtual {v1, p2}, Lcom/snapchat/android/ui/sendto/SendToItemCheckboxResourceProvider;->a(Lcom/snapchat/android/fragments/sendto/SendToItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->c(I)V

    .line 154
    invoke-virtual {v0}, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->v()V

    .line 156
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->g:Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;

    invoke-virtual {v0, p2, v1}, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->a(Lcom/snapchat/android/fragments/sendto/SendToItem;Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;)V

    .line 157
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/Friend;)V
    .locals 2
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->h:Ljava/util/List;

    .line 216
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->notifyDataSetChanged()V

    .line 218
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/fragments/sendto/SendToItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->h:Ljava/util/List;

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->notifyDataSetChanged()V

    .line 91
    return-void

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->h:Ljava/util/List;

    goto :goto_0
.end method

.method public b(Lcom/snapchat/android/model/Friend;)V
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 227
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 228
    :goto_0
    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->notifyDataSetChanged()V

    .line 231
    :cond_1
    return-void

    .line 227
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->i:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->s()Ljava/util/List;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToFilter;

    iget-object v2, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->a:Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-direct {v1, v2, v0, v3, p0}, Lcom/snapchat/android/fragments/sendto/SendToFilter;-><init>(Ljava/util/List;Ljava/util/List;Lcom/snapchat/android/util/debug/ExceptionReporter;Lcom/snapchat/android/util/listview/ScFilter$ScFilterInterface;)V

    iput-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->i:Landroid/widget/Filter;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->i:Landroid/widget/Filter;

    return-object v0
.end method

.method public getHeaderId(I)J
    .locals 4
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/sendto/SendToItem;

    .line 195
    instance-of v1, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_0

    .line 197
    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 198
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->e:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    iget-object v2, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->e:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    invoke-virtual {v2, v0, p1}, Lcom/snapchat/android/model/Friend$FriendListSectionizer;->a(Lcom/snapchat/android/model/Friend;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, v3}, Lcom/snapchat/android/model/Friend$FriendListSectionizer;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    .line 202
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0201

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0a006d

    .line 162
    if-nez p2, :cond_1

    .line 163
    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToAdapter$HeaderViewHolder;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/sendto/SendToAdapter$HeaderViewHolder;-><init>(Lcom/snapchat/android/fragments/sendto/SendToAdapter;)V

    .line 164
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->d:Landroid/view/LayoutInflater;

    const v2, 0x7f040008

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 165
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 166
    :cond_0
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/snapchat/android/fragments/sendto/SendToAdapter$HeaderViewHolder;->a:Landroid/widget/TextView;

    .line 167
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/sendto/SendToItem;

    .line 173
    instance-of v2, v0, Lcom/snapchat/android/model/Friend;

    if-eqz v2, :cond_4

    .line 174
    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 175
    iget-object v2, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->e:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    invoke-virtual {v2, v0, p1}, Lcom/snapchat/android/model/Friend$FriendListSectionizer;->a(Lcom/snapchat/android/model/Friend;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v2

    .line 176
    iget-object v3, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->e:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    iget-object v4, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->b:Landroid/content/Context;

    invoke-virtual {v3, v2, v0, v4}, Lcom/snapchat/android/model/Friend$FriendListSectionizer;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, v1, Lcom/snapchat/android/fragments/sendto/SendToAdapter$HeaderViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->DEFAULT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    if-ne v2, v0, :cond_2

    .line 179
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0124

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 188
    :goto_1
    return-object p2

    .line 169
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/sendto/SendToAdapter$HeaderViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 180
    :cond_2
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->BLOCKED:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    if-ne v2, v0, :cond_3

    .line 181
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 183
    :cond_3
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 186
    :cond_4
    iget-object v0, v1, Lcom/snapchat/android/fragments/sendto/SendToAdapter$HeaderViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0201

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    if-nez p2, :cond_1

    .line 104
    iget-object v0, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f040077

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 105
    new-instance v0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;

    invoke-direct {v0, p2}, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;-><init>(Landroid/view/View;)V

    .line 106
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    :goto_0
    invoke-virtual {v0}, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->t()V

    .line 112
    iget-object v1, p0, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/snapchat/android/fragments/sendto/SendToItem;

    .line 113
    if-eqz v6, :cond_0

    .line 114
    invoke-direct {p0, v0, v6}, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->a(Lcom/snapchat/android/ui/viewholders/SendToViewHolder;Lcom/snapchat/android/fragments/sendto/SendToItem;)V

    .line 115
    instance-of v1, v6, Lcom/snapchat/android/model/Friend;

    if-eqz v1, :cond_2

    move-object v1, v6

    check-cast v1, Lcom/snapchat/android/model/Friend;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    const v1, 0x7f020072

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->SEND:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    sget-object v3, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    sget-object v4, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;->SEND:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;

    invoke-virtual {v4}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsParent;->name()Ljava/lang/String;

    move-result-object v4

    move-object v5, v6

    check-cast v5, Lcom/snapchat/android/model/Friend;

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->a(ILcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V

    .line 127
    :goto_1
    invoke-direct {p0, p2, v6}, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->a(Landroid/view/View;Lcom/snapchat/android/fragments/sendto/SendToItem;)V

    .line 129
    :cond_0
    return-object p2

    .line 108
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;

    goto :goto_0

    .line 119
    :cond_2
    invoke-direct {p0, p2, v6}, Lcom/snapchat/android/fragments/sendto/SendToAdapter;->b(Landroid/view/View;Lcom/snapchat/android/fragments/sendto/SendToItem;)V

    .line 120
    new-instance v1, Lcom/snapchat/android/fragments/sendto/SendToAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/fragments/sendto/SendToAdapter$1;-><init>(Lcom/snapchat/android/fragments/sendto/SendToAdapter;Lcom/snapchat/android/ui/viewholders/SendToViewHolder;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method
