.class Lcom/snapchat/android/ui/EditTextDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/EditTextDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/EditTextDialog;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/EditTextDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/snapchat/android/ui/EditTextDialog$4;->a:Lcom/snapchat/android/ui/EditTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 115
    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/EditTextDialog$4;->a:Lcom/snapchat/android/ui/EditTextDialog;

    invoke-static {v0}, Lcom/snapchat/android/ui/EditTextDialog;->a(Lcom/snapchat/android/ui/EditTextDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 119
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 120
    iget-object v0, p0, Lcom/snapchat/android/ui/EditTextDialog$4;->a:Lcom/snapchat/android/ui/EditTextDialog;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/EditTextDialog;->a(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/snapchat/android/ui/EditTextDialog$4;->a:Lcom/snapchat/android/ui/EditTextDialog;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/EditTextDialog;->dismiss()V

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
