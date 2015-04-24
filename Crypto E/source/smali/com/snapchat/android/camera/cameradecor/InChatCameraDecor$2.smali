.class Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lcom/snapchat/android/util/eventbus/SwitchToInChatCameraEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor$2;->a:Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor$2;->a:Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;

    iget-object v1, v1, Lcom/snapchat/android/camera/cameradecor/InChatCameraDecor;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    invoke-interface {v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->h()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 69
    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 71
    :cond_0
    return-void
.end method
