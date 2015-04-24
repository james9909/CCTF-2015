.class public Lcom/snapchat/android/util/bitmap/internal/ByteArrayBitmapSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/bitmap/internal/BitmapSource;


# instance fields
.field private final a:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/snapchat/android/util/bitmap/internal/ByteArrayBitmapSource;->a:[B

    .line 20
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/snapchat/android/util/bitmap/internal/ByteArrayBitmapSource;->a:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/util/bitmap/internal/ByteArrayBitmapSource;->a:[B

    array-length v2, v2

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    return-void
.end method
