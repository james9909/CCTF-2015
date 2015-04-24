.class public final Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideScAnalyticsPlatformProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideScAnalyticsPlatformProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/snapchat/android/util/dagger/AndroidModule;

.field private d:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding",
            "<",
            "Lcom/snapchat/eventengine/ScAnalyticsEventEngine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/dagger/AndroidModule;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 169
    const-string v0, "com.snapchat.android.analytics.framework.ScAnalyticsPlatform"

    const-string v1, "com.snapchat.android.util.dagger.AndroidModule"

    const-string v2, "provideScAnalyticsPlatform"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 170
    iput-object p1, p0, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideScAnalyticsPlatformProvidesAdapter;->c:Lcom/snapchat/android/util/dagger/AndroidModule;

    .line 171
    invoke-virtual {p0, v3}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideScAnalyticsPlatformProvidesAdapter;->c(Z)V

    .line 172
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;
    .locals 2

    .prologue
    .line 199
    iget-object v1, p0, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideScAnalyticsPlatformProvidesAdapter;->c:Lcom/snapchat/android/util/dagger/AndroidModule;

    iget-object v0, p0, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideScAnalyticsPlatformProvidesAdapter;->d:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/eventengine/ScAnalyticsEventEngine;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/dagger/AndroidModule;->a(Lcom/snapchat/eventengine/ScAnalyticsEventEngine;)Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;

    move-result-object v0

    return-object v0
.end method

.method public a(Ldagger/internal/Linker;)V
    .locals 3
    .parameter

    .prologue
    .line 181
    const-string v0, "com.snapchat.eventengine.ScAnalyticsEventEngine"

    const-class v1, Lcom/snapchat/android/util/dagger/AndroidModule;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Ldagger/internal/Linker;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideScAnalyticsPlatformProvidesAdapter;->d:Ldagger/internal/Binding;

    .line 182
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
    .line 190
    iget-object v0, p0, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideScAnalyticsPlatformProvidesAdapter;->d:Ldagger/internal/Binding;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideScAnalyticsPlatformProvidesAdapter;->a()Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;

    move-result-object v0

    return-object v0
.end method
