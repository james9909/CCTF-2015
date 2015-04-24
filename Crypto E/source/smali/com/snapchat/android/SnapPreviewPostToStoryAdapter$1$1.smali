.class Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog$PostToStoryDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1$1;->a:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1$1;->a:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;

    iget-object v0, v0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1$1;->a:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;

    iget-object v0, v0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->d:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;

    iget-object v0, v0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->a:Lcom/snapchat/android/database/HasSeenPostToOurStoryDialogLog;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1$1;->a:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;

    iget-object v1, v1, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->a:Lcom/snapchat/android/model/PostToStory;

    invoke-virtual {v1}, Lcom/snapchat/android/model/PostToStory;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/database/HasSeenPostToOurStoryDialogLog;->b(Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method
