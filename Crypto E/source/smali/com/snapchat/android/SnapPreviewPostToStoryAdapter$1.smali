.class Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->b(Landroid/view/View;Lcom/snapchat/android/model/PostToStory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/PostToStory;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;Lcom/snapchat/android/model/PostToStory;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->d:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;

    iput-object p2, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->a:Lcom/snapchat/android/model/PostToStory;

    iput-object p3, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 77
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->a:Lcom/snapchat/android/model/PostToStory;

    instance-of v0, v0, Lcom/snapchat/android/model/MyPostToStory;

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->d:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;

    iget-object v0, v0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->a:Lcom/snapchat/android/database/HasSeenPostToOurStoryDialogLog;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->a:Lcom/snapchat/android/model/PostToStory;

    invoke-virtual {v1}, Lcom/snapchat/android/model/PostToStory;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/database/HasSeenPostToOurStoryDialogLog;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->d:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;

    invoke-static {v1}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->a(Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->a:Lcom/snapchat/android/model/PostToStory;

    new-instance v3, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1$1;-><init>(Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/PostToStory;Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog$PostToStoryDialogCallback;)V

    invoke-virtual {v0}, Lcom/snapchat/android/ui/dialog/PostToOurStoryDialog;->show()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->d:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->b(Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;)Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$PostToStoryCheckedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->a:Lcom/snapchat/android/model/PostToStory;

    invoke-interface {v0, v1, p2}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$PostToStoryCheckedCallback;->a(Lcom/snapchat/android/model/PostToStory;Z)V

    .line 91
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->d:Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;

    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter$1;->a:Lcom/snapchat/android/model/PostToStory;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;->a(Lcom/snapchat/android/SnapPreviewPostToStoryAdapter;Landroid/view/View;Lcom/snapchat/android/model/PostToStory;)V

    .line 92
    return-void
.end method
