.class Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 190
    iput-object p1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$5;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 193
    if-eqz p2, :cond_0

    .line 194
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$5;->a:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    const v1, 0x7f0c0045

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method
