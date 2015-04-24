.class Lcom/snapchat/android/fragments/captcha/CaptchaAdapter$CaptchaListEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/captcha/CaptchaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptchaListEntry"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/captcha/CaptchaAdapter;

.field private b:Z

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/captcha/CaptchaAdapter;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaAdapter$CaptchaListEntry;->a:Lcom/snapchat/android/fragments/captcha/CaptchaAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/snapchat/android/fragments/captcha/CaptchaAdapter$CaptchaListEntry;->c:Landroid/graphics/Bitmap;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/captcha/CaptchaAdapter$CaptchaListEntry;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaAdapter$CaptchaListEntry;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/captcha/CaptchaAdapter$CaptchaListEntry;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/captcha/CaptchaAdapter$CaptchaListEntry;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/captcha/CaptchaAdapter$CaptchaListEntry;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/captcha/CaptchaAdapter$CaptchaListEntry;->b:Z

    return v0
.end method
