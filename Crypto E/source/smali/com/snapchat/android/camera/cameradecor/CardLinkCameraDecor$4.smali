.class Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->g()V
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
    .line 167
    iput-object p1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$4;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$4;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-static {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->c(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;)Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardDetailsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardDetailsListener;->h()V

    .line 171
    return-void
.end method
