.class public Lcom/snapchat/android/ui/dialog/OneButtonDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/snapchat/android/ui/dialog/OneButtonDialog;->a:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/snapchat/android/ui/dialog/OneButtonDialog;->b:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/OneButtonDialog;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/dialog/OneButtonDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/dialog/OneButtonDialog;->setCancelable(Z)V

    .line 39
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/snapchat/android/ui/dialog/OneButtonDialog;->b:Landroid/content/Context;

    const v2, 0x7f0c0142

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/ui/dialog/OneButtonDialog$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/ui/dialog/OneButtonDialog$1;-><init>(Lcom/snapchat/android/ui/dialog/OneButtonDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/snapchat/android/ui/dialog/OneButtonDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 47
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 48
    return-void
.end method
