.class Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field final mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private final mHeaderCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    .line 39
    new-instance v0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$1;

    invoke-direct {v0, p0}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$1;-><init>(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)V

    iput-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 55
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    .line 57
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$101(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method static synthetic access$201(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;)Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;

    return-object v0
.end method

.method private configureHeader(Lcom/emilsjolander/components/stickylistheaders/WrapperView;I)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 128
    iget-object v0, p1, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->popHeader()Landroid/view/View;

    move-result-object v0

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v1, p2, v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 130
    if-nez v0, :cond_1

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Header view must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget-object v0, p1, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    goto :goto_0

    .line 134
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 135
    new-instance v1, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$2;

    invoke-direct {v1, p0, p2}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$2;-><init>(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-object v0
.end method

.method private popHeader()Landroid/view/View;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private previousPositionHasSameHeader(I)Z
    .locals 4
    .parameter

    .prologue
    .line 157
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleHeaderIfExists(Lcom/emilsjolander/components/stickylistheaders/WrapperView;)V
    .locals 2
    .parameter

    .prologue
    .line 117
    iget-object v0, p1, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mHeader:Landroid/view/View;

    .line 118
    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mHeaderCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderId(I)J
    .locals 2
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/emilsjolander/components/stickylistheaders/WrapperView;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    if-nez p2, :cond_1

    new-instance p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;-><init>(Landroid/content/Context;)V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    iget-object v1, p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->mItem:Landroid/view/View;

    invoke-interface {v0, p1, v1, p2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 166
    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->previousPositionHasSameHeader(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    invoke-direct {p0, p2}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->recycleHeaderIfExists(Lcom/emilsjolander/components/stickylistheaders/WrapperView;)V

    .line 172
    :goto_1
    instance-of v2, v1, Landroid/widget/Checkable;

    if-eqz v2, :cond_3

    instance-of v2, p2, Lcom/emilsjolander/components/stickylistheaders/CheckableWrapperView;

    if-nez v2, :cond_3

    .line 174
    new-instance p2, Lcom/emilsjolander/components/stickylistheaders/CheckableWrapperView;

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lcom/emilsjolander/components/stickylistheaders/CheckableWrapperView;-><init>(Landroid/content/Context;)V

    .line 178
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDividerHeight:I

    invoke-virtual {p2, v1, v0, v2, v3}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;->update(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 179
    return-object p2

    .line 164
    :cond_1
    check-cast p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    goto :goto_0

    .line 170
    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->configureHeader(Lcom/emilsjolander/components/stickylistheaders/WrapperView;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 175
    :cond_3
    instance-of v2, v1, Landroid/widget/Checkable;

    if-nez v2, :cond_0

    instance-of v2, p2, Lcom/emilsjolander/components/stickylistheaders/CheckableWrapperView;

    if-eqz v2, :cond_0

    .line 176
    new-instance p2, Lcom/emilsjolander/components/stickylistheaders/WrapperView;

    iget-object v2, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lcom/emilsjolander/components/stickylistheaders/WrapperView;-><init>(Landroid/content/Context;)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 204
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 209
    return-void
.end method

.method setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method

.method setDividerHeight(I)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput p1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDividerHeight:I

    .line 66
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mOnHeaderClickListener:Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper$OnHeaderClickListener;

    .line 184
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/emilsjolander/components/stickylistheaders/AdapterWrapper;->mDelegate:Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
