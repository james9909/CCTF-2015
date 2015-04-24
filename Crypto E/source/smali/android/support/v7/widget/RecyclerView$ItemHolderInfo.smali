.class Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field b:I

.field c:I

.field d:I

.field e:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8419
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 8420
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->b:I

    .line 8421
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->c:I

    .line 8422
    iput p4, p0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->d:I

    .line 8423
    iput p5, p0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->e:I

    .line 8424
    return-void
.end method
