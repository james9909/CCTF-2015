.class Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->c()V
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
        "Lcom/snapchat/android/model/StorySnapLogbook;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1;->a:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/model/StorySnapLogbook;)I
    .locals 4
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 249
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->j()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnapLogbook;->j()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 250
    const/4 v0, -0x1

    .line 254
    :goto_0
    return v0

    .line 251
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnapLogbook;->j()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/StorySnapLogbook;->j()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 252
    const/4 v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 246
    check-cast p1, Lcom/snapchat/android/model/StorySnapLogbook;

    check-cast p2, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1;->a(Lcom/snapchat/android/model/StorySnapLogbook;Lcom/snapchat/android/model/StorySnapLogbook;)I

    move-result v0

    return v0
.end method
