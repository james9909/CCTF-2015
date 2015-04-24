.class Lcom/snapchat/android/camera/AutofocusCrosshair$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/AutofocusCrosshair;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/AutofocusCrosshair;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/AutofocusCrosshair;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/snapchat/android/camera/AutofocusCrosshair$1;->a:Lcom/snapchat/android/camera/AutofocusCrosshair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/camera/AutofocusCrosshair$1;->a:Lcom/snapchat/android/camera/AutofocusCrosshair;

    invoke-static {v0}, Lcom/snapchat/android/camera/AutofocusCrosshair;->a(Lcom/snapchat/android/camera/AutofocusCrosshair;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    return-void
.end method
