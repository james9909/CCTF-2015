.class Lcom/snapchat/android/fragments/signup/LoginFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/signup/LoginFragment;
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
    .line 105
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 109
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/LoginFragment;->a(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 111
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->a(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/LoginFragment;->b(Lcom/snapchat/android/fragments/signup/LoginFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {}, Lcom/snapchat/android/fragments/signup/LoginFragment;->b()Lcom/snapchat/android/util/SnapKidzLoginManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/snapchat/android/util/SnapKidzLoginManager;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    invoke-static {}, Lcom/snapchat/android/fragments/signup/LoginFragment;->b()Lcom/snapchat/android/util/SnapKidzLoginManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/util/SnapKidzLoginManager;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v1, v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->a(Lcom/snapchat/android/fragments/signup/LoginFragment;Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    const v2, 0x7f0c010b

    invoke-virtual {v1, v2}, Lcom/snapchat/android/fragments/signup/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$1;->a:Lcom/snapchat/android/fragments/signup/LoginFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/LoginFragment;->c(Lcom/snapchat/android/fragments/signup/LoginFragment;)V

    goto :goto_0
.end method
