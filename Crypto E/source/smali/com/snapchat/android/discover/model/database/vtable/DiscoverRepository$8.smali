.class Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;
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
    .line 567
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$8;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 571
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$8;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-static {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->e(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 573
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    sget-object v0, Lcom/snapchat/android/discover/model/DiscoverCaches;->b:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->a(Z)V

    .line 575
    sget-object v0, Lcom/snapchat/android/discover/model/DiscoverCaches;->a:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->a(Z)V

    .line 576
    sget-object v0, Lcom/snapchat/android/discover/model/DiscoverCaches;->c:Lcom/snapchat/android/util/cache/Cache;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/cache/Cache;->a(Z)V

    .line 577
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$8;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-static {v0, v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Z)Z

    .line 582
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$8;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-static {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->f(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
