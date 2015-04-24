.class final Lcom/snapchat/android/util/AlertDialogUtils$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/AlertDialogUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/snapchat/android/util/AlertDialogUtils$13;->a:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/snapchat/android/util/AlertDialogUtils$13;->b:Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/snapchat/android/util/AlertDialogUtils$13;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/snapchat/android/util/AlertDialogUtils$13;->b:Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;

    sget-object v1, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->c:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    invoke-interface {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;->a(Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/AlertDialogUtils$13;->b:Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;

    sget-object v1, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->a:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    invoke-interface {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;->a(Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;)V

    goto :goto_0
.end method
