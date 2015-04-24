.class Lcom/snapchat/android/InAppNotificationManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/InAppNotificationManager;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/InAppNotificationManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/InAppNotificationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/snapchat/android/InAppNotificationManager$2;->a:Lcom/snapchat/android/InAppNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager$2;->a:Lcom/snapchat/android/InAppNotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/InAppNotificationManager;->a(I)V

    .line 215
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager$2;->a:Lcom/snapchat/android/InAppNotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/InAppNotificationManager;->a(I)V

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager$2;->a:Lcom/snapchat/android/InAppNotificationManager;

    invoke-static {v0}, Lcom/snapchat/android/InAppNotificationManager;->a(Lcom/snapchat/android/InAppNotificationManager;)V

    .line 211
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    return-void
.end method
