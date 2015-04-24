.class final Lcom/snapchat/android/util/AlertDialogUtils$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->a:Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/snapchat/android/util/AlertDialogUtils$10;->a:Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;

    sget-object v1, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->b:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    invoke-interface {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;->a(Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;)V

    .line 272
    return-void
.end method
