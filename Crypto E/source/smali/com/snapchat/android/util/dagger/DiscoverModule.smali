.class public Lcom/snapchat/android/util/dagger/DiscoverModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 21
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a()Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/snapchat/android/discover/controller/DiscoverMediaManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a()Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    move-result-object v0

    return-object v0
.end method
