.class public Landroid/support/v7/widget/RecyclerView$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field a:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field private e:I

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7588
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->e:I

    .line 7589
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->a:Landroid/support/v4/util/ArrayMap;

    .line 7591
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->b:Landroid/support/v4/util/ArrayMap;

    .line 7594
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->c:Landroid/support/v4/util/ArrayMap;

    .line 7601
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->d:I

    .line 7606
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->g:I

    .line 7612
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$State;->h:I

    .line 7614
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->i:Z

    .line 7616
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->j:Z

    .line 7618
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->k:Z

    .line 7620
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->l:Z

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 7586
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$State;->h:I

    return v0
.end method

.method private a(Landroid/support/v4/util/ArrayMap;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 7772
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 7773
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 7774
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 7778
    :cond_0
    return-void

    .line 7772
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 1
    .parameter

    .prologue
    .line 7586
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->l:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7586
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$State;->i:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7586
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$State;->h:I

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 1
    .parameter

    .prologue
    .line 7586
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->k:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7586
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$State;->j:Z

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7586
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$State;->g:I

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 1
    .parameter

    .prologue
    .line 7586
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->i:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7586
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$State;->k:Z

    return p1
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView$State;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7586
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$State;->e:I

    return p1
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 1
    .parameter

    .prologue
    .line 7586
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->j:Z

    return v0
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView$State;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7586
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$State;->l:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 7759
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7760
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7761
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->c:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 7762
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$State;->c:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$State;->a(Landroid/support/v4/util/ArrayMap;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7765
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 7633
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->j:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 7644
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->l:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 7708
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->e:I

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 7717
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 7753
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$State;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->g:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->h:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$State;->d:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 7782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$State;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPostLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$State;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$State;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$State;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$State;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
