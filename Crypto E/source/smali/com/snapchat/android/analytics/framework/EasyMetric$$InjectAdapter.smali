.class public final Lcom/snapchat/android/analytics/framework/EasyMetric$$InjectAdapter;
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
        "Lcom/snapchat/android/analytics/framework/EasyMetric;",
        ">;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/snapchat/android/analytics/framework/EasyMetric;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/analytics/framework/EasyMetric;",
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
            "Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    const-string v0, "com.snapchat.android.analytics.framework.EasyMetric"

    const-string v1, "members/com.snapchat.android.analytics.framework.EasyMetric"

    const/4 v2, 0x0

    const-class v3, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/analytics/framework/EasyMetric;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>()V

    .line 63
    invoke-virtual {p0, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric$$InjectAdapter;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;)V

    .line 64
    return-object v0
.end method

.method public a(Lcom/snapchat/android/analytics/framework/EasyMetric;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;

    iput-object v0, p1, Lcom/snapchat/android/analytics/framework/EasyMetric;->b:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;

    iput-object v0, p1, Lcom/snapchat/android/analytics/framework/EasyMetric;->c:Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;

    .line 75
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;

    iput-object v0, p1, Lcom/snapchat/android/analytics/framework/EasyMetric;->d:Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;

    .line 76
    return-void
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 3
    .parameter

    .prologue
    .line 40
    const-string v0, "com.snapchat.android.analytics.framework.UpdateSnapsAnalyticsPlatform"

    const-class v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$$InjectAdapter;->a:Ldagger/internal/Binding;

    .line 41
    const-string v0, "com.snapchat.android.analytics.framework.FlurryAnalyticsPlatform"

    const-class v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$$InjectAdapter;->b:Ldagger/internal/Binding;

    .line 42
    const-string v0, "com.snapchat.android.analytics.framework.UserActionTracePlatform"

    const-class v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$$InjectAdapter;->c:Ldagger/internal/Binding;

    .line 43
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/analytics/framework/EasyMetric$$InjectAdapter;->a(Lcom/snapchat/android/analytics/framework/EasyMetric;)V

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
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$$InjectAdapter;->a:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$$InjectAdapter;->b:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/EasyMetric$$InjectAdapter;->c:Ldagger/internal/Binding;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/snapchat/android/analytics/framework/EasyMetric$$InjectAdapter;->a()Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    return-object v0
.end method
