.class public Lcom/snapchat/android/util/dagger/AndroidModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/SnapchatApplication;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/SnapchatApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Lcom/snapchat/android/util/dagger/AndroidModule;->a:Lcom/snapchat/android/SnapchatApplication;

    .line 250
    return-void
.end method


# virtual methods
.method a()Landroid/content/Context;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/snapchat/android/util/dagger/AndroidModule;->a:Lcom/snapchat/android/SnapchatApplication;

    return-object v0
.end method

.method a(Lcom/snapchat/eventengine/ScAnalyticsEventEngine;)Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;
    .locals 1
    .parameter
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 279
    new-instance v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;

    invoke-direct {v0, p1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsPlatform;-><init>(Lcom/snapchat/eventengine/ScAnalyticsEventEngine;)V

    return-object v0
.end method

.method b()Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;-><init>()V

    return-object v0
.end method

.method c()Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;-><init>()V

    return-object v0
.end method

.method d()Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;-><init>()V

    return-object v0
.end method

.method e()Lcom/snapchat/android/ads/AdManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 285
    invoke-static {}, Lcom/snapchat/android/ads/AdManager;->a()Lcom/snapchat/android/ads/AdManager;

    move-result-object v0

    return-object v0
.end method

.method f()Lcom/snapchat/android/service/SnapchatServiceManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 291
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    return-object v0
.end method

.method g()Lcom/snapchat/android/api/ScreenParameterProvider;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 297
    invoke-static {}, Lcom/snapchat/android/api/ScreenParameterProvider;->a()Lcom/snapchat/android/api/ScreenParameterProvider;

    move-result-object v0

    return-object v0
.end method

.method h()Lcom/snapchat/android/util/debug/DeveloperSettings;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 303
    invoke-static {}, Lcom/snapchat/android/util/debug/DeveloperSettings;->a()Lcom/snapchat/android/util/debug/DeveloperSettings;

    move-result-object v0

    return-object v0
.end method

.method i()Lcom/snapchat/android/util/debug/ReleaseManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 308
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v0

    return-object v0
.end method

.method j()Lcom/snapchat/android/util/debug/CrashSampler;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 313
    invoke-static {}, Lcom/snapchat/android/util/debug/CrashSampler;->a()Lcom/snapchat/android/util/debug/CrashSampler;

    move-result-object v0

    return-object v0
.end method

.method k()Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .prologue
    .line 318
    invoke-static {}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->a()Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    move-result-object v0

    return-object v0
.end method
