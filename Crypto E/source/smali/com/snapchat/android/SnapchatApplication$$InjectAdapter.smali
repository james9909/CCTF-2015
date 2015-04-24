.class public final Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/snapchat/android/SnapchatApplication;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/snapchat/android/SnapchatApplication;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/SnapchatApplication;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/util/debug/ReleaseManager;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/util/debug/StrictModeHelper;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/ads/AdManager;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/discover/controller/DiscoverMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/api/ScreenParameterProvider;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/util/debug/DeveloperSettings;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/service/SnapchatServiceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 37
    const-string v0, "com.snapchat.android.SnapchatApplication"

    const-string v1, "members/com.snapchat.android.SnapchatApplication"

    const/4 v2, 0x0

    const-class v3, Lcom/snapchat/android/SnapchatApplication;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 38
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/SnapchatApplication;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/snapchat/android/SnapchatApplication;

    invoke-direct {v0}, Lcom/snapchat/android/SnapchatApplication;-><init>()V

    .line 84
    invoke-virtual {p0, v0}, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->a(Lcom/snapchat/android/SnapchatApplication;)V

    .line 85
    return-object v0
.end method

.method public a(Lcom/snapchat/android/SnapchatApplication;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->c:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/debug/ReleaseManager;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->d:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/debug/StrictModeHelper;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->e:Lcom/snapchat/android/util/debug/StrictModeHelper;

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ads/AdManager;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->f:Lcom/snapchat/android/ads/AdManager;

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->h:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    .line 100
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api/ScreenParameterProvider;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->i:Lcom/snapchat/android/api/ScreenParameterProvider;

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->h:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->j:Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->i:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/debug/DeveloperSettings;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->k:Lcom/snapchat/android/util/debug/DeveloperSettings;

    .line 103
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->j:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/service/SnapchatServiceManager;

    iput-object v0, p1, Lcom/snapchat/android/SnapchatApplication;->l:Lcom/snapchat/android/service/SnapchatServiceManager;

    .line 104
    return-void
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 3
    .parameter

    .prologue
    .line 47
    const-string v0, "com.snapchat.android.util.crypto.SlightlySecurePreferences"

    const-class v1, Lcom/snapchat/android/SnapchatApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 48
    const-string v0, "com.snapchat.android.util.debug.ReleaseManager"

    const-class v1, Lcom/snapchat/android/SnapchatApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 49
    const-string v0, "com.snapchat.android.util.debug.StrictModeHelper"

    const-class v1, Lcom/snapchat/android/SnapchatApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 50
    const-string v0, "com.snapchat.android.ads.AdManager"

    const-class v1, Lcom/snapchat/android/SnapchatApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 51
    const-string v0, "com.snapchat.android.discover.model.database.vtable.DiscoverRepository"

    const-class v1, Lcom/snapchat/android/SnapchatApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->e:Ldagger/internal/Binding;

    .line 52
    const-string v0, "com.snapchat.android.discover.controller.DiscoverMediaManager"

    const-class v1, Lcom/snapchat/android/SnapchatApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->f:Ldagger/internal/Binding;

    .line 53
    const-string v0, "com.snapchat.android.api.ScreenParameterProvider"

    const-class v1, Lcom/snapchat/android/SnapchatApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->g:Ldagger/internal/Binding;

    .line 54
    const-string v0, "com.snapchat.android.camera.transcoding.DeviceVideoEncodingResolutionSet"

    const-class v1, Lcom/snapchat/android/SnapchatApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->h:Ldagger/internal/Binding;

    .line 55
    const-string v0, "com.snapchat.android.util.debug.DeveloperSettings"

    const-class v1, Lcom/snapchat/android/SnapchatApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->i:Ldagger/internal/Binding;

    .line 56
    const-string v0, "com.snapchat.android.service.SnapchatServiceManager"

    const-class v1, Lcom/snapchat/android/SnapchatApplication;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->j:Ldagger/internal/Binding;

    .line 57
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/snapchat/android/SnapchatApplication;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->a(Lcom/snapchat/android/SnapchatApplication;)V

    return-void
.end method

.method public a(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->h:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->i:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->j:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatApplication$$InjectAdapter;->a()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    return-object v0
.end method
