.class Lcom/snapchat/android/api2/framework/MultipartEncodedFieldMapper;
.super Lcom/snapchat/android/api2/framework/AbstractFieldMapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/api2/framework/AbstractFieldMapper",
        "<",
        "Ljava/lang/Object;",
        "Lcom/snapchat/android/api2/framework/HttpContent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 11
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/snapchat/android/api2/framework/AbstractFieldMapper;-><init>(Ljava/lang/Class;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/snapchat/android/api2/framework/MultipartEncodedFieldMapper;->c(Ljava/lang/Object;)Lcom/snapchat/android/api2/framework/HttpContent;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/Object;)Lcom/snapchat/android/api2/framework/HttpContent;
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 16
    instance-of v0, p1, Lcom/snapchat/android/api2/framework/HttpContent;

    if-eqz v0, :cond_0

    .line 17
    check-cast p1, Lcom/snapchat/android/api2/framework/HttpContent;

    return-object p1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object is the wrong type. Expected HttpContent but got %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
