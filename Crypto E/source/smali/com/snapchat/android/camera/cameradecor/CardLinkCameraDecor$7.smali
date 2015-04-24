.class Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$7;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$7;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->d(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$7;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$7;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->e(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)V

    goto :goto_0
.end method
