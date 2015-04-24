.class Lcom/snapchat/android/camera/CardLinkCameraFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/CardLinkCameraFragment;->onValidatedCardInputEvent(Lcom/snapchat/android/util/eventbus/ValidatedCardInputEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

.field final synthetic b:Lcom/snapchat/android/camera/CardLinkCameraFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/CardLinkCameraFragment;Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/snapchat/android/camera/CardLinkCameraFragment$1;->b:Lcom/snapchat/android/camera/CardLinkCameraFragment;

    iput-object p2, p0, Lcom/snapchat/android/camera/CardLinkCameraFragment$1;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/snapchat/android/camera/CardLinkCameraFragment$1;->b:Lcom/snapchat/android/camera/CardLinkCameraFragment;

    iget-object v0, v0, Lcom/snapchat/android/camera/CardLinkCameraFragment;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    iget-object v1, p0, Lcom/snapchat/android/camera/CardLinkCameraFragment$1;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardInputError;)V

    .line 81
    return-void
.end method
