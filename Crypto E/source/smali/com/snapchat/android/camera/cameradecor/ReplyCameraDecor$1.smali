.class Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lcom/snapchat/android/util/eventbus/ReplyEventInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor$1;->a:Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 30
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor$1;->a:Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;

    iget-object v0, v0, Lcom/snapchat/android/camera/cameradecor/ReplyCameraDecor;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v0, v1, v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(IZ)V

    .line 31
    return-void
.end method
