.class Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/captcha/CaptchaAdapter;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;Lcom/snapchat/android/fragments/captcha/CaptchaAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->c:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->a:Lcom/snapchat/android/fragments/captcha/CaptchaAdapter;

    iput-object p3, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 122
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->c:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 123
    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->a:Lcom/snapchat/android/fragments/captcha/CaptchaAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/captcha/CaptchaAdapter;->a()Ljava/util/List;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/snapchat/android/api/SolveCaptchaTask;

    iget-object v2, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->c:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-direct {v1, v2, v0, v3}, Lcom/snapchat/android/api/SolveCaptchaTask;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/snapchat/android/api/SolveCaptchaTask$SolveCaptchaInterface;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/api/SolveCaptchaTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->c:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setClickable(Z)V

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->c:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->b(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->c:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->b(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$3;->c:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->c(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
