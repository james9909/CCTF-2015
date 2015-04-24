.class public final Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideReleaseManagerProvidesAdapter;
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
    name = "ProvideReleaseManagerProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding",
        "<",
        "Lcom/snapchat/android/util/debug/ReleaseManager;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/util/debug/ReleaseManager;",
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
    .line 323
    const-string v0, "com.snapchat.android.util.debug.ReleaseManager"

    const/4 v1, 0x0

    const-string v2, "com.snapchat.android.util.dagger.AndroidModule"

    const-string v3, "provideReleaseManager"

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 324
    iput-object p1, p0, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideReleaseManagerProvidesAdapter;->c:Lcom/snapchat/android/util/dagger/AndroidModule;

    .line 325
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideReleaseManagerProvidesAdapter;->c(Z)V

    .line 326
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/util/debug/ReleaseManager;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideReleaseManagerProvidesAdapter;->c:Lcom/snapchat/android/util/dagger/AndroidModule;

    invoke-virtual {v0}, Lcom/snapchat/android/util/dagger/AndroidModule;->i()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/snapchat/android/util/dagger/AndroidModule$$ModuleAdapter$ProvideReleaseManagerProvidesAdapter;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v0

    return-object v0
.end method
