.class Lcom/snapchat/android/ui/EditTextDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 103
    iput-object p1, p0, Lcom/snapchat/android/ui/EditTextDialog$3;->a:Lcom/snapchat/android/ui/EditTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 106
    if-eqz p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/snapchat/android/ui/EditTextDialog$3;->a:Lcom/snapchat/android/ui/EditTextDialog;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/EditTextDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 109
    :cond_0
    return-void
.end method
