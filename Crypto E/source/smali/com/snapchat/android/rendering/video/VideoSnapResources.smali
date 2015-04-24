.class Lcom/snapchat/android/rendering/video/VideoSnapResources;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/rendering/video/VideoSnapResources$1;,
        Lcom/snapchat/android/rendering/video/VideoSnapResources$Builder;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/model/ReceivedSnap;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/snapchat/android/rendering/video/VideoSnapResources;->a:Lcom/snapchat/android/model/ReceivedSnap;

    .line 20
    iput-object p2, p0, Lcom/snapchat/android/rendering/video/VideoSnapResources;->b:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/snapchat/android/rendering/video/VideoSnapResources;->c:Landroid/graphics/Bitmap;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/snapchat/android/rendering/video/VideoSnapResources$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/rendering/video/VideoSnapResources;-><init>(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/model/ReceivedSnap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapResources;->a:Lcom/snapchat/android/model/ReceivedSnap;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapResources;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/rendering/video/VideoSnapResources;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method
