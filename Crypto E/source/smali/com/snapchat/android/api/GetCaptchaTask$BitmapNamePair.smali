.class Lcom/snapchat/android/api/GetCaptchaTask$BitmapNamePair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api/GetCaptchaTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapNamePair"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/snapchat/android/api/GetCaptchaTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api/GetCaptchaTask;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/snapchat/android/api/GetCaptchaTask$BitmapNamePair;->this$0:Lcom/snapchat/android/api/GetCaptchaTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/snapchat/android/api/GetCaptchaTask$BitmapNamePair;->mName:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/snapchat/android/api/GetCaptchaTask$BitmapNamePair;->mBitmap:Landroid/graphics/Bitmap;

    .line 56
    return-void
.end method
