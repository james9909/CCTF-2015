.class Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$1;->a:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$1;->a:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->a(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$1;->a:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->b(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$1;->a:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 80
    :cond_0
    return v2
.end method
