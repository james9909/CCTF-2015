.class Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->e()V
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
    .line 382
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$4;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$4;->a:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->f()V

    .line 386
    return-void
.end method
