.class Lcom/snapchat/android/fragments/captcha/CaptchaFragment$1;
.super Lcom/snapchat/android/fragments/captcha/CaptchaAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/fragments/captcha/CaptchaAdapter$CaptchaAdapterInterface;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$1;->a:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/snapchat/android/fragments/captcha/CaptchaAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/snapchat/android/fragments/captcha/CaptchaAdapter$CaptchaAdapterInterface;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$1;->a:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->isClickable()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaFragment$1;->a:Lcom/snapchat/android/fragments/captcha/CaptchaFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/captcha/CaptchaFragment;->a(Lcom/snapchat/android/fragments/captcha/CaptchaFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->isClickable()Z

    move-result v0

    return v0
.end method
