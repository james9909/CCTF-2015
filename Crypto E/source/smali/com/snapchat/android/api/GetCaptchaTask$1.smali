.class Lcom/snapchat/android/api/GetCaptchaTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/api/GetCaptchaTask;->a(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/ResponseBody;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/snapchat/android/api/GetCaptchaTask$BitmapNamePair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/api/GetCaptchaTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api/GetCaptchaTask;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/snapchat/android/api/GetCaptchaTask$1;->this$0:Lcom/snapchat/android/api/GetCaptchaTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api/GetCaptchaTask$BitmapNamePair;Lcom/snapchat/android/api/GetCaptchaTask$BitmapNamePair;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 147
    iget-object v0, p1, Lcom/snapchat/android/api/GetCaptchaTask$BitmapNamePair;->mName:Ljava/lang/String;

    iget-object v1, p2, Lcom/snapchat/android/api/GetCaptchaTask$BitmapNamePair;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    check-cast p1, Lcom/snapchat/android/api/GetCaptchaTask$BitmapNamePair;

    check-cast p2, Lcom/snapchat/android/api/GetCaptchaTask$BitmapNamePair;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/api/GetCaptchaTask$1;->a(Lcom/snapchat/android/api/GetCaptchaTask$BitmapNamePair;Lcom/snapchat/android/api/GetCaptchaTask$BitmapNamePair;)I

    move-result v0

    return v0
.end method
