.class public final Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideUserActionTracePlatformProvidesAdapter;
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
    name = "ProvideUserActionTracePlatformProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lcom/snapchat/android/util/dagger/AndroidModule;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/dagger/AndroidModule;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 138
    const-string v0, "com.snapchat.android.analytics.framework.UserActionTracePlatform"

    const-string v1, "com.snapchat.android.util.dagger.AndroidModule"

    const-string v2, "provideUserActionTracePlatform"

    invoke-direct {p0, v0, v3, v1, v2}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 139
    iput-object p1, p0, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideUserActionTracePlatformProvidesAdapter;->c:Lcom/snapchat/android/util/dagger/AndroidModule;

    .line 140
    invoke-virtual {p0, v3}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideUserActionTracePlatformProvidesAdapter;->c(Z)V

    .line 141
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideUserActionTracePlatformProvidesAdapter;->c:Lcom/snapchat/android/util/dagger/AndroidModule;

    invoke-virtual {v0}, Lcom/snapchat/android/util/dagger/AndroidModule;->d()Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideUserActionTracePlatformProvidesAdapter;->a()Lcom/snapchat/android/analytics/framework/UserActionTracePlatform;

    move-result-object v0

    return-object v0
.end method
