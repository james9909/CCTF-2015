.class Lcom/snapchat/android/SnapPreviewFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/SnapPreviewFragment;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapPreviewFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment$2;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 705
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$2;->a:Lcom/snapchat/android/SnapPreviewFragment;

    const-string v1, "input_method"

    invoke-static {v0, v1}, Lcom/snapchat/android/SnapPreviewFragment;->a(Lcom/snapchat/android/SnapPreviewFragment;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 706
    iget-object v1, p0, Lcom/snapchat/android/SnapPreviewFragment$2;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v1}, Lcom/snapchat/android/SnapPreviewFragment;->a(Lcom/snapchat/android/SnapPreviewFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 708
    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$2;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/SnapPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 709
    return-void
.end method
