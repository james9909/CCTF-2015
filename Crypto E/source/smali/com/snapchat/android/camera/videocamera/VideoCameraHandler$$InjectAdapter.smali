.class public final Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SourceFile"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/camera/videocamera/ScCamcorderProfileProvider;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/camera/model/CameraModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/util/debug/ExceptionReporter;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/util/WaitDoneHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    const/4 v0, 0x0

    const-string v1, "members/com.snapchat.android.camera.videocamera.VideoCameraHandler"

    const/4 v2, 0x0

    const-class v3, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/videocamera/ScCamcorderProfileProvider;

    iput-object v0, p1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->c:Lcom/snapchat/android/camera/videocamera/ScCamcorderProfileProvider;

    .line 65
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/model/CameraModel;

    iput-object v0, p1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->d:Lcom/snapchat/android/camera/model/CameraModel;

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/debug/ExceptionReporter;

    iput-object v0, p1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;->e:Lcom/snapchat/android/util/debug/ExceptionReporter;

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->a(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 6
    .parameter

    .prologue
    .line 40
    const-string v0, "com.snapchat.android.camera.videocamera.ScCamcorderProfileProvider"

    const-class v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 41
    const-string v0, "com.snapchat.android.camera.model.CameraModel"

    const-class v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 42
    const-string v0, "com.snapchat.android.util.debug.ExceptionReporter"

    const-class v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 43
    const-string v1, "members/com.snapchat.android.util.WaitDoneHandler"

    const-class v2, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 44
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$$InjectAdapter;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler;)V

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
    .line 52
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method