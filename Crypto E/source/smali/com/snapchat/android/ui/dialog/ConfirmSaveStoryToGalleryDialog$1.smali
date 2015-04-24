.class Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog$1;->a:Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    sget-object v0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog$3;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal dialog option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->w(Z)V

    .line 56
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog$1;->a:Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;

    invoke-static {v0}, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->a(Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;)V

    .line 67
    :goto_0
    :pswitch_1
    return-void

    .line 59
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog$1;->a:Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;

    invoke-static {v0}, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->a(Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;)V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
