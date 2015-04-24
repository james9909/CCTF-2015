.class Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/ProgressBar;

.field final synthetic d:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->d:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->a:Landroid/widget/Button;

    iput-object p3, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->c:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->d:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 156
    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->b:Landroid/widget/TextView;

    const v1, 0x7f0c0041

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    new-instance v0, Lcom/snapchat/android/api/GetCaptchaTask;

    iget-object v1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$4;->d:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-direct {v0, v1}, Lcom/snapchat/android/api/GetCaptchaTask;-><init>(Lcom/snapchat/android/api/GetCaptchaTask$GetCaptchaInterface;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/GetCaptchaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
