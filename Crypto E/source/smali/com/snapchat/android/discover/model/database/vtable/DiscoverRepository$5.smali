.class Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$5;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$5;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-static {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->c(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$5;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-static {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->d(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->b()Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$5;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-static {v2}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->d(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->a(Landroid/content/Context;)V

    .line 405
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->b()Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$5;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-static {v2}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->d(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->a(Landroid/content/Context;)V

    .line 406
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable;->b()Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$5;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-static {v2}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->d(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable;->a(Landroid/content/Context;)V

    .line 408
    :cond_0
    monitor-exit v1

    .line 409
    return-void

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
