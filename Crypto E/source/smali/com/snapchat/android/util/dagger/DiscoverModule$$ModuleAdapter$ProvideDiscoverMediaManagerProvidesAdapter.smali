.class public final Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter$ProvideDiscoverMediaManagerProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideDiscoverMediaManagerProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/snapchat/android/discover/controller/DiscoverMediaManager;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/discover/controller/DiscoverMediaManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/snapchat/android/util/dagger/DiscoverModule;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/dagger/DiscoverModule;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 76
    const-string v0, "com.snapchat.android.discover.controller.DiscoverMediaManager"

    const-string v1, "com.snapchat.android.util.dagger.DiscoverModule"

    const-string v2, "provideDiscoverMediaManager"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter$ProvideDiscoverMediaManagerProvidesAdapter;->c:Lcom/snapchat/android/util/dagger/DiscoverModule;

    .line 78
    invoke-virtual {p0, v3}, Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter$ProvideDiscoverMediaManagerProvidesAdapter;->c(Z)V

    .line 79
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/discover/controller/DiscoverMediaManager;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter$ProvideDiscoverMediaManagerProvidesAdapter;->c:Lcom/snapchat/android/util/dagger/DiscoverModule;

    invoke-virtual {v0}, Lcom/snapchat/android/util/dagger/DiscoverModule;->b()Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter$ProvideDiscoverMediaManagerProvidesAdapter;->a()Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    move-result-object v0

    return-object v0
.end method
