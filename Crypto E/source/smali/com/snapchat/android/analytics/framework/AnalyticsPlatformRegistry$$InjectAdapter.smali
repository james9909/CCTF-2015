.class public final Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/analytics/framework/PostEventsAnalyticsPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 28
    const-string v0, "com.snapchat.android.analytics.framework.AnalyticsPlatformRegistry"

    const-string v1, "members/com.snapchat.android.analytics.framework.AnalyticsPlatformRegistry"

    const/4 v2, 0x0

    const-class v3, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 29
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;
    .locals 6

    .prologue
    .line 64
    new-instance v0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;

    iget-object v1, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;

    iget-object v2, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;

    iget-object v3, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/android/analytics/framework/PostEventsAnalyticsPlatform;

    iget-object v4, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;

    iget-object v5, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-virtual {v5}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;-><init>(Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;Lcom/snapchat/android/analytics/framework/PostEventsAnalyticsPlatform;Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;)V

    .line 65
    return-object v0
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 3
    .parameter

    .prologue
    .line 38
    const-string v0, "com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform"

    const-class v1, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 39
    const-string v0, "com.snapchat.android.analytics.framework.FlurryAnalyticsPlatform"

    const-class v1, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 40
    const-string v0, "com.snapchat.android.analytics.framework.PostEventsAnalyticsPlatform"

    const-class v1, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 41
    const-string v0, "com.snapchat.android.analytics.framework.UserActionTracePlatform"

    const-class v1, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry$$InjectAdapter;->d:Ldagger/internal/Binding;

    .line 42
    const-string v0, "com.snapchat.android.analytics.framework.ScAnalyticsPlatform"

    const-class v1, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry$$InjectAdapter;->e:Ldagger/internal/Binding;

    .line 43
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
    .line 51
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry$$InjectAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry$$InjectAdapter;->e:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry$$InjectAdapter;->a()Lcom/snapchat/android/analytics/framework/AnalyticsPlatformRegistry;

    move-result-object v0

    return-object v0
.end method
