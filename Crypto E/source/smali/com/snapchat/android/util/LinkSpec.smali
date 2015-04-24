.class Lcom/snapchat/android/util/LinkSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/snapchat/android/util/chat/UrlType;

.field c:I

.field d:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    sget-object v0, Lcom/snapchat/android/util/chat/UrlType;->b:Lcom/snapchat/android/util/chat/UrlType;

    iput-object v0, p0, Lcom/snapchat/android/util/LinkSpec;->b:Lcom/snapchat/android/util/chat/UrlType;

    return-void
.end method
