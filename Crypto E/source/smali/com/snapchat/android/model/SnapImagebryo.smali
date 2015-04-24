.class public Lcom/snapchat/android/model/SnapImagebryo;
.super Lcom/snapchat/android/model/Snapbryo;
.source "SourceFile"


# static fields
.field private static final JPEG_ENCODING_QUALITY:I = 0x3c


# direct methods
.method private constructor <init>(Lcom/snapchat/android/model/SnapImagebryo;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/Snapbryo;-><init>(Lcom/snapchat/android/model/Snapbryo;)V

    .line 20
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/model/Snapbryo$Builder;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/Snapbryo;-><init>(Lcom/snapchat/android/model/Snapbryo$Builder;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/model/Snapbryo;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/snapchat/android/model/SnapImagebryo;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/SnapImagebryo;-><init>(Lcom/snapchat/android/model/SnapImagebryo;)V

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapImagebryo;->a()Lcom/snapchat/android/model/Snapbryo;

    move-result-object v0

    return-object v0
.end method

.method public d()[B
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapImagebryo;->B()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    .line 49
    :cond_0
    invoke-static {v0}, Lcom/snapchat/android/util/SnapMediaUtils;->d(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/snapchat/android/util/SnapMediaUtils;->a(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic e()Lcom/snapchat/android/model/AnnotatedMediabryo;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/snapchat/android/model/SnapImagebryo;->a()Lcom/snapchat/android/model/Snapbryo;

    move-result-object v0

    return-object v0
.end method

.method public f(Z)V
    .locals 0
    .parameter

    .prologue
    .line 35
    return-void
.end method
