.class Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidExpiryCallback;
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
    name = "ValidExpiryCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidExpiryCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidExpiryCallback;-><init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 451
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidExpiryCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Z)V

    .line 452
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidExpiryCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Z)V

    .line 453
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 457
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidExpiryCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->i(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Lcom/snapchat/android/ui/cash/CardNumberEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidExpiryCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Z)V

    .line 459
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidExpiryCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Z)V

    .line 461
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidExpiryCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->h(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidExpiryCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->i(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Lcom/snapchat/android/ui/cash/CardNumberEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardNumberEditText;->requestFocus()Z

    .line 469
    return-void
.end method
