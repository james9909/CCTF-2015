.class Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Landroid/view/View;)Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$3;->b:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    iput-object p2, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$3;->c:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    const v2, 0x3f19999a

    .line 137
    iget-boolean v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$3;->c:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$3;->b:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$3;->a:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Landroid/view/View;FF)V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$3;->c:Z

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$3;->b:Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;

    iget-object v1, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$3;->a:Landroid/view/View;

    invoke-static {v0, v1, v3, v2}, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;->a(Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor;Landroid/view/View;FF)V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$3;->c:Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    return-void
.end method
