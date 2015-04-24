.class Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/cash/ValidatedInputCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValidCardNumberCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;-><init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0, v2}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Z)V

    .line 403
    iget-boolean v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;->b:Z

    if-eqz v0, :cond_0

    .line 404
    iput-boolean v2, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;->b:Z

    .line 405
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->b(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Z)Z

    .line 407
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->f(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 411
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 412
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0, v2}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Z)V

    .line 414
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 421
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->b(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Z)Z

    .line 423
    iget-boolean v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;->b:Z

    if-nez v0, :cond_0

    .line 424
    iput-boolean v2, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;->b:Z

    .line 428
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 430
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->h(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->requestFocus()Z

    .line 436
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->h(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0, v2}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Z)V

    .line 438
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0, v2}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Z)V

    .line 440
    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCardNumberCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->i(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Lcom/snapchat/android/ui/cash/CardNumberEditText;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->setText(Ljava/lang/CharSequence;)V

    .line 445
    return-void
.end method
