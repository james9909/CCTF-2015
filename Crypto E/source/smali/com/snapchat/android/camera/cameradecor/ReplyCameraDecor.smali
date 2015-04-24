.class public Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;
.super Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;
.source "SourceFile"


# instance fields
.field private final n:Lcom/snapchat/android/util/eventbus/ReplyEventInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lcom/snapchat/android/util/eventbus/ReplyEventInterface;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    .line 20
    iput-object p4, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->n:Lcom/snapchat/android/util/eventbus/ReplyEventInterface;

    .line 22
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->n:Lcom/snapchat/android/util/eventbus/ReplyEventInterface;

    invoke-interface {v0}, Lcom/snapchat/android/util/eventbus/ReplyEventInterface;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 26
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->f:Landroid/widget/TextView;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 27
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor$1;-><init>(Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->a()V

    .line 46
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->n:Lcom/snapchat/android/util/eventbus/ReplyEventInterface;

    invoke-interface {v0}, Lcom/snapchat/android/util/eventbus/ReplyEventInterface;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->g:Landroid/widget/TextView;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 36
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor$2;-><init>(Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected c(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    .line 50
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/cameradecor/DefaultCameraDecor;->c(Z)V

    .line 51
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->n:Lcom/snapchat/android/util/eventbus/ReplyEventInterface;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->n:Lcom/snapchat/android/util/eventbus/ReplyEventInterface;

    invoke-interface {v0}, Lcom/snapchat/android/util/eventbus/ReplyEventInterface;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->n:Lcom/snapchat/android/util/eventbus/ReplyEventInterface;

    invoke-interface {v0}, Lcom/snapchat/android/util/eventbus/ReplyEventInterface;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public e()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->n:Lcom/snapchat/android/util/eventbus/ReplyEventInterface;

    invoke-interface {v1}, Lcom/snapchat/android/util/eventbus/ReplyEventInterface;->a()I

    move-result v1

    invoke-interface {v0, v1, v2}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(IZ)V

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->n:Lcom/snapchat/android/util/eventbus/ReplyEventInterface;

    invoke-interface {v0}, Lcom/snapchat/android/util/eventbus/ReplyEventInterface;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->i(Z)V

    .line 72
    :cond_0
    return v2
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method
