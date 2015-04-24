.class public Lcom/snapchat/android/discover/ui/ChannelGroupView;
.super Landroid/widget/AdapterView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/ChannelGroupView$Layout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/BaseAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field private d:Landroid/widget/BaseAdapter;

.field private e:[I

.field private f:I

.field private g:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/16 v0, 0xa

    iput v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->a:I

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->b:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->c:I

    .line 54
    new-instance v0, Lcom/snapchat/android/discover/ui/ChannelGroupView$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/discover/ui/ChannelGroupView$1;-><init>(Lcom/snapchat/android/discover/ui/ChannelGroupView;)V

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->g:Landroid/database/DataSetObserver;

    .line 70
    return-void
.end method

.method private a(I)I
    .locals 3
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->e:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->e:[I

    array-length v0, v0

    if-gt v0, p1, :cond_1

    .line 230
    :cond_0
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->e:[I

    aget v0, v0, p1

    rsub-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->f:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->e:[I

    aget v1, v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->getGapFromDiameter()I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private a(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 219
    div-int/lit8 v0, p1, 0x4

    .line 220
    int-to-float v1, p2

    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 221
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 0
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->b()V

    .line 149
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->c()V

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/ChannelGroupView;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->a()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 167
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 169
    invoke-static {}, Lcom/snapchat/android/discover/ui/ChannelGroupView$Layout;->values()[Lcom/snapchat/android/discover/ui/ChannelGroupView$Layout;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/ChannelGroupView$Layout;->a()[I

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->e:[I

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/snapchat/android/discover/ui/ChannelGroupView$Layout;->values()[Lcom/snapchat/android/discover/ui/ChannelGroupView$Layout;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/ChannelGroupView$Layout;->a()[I

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->e:[I

    goto :goto_0
.end method

.method private c()V
    .locals 8
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v7, -0x2

    .line 182
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_1

    .line 212
    :cond_0
    return-void

    .line 183
    :cond_1
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 184
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->getChildCount()I

    move-result v3

    .line 190
    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-lt v0, v2, :cond_3

    .line 191
    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_2

    .line 193
    invoke-virtual {p0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->removeViewInLayout(Landroid/view/View;)V

    .line 190
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 196
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 198
    if-ge v1, v3, :cond_4

    .line 199
    invoke-virtual {p0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 205
    :cond_4
    iget-object v4, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    invoke-virtual {v4, v1, v0, p0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 206
    if-lt v1, v3, :cond_5

    .line 208
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 209
    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {p0, v0, v5, v4, v6}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 196
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private d()F
    .locals 3

    .prologue
    .line 245
    const/high16 v0, 0x4120

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->e:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x6

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->e:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getGapFromDiameter()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->f:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private getMarginFromDiameter()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->f:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0xa

    return v0
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 141
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->g:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 144
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    return-void

    .line 107
    :cond_1
    invoke-direct {p0, v3}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->a(I)I

    move-result v1

    .line 108
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->getMarginFromDiameter()I

    move-result v0

    .line 109
    const/16 v2, 0xc

    iget-object v4, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->getChildCount()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v5, v3

    move v2, v3

    move v4, v3

    .line 110
    :goto_0
    if-ge v5, v6, :cond_0

    .line 111
    invoke-virtual {p0, v5}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 113
    iget v8, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->f:I

    add-int/2addr v8, v1

    iget v9, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->f:I

    add-int/2addr v9, v0

    invoke-virtual {v7, v1, v0, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 115
    add-int/lit8 v2, v2, 0x1

    iget-object v7, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->e:[I

    aget v7, v7, v4

    if-ne v2, v7, :cond_2

    .line 117
    add-int/lit8 v1, v4, 0x1

    iget-object v2, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->e:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 118
    invoke-direct {p0, v2}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->a(I)I

    move-result v1

    .line 119
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->getGapFromDiameter()I

    move-result v4

    iget v7, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->f:I

    add-int/2addr v4, v7

    add-int/2addr v0, v4

    move v4, v2

    move v2, v3

    .line 110
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 121
    :cond_2
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->getGapFromDiameter()I

    move-result v7

    iget v8, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->f:I

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->setMeasuredDimension(II)V

    .line 94
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 80
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 82
    invoke-direct {p0, v1, v2}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->a(II)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->f:I

    .line 83
    iget-object v1, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->getChildCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 84
    :goto_1
    if-ge v0, v1, :cond_2

    .line 85
    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 86
    iget v3, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->f:I

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 87
    invoke-virtual {v2, v3, v3}, Landroid/view/View;->measure(II)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_2
    iget v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->f:I

    mul-int/lit8 v0, v0, 0x4

    .line 91
    iget v1, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->f:I

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 93
    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->setAdapter(Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 2
    .parameter
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->g:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    .line 134
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->d:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView;->g:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 135
    invoke-direct {p0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->a()V

    .line 136
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter

    .prologue
    .line 164
    return-void
.end method
