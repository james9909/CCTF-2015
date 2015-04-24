.class Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1SaveStoryProgressCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/task/Task$ProgressUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a([Ljava/lang/Void;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1SaveStoryProgressCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1SaveStoryProgressCallback;->a:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1SaveStoryProgressCallback;->a:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;

    invoke-static {v0}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a(Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;)I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1SaveStoryProgressCallback;->a:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;

    invoke-static {v1}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->b(Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;)I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    .line 201
    iget-object v1, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1SaveStoryProgressCallback;->a:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a(Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;[Ljava/lang/Object;)V

    .line 202
    return-void
.end method
