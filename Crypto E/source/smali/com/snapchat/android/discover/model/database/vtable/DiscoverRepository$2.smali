.class Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$2;
.super Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DiscoverContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$2;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-direct {p0, p2}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DiscoverContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$2;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-static {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->b(Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;)V

    .line 186
    return-void
.end method
