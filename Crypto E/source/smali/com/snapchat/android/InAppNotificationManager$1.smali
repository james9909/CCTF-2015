.class Lcom/snapchat/android/InAppNotificationManager$1;
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
    .line 181
    iput-object p1, p0, Lcom/snapchat/android/InAppNotificationManager$1;->a:Lcom/snapchat/android/InAppNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager$1;->a:Lcom/snapchat/android/InAppNotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/InAppNotificationManager;->a(I)V

    .line 193
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/snapchat/android/InAppNotificationManager$1;->a:Lcom/snapchat/android/InAppNotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/InAppNotificationManager;->a(I)V

    .line 185
    return-void
.end method
