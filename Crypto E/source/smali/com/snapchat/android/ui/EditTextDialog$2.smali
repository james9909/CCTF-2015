.class Lcom/snapchat/android/ui/EditTextDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/EditTextDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/snapchat/android/ui/EditTextDialog;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/EditTextDialog;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/snapchat/android/ui/EditTextDialog$2;->b:Lcom/snapchat/android/ui/EditTextDialog;

    iput-object p2, p0, Lcom/snapchat/android/ui/EditTextDialog$2;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/snapchat/android/ui/EditTextDialog$2;->b:Lcom/snapchat/android/ui/EditTextDialog;

    invoke-static {v0}, Lcom/snapchat/android/ui/EditTextDialog;->a(Lcom/snapchat/android/ui/EditTextDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 98
    iget-object v1, p0, Lcom/snapchat/android/ui/EditTextDialog$2;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 99
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 100
    return-void
.end method
