.class Landroid/support/v7/widget/LayoutState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/LayoutState;->e:I

    return-void
.end method


# virtual methods
.method a(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 83
    iget v0, p0, Landroid/support/v7/widget/LayoutState;->b:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->c(I)Landroid/view/View;

    move-result-object v0

    .line 84
    iget v1, p0, Landroid/support/v7/widget/LayoutState;->b:I

    iget v2, p0, Landroid/support/v7/widget/LayoutState;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/LayoutState;->b:I

    .line 85
    return-object v0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 2
    .parameter

    .prologue
    .line 73
    iget v0, p0, Landroid/support/v7/widget/LayoutState;->b:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LayoutState;->b:I

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
