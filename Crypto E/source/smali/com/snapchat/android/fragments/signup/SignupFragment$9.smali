.class Lcom/snapchat/android/fragments/signup/SignupFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/signup/SignupFragment;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/SignupFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/SignupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$9;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 317
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$9;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/SignupFragment;->f(Lcom/snapchat/android/fragments/signup/SignupFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    .line 318
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$9;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/SignupFragment;->e(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    .line 322
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
