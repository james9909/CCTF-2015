.class Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog$2;
.super Lcom/snapchat/android/util/cache/SaveImageToGalleryTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->a(Lcom/snapchat/android/model/StorySnap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog$2;->a:Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;

    invoke-direct {p0, p2, p3}, Lcom/snapchat/android/util/cache/SaveImageToGalleryTask;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/snapchat/android/util/cache/SaveImageToGalleryTask;->a()V

    .line 113
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog$2;->a:Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;

    invoke-static {v0}, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->b(Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;)Lcom/snapchat/android/model/StoryGroup;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->SAVED:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    .line 114
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/snapchat/android/util/cache/SaveImageToGalleryTask;->b()V

    .line 118
    const v0, 0x7f0c016f

    iget-object v1, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog$2;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 119
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog$2;->a:Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;

    invoke-static {v0}, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->b(Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;)Lcom/snapchat/android/model/StoryGroup;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    .line 120
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/snapchat/android/util/cache/SaveImageToGalleryTask;->onPreExecute()V

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog$2;->a:Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;

    invoke-static {v0}, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->b(Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;)Lcom/snapchat/android/model/StoryGroup;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->SAVING:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    .line 109
    return-void
.end method
