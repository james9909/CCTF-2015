.class Lcom/snapchat/android/util/BouncyToucher$1;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/BouncyToucher;-><init>(Landroid/view/View;FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/snapchat/android/util/BouncyToucher;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/BouncyToucher;FLandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/snapchat/android/util/BouncyToucher$1;->c:Lcom/snapchat/android/util/BouncyToucher;

    iput p2, p0, Lcom/snapchat/android/util/BouncyToucher$1;->a:F

    iput-object p3, p0, Lcom/snapchat/android/util/BouncyToucher$1;->b:Landroid/view/View;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/rebound/Spring;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 33
    iget v0, p0, Lcom/snapchat/android/util/BouncyToucher$1;->a:F

    sub-float/2addr v0, v4

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->b()D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    .line 34
    iget-object v1, p0, Lcom/snapchat/android/util/BouncyToucher$1;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 35
    iget-object v1, p0, Lcom/snapchat/android/util/BouncyToucher$1;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 36
    return-void
.end method
