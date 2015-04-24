.class Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCvvCallback;
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
    name = "ValidCvvCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCvvCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCvvCallback;-><init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCvvCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Z)V

    .line 477
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCvvCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->j(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Lcom/snapchat/android/ui/cash/ZipEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/ZipEditText;->requestFocus()Z

    .line 484
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCvvCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->j(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Lcom/snapchat/android/ui/cash/ZipEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/ZipEditText;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCvvCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Z)V

    .line 487
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCvvCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->k(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Lcom/snapchat/android/ui/cash/CardCvvEditText;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$ValidCvvCallback;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V

    .line 493
    return-void
.end method
