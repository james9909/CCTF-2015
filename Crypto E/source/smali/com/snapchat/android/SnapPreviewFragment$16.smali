.class Lcom/snapchat/android/SnapPreviewFragment$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/SnapPreviewFragment;->B()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/snapchat/android/SnapPreviewFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapPreviewFragment;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 987
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment$16;->b:Lcom/snapchat/android/SnapPreviewFragment;

    iput-object p2, p0, Lcom/snapchat/android/SnapPreviewFragment$16;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 990
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$16;->a:Landroid/view/View;

    const v2, 0x7f0a0250

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 992
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->d(Z)V

    .line 993
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryLibrary;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 994
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$16;->b:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->m(Lcom/snapchat/android/SnapPreviewFragment;)V

    .line 998
    :goto_1
    return-void

    .line 992
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 996
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$16;->b:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->n(Lcom/snapchat/android/SnapPreviewFragment;)V

    goto :goto_1
.end method
