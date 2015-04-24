.class Lcom/snapchat/android/ui/dialog/TwoButtonDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/dialog/TwoButtonDialog;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/dialog/TwoButtonDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/snapchat/android/ui/dialog/TwoButtonDialog$1;->a:Lcom/snapchat/android/ui/dialog/TwoButtonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/TwoButtonDialog$1;->a:Lcom/snapchat/android/ui/dialog/TwoButtonDialog;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/dialog/TwoButtonDialog;->b()V

    .line 63
    return-void
.end method
