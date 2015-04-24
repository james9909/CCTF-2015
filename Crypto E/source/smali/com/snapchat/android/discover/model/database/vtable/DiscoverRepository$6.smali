.class Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

.field final synthetic b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;[Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$6;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    iput-object p2, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$6;->a:[Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$6;->b:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    iget-object v1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$6;->a:[Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->b([Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$ChannelRepositoryListener;)V

    .line 423
    return-void
.end method
