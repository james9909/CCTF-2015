.class Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1SaveStoryDoneCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/videotranscoder/task/Task$DoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->a([Ljava/lang/Void;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1SaveStoryDoneCallback"
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 187
    iput-object p1, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1SaveStoryDoneCallback;->b:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;

    iput-object p2, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1SaveStoryDoneCallback;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/videotranscoder/task/Task$Status;)V
    .locals 2
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 190
    iget-object v1, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1SaveStoryDoneCallback;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$1SaveStoryDoneCallback;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 192
    monitor-exit v1

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
