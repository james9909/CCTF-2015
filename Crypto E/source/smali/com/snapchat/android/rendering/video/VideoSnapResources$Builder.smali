.class public Lcom/snapchat/android/rendering/video/VideoSnapResources$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/rendering/video/VideoSnapResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/model/ReceivedSnap;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/snapchat/android/rendering/video/VideoSnapResources$Builder;->a:Lcom/snapchat/android/model/ReceivedSnap;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Lcom/snapchat/android/rendering/video/VideoSnapResources$Builder;
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/snapchat/android/rendering/video/VideoSnapResources$Builder;->c:Landroid/graphics/Bitmap;

    .line 55
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/android/rendering/video/VideoSnapResources$Builder;
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/snapchat/android/rendering/video/VideoSnapResources$Builder;->b:Ljava/lang/String;

    .line 50
    return-object p0
.end method

.method public a()Lcom/snapchat/android/rendering/video/VideoSnapResources;
    .locals 5

    .prologue
    .line 59
    new-instance v0, Lcom/snapchat/android/rendering/video/VideoSnapResources;

    iget-object v1, p0, Lcom/snapchat/android/rendering/video/VideoSnapResources$Builder;->a:Lcom/snapchat/android/model/ReceivedSnap;

    iget-object v2, p0, Lcom/snapchat/android/rendering/video/VideoSnapResources$Builder;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/snapchat/android/rendering/video/VideoSnapResources$Builder;->c:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/rendering/video/VideoSnapResources;-><init>(Lcom/snapchat/android/model/ReceivedSnap;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/snapchat/android/rendering/video/VideoSnapResources$1;)V

    return-object v0
.end method
