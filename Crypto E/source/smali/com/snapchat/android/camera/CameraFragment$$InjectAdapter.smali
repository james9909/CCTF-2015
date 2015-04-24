.class public final Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;
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
        "Lcom/snapchat/android/camera/CameraFragment;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/snapchat/android/camera/CameraFragment;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/camera/CameraFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/camera/controller/TakePhotoController;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/camera/controller/VideoRecordingController;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/camera/model/ZoomModel;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/camera/model/FlashModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/camera/model/VideoRecordingModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/analytics/LifecycleAnalytics;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/util/debug/ExceptionReporter;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/camera/BaseCameraFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 36
    const-string v0, "com.snapchat.android.camera.CameraFragment"

    const-string v1, "members/com.snapchat.android.camera.CameraFragment"

    const/4 v2, 0x0

    const-class v3, Lcom/snapchat/android/camera/CameraFragment;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/camera/CameraFragment;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/snapchat/android/camera/CameraFragment;

    invoke-direct {v0}, Lcom/snapchat/android/camera/CameraFragment;-><init>()V

    .line 81
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->a(Lcom/snapchat/android/camera/CameraFragment;)V

    .line 82
    return-object v0
.end method

.method public a(Lcom/snapchat/android/camera/CameraFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/controller/TakePhotoController;

    iput-object v0, p1, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/controller/TakePhotoController;

    .line 92
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/controller/VideoRecordingController;

    iput-object v0, p1, Lcom/snapchat/android/camera/CameraFragment;->m:Lcom/snapchat/android/camera/controller/VideoRecordingController;

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/model/ZoomModel;

    iput-object v0, p1, Lcom/snapchat/android/camera/CameraFragment;->n:Lcom/snapchat/android/camera/model/ZoomModel;

    .line 94
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/model/FlashModel;

    iput-object v0, p1, Lcom/snapchat/android/camera/CameraFragment;->o:Lcom/snapchat/android/camera/model/FlashModel;

    .line 95
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/model/VideoRecordingModel;

    iput-object v0, p1, Lcom/snapchat/android/camera/CameraFragment;->p:Lcom/snapchat/android/camera/model/VideoRecordingModel;

    .line 96
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/LifecycleAnalytics;

    iput-object v0, p1, Lcom/snapchat/android/camera/CameraFragment;->q:Lcom/snapchat/android/analytics/LifecycleAnalytics;

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider;

    iput-object v0, p1, Lcom/snapchat/android/camera/CameraFragment;->r:Lcom/snapchat/android/camera/previewsize/DefaultVideoResolutionProvider;

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->h:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/debug/ExceptionReporter;

    iput-object v0, p1, Lcom/snapchat/android/camera/CameraFragment;->s:Lcom/snapchat/android/util/debug/ExceptionReporter;

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->i:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->a(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 6
    .parameter

    .prologue
    .line 46
    const-string v0, "com.snapchat.android.camera.controller.TakePhotoController"

    const-class v1, Lcom/snapchat/android/camera/CameraFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 47
    const-string v0, "com.snapchat.android.camera.controller.VideoRecordingController"

    const-class v1, Lcom/snapchat/android/camera/CameraFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 48
    const-string v0, "com.snapchat.android.camera.model.ZoomModel"

    const-class v1, Lcom/snapchat/android/camera/CameraFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 49
    const-string v0, "com.snapchat.android.camera.model.FlashModel"

    const-class v1, Lcom/snapchat/android/camera/CameraFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 50
    const-string v0, "com.snapchat.android.camera.model.VideoRecordingModel"

    const-class v1, Lcom/snapchat/android/camera/CameraFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->e:Ldagger/internal/Binding;

    .line 51
    const-string v0, "com.snapchat.android.analytics.LifecycleAnalytics"

    const-class v1, Lcom/snapchat/android/camera/CameraFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->f:Ldagger/internal/Binding;

    .line 52
    const-string v0, "com.snapchat.android.camera.previewsize.DefaultVideoResolutionProvider"

    const-class v1, Lcom/snapchat/android/camera/CameraFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->g:Ldagger/internal/Binding;

    .line 53
    const-string v0, "com.snapchat.android.util.debug.ExceptionReporter"

    const-class v1, Lcom/snapchat/android/camera/CameraFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->h:Ldagger/internal/Binding;

    .line 54
    const-string v1, "members/com.snapchat.android.camera.BaseCameraFragment"

    const-class v2, Lcom/snapchat/android/camera/CameraFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->i:Ldagger/internal/Binding;

    .line 55
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/snapchat/android/camera/CameraFragment;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->a(Lcom/snapchat/android/camera/CameraFragment;)V

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
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->f:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->g:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->h:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->i:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment$$InjectAdapter;->a()Lcom/snapchat/android/camera/CameraFragment;

    move-result-object v0

    return-object v0
.end method
