.class public Lcom/snapchat/android/util/BouncyToucher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:Lcom/facebook/rebound/Spring;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 21
    const v0, 0x3f99999a

    const/high16 v1, 0x447a

    const/high16 v2, 0x4170

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/snapchat/android/util/BouncyToucher;-><init>(Landroid/view/View;FFF)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/view/View;FFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->d()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->b()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/BouncyToucher;->a:Lcom/facebook/rebound/Spring;

    .line 28
    iget-object v0, p0, Lcom/snapchat/android/util/BouncyToucher;->a:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/facebook/rebound/SpringConfig;

    float-to-double v2, p3

    float-to-double v4, p4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/facebook/rebound/SpringConfig;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->a(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 30
    iget-object v0, p0, Lcom/snapchat/android/util/BouncyToucher;->a:Lcom/facebook/rebound/Spring;

    new-instance v1, Lcom/snapchat/android/util/BouncyToucher$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/snapchat/android/util/BouncyToucher$1;-><init>(Lcom/snapchat/android/util/BouncyToucher;FLandroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->a(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 38
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/snapchat/android/util/BouncyToucher;->a:Lcom/facebook/rebound/Spring;

    const-wide/high16 v2, 0x4049

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->c(D)Lcom/facebook/rebound/Spring;

    .line 57
    iget-object v0, p0, Lcom/snapchat/android/util/BouncyToucher;->a:Lcom/facebook/rebound/Spring;

    const-wide/high16 v2, 0x3ff0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->b(D)Lcom/facebook/rebound/Spring;

    .line 58
    iget-object v0, p0, Lcom/snapchat/android/util/BouncyToucher;->a:Lcom/facebook/rebound/Spring;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->b(D)Lcom/facebook/rebound/Spring;

    .line 59
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/BouncyToucher;->a:Lcom/facebook/rebound/Spring;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->b(D)Lcom/facebook/rebound/Spring;

    .line 47
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/BouncyToucher;->a:Lcom/facebook/rebound/Spring;

    const-wide/high16 v2, 0x3ff0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->b(D)Lcom/facebook/rebound/Spring;

    goto :goto_0
.end method
