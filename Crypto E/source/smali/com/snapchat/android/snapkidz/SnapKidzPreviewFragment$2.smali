.class Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$2;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$2;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    const-string v1, "input_method"

    invoke-static {v0, v1}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 296
    iget-object v1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$2;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-static {v1}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->b(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 299
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$2;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->a(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    .line 300
    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$2;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 301
    return-void
.end method
