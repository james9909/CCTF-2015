.class Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutState"
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1737
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->a:Z

    .line 1778
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->h:I

    .line 1785
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:Z

    .line 1791
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:Ljava/util/List;

    return-void
.end method

.method private a()Landroid/view/View;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1823
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 1825
    const v1, 0x7fffffff

    .line 1826
    const/4 v0, 0x0

    move v5, v0

    move-object v3, v4

    :goto_0
    if-ge v5, v6, :cond_5

    .line 1827
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1828
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->i:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    move-object v1, v3

    .line 1826
    :goto_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v3, v1

    move v1, v0

    goto :goto_0

    .line 1831
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v2

    iget v7, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    sub-int/2addr v2, v7

    iget v7, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->e:I

    mul-int/2addr v2, v7

    .line 1832
    if-gez v2, :cond_1

    move v0, v1

    move-object v1, v3

    .line 1833
    goto :goto_1

    .line 1835
    :cond_1
    if-ge v2, v1, :cond_4

    .line 1838
    if-nez v2, :cond_3

    .line 1846
    :goto_2
    if-eqz v0, :cond_2

    .line 1847
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    .line 1848
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 1850
    :goto_3
    return-object v0

    :cond_2
    move-object v0, v4

    goto :goto_3

    :cond_3
    move-object v1, v0

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    move-object v1, v3

    goto :goto_1

    :cond_5
    move-object v0, v3

    goto :goto_2
.end method


# virtual methods
.method a(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 1807
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1808
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->a()Landroid/view/View;

    move-result-object v0

    .line 1812
    :goto_0
    return-object v0

    .line 1810
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->c(I)Landroid/view/View;

    move-result-object v0

    .line 1811
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 2
    .parameter

    .prologue
    .line 1797
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->d:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
