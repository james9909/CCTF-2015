.class public abstract Lcom/snapchat/android/ui/dialog/TwoButtonDialog;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    const v0, 0x7f0c022a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0c0130

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->a:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->b:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->c:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->d:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->setCancelable(Z)V

    .line 59
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->c:Ljava/lang/String;

    new-instance v2, Lcom/snapchat/android/ui/dialog/TwoButtonDialog$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog$1;-><init>(Lcom/snapchat/android/ui/dialog/TwoButtonDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 66
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->d:Ljava/lang/String;

    new-instance v2, Lcom/snapchat/android/ui/dialog/TwoButtonDialog$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog$2;-><init>(Lcom/snapchat/android/ui/dialog/TwoButtonDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 73
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method
