.class final Lcom/snapchat/android/util/ViewUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/View;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;ILandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/snapchat/android/util/ViewUtils$3;->a:Landroid/view/View;

    iput p2, p0, Lcom/snapchat/android/util/ViewUtils$3;->b:I

    iput-object p3, p0, Lcom/snapchat/android/util/ViewUtils$3;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 580
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 581
    iget-object v1, p0, Lcom/snapchat/android/util/ViewUtils$3;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 583
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/snapchat/android/util/ViewUtils$3;->b:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 584
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/snapchat/android/util/ViewUtils$3;->b:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 585
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/snapchat/android/util/ViewUtils$3;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 586
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/snapchat/android/util/ViewUtils$3;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 588
    iget-object v1, p0, Lcom/snapchat/android/util/ViewUtils$3;->c:Landroid/view/View;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/snapchat/android/util/ViewUtils$3;->a:Landroid/view/View;

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 589
    return-void
.end method
