.class Lcom/snapchat/android/fragments/signup/LoginFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/signup/LoginFragment;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/LoginFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/LoginFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$8;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$8;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->f(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$8;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/LoginFragment;->e(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    const/4 v0, 0x0

    return v0
.end method
