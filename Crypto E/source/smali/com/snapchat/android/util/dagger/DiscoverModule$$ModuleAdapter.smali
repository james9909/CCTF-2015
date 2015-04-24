.class public final Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter;
.super Ldagger/internal/ModuleAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter$ProvideDiscoverMediaManagerProvidesAdapter;,
        Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter$ProvideDiscoverRepositoryProvidesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ModuleAdapter",
        "<",
        "Lcom/snapchat/android/util/dagger/DiscoverModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final j:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "members/com.snapchat.android.discover.ui.fragment.EditionViewerFragment"

    aput-object v1, v0, v2

    sput-object v0, Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter;->h:[Ljava/lang/String;

    .line 15
    new-array v0, v2, [Ljava/lang/Class;

    sput-object v0, Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter;->i:[Ljava/lang/Class;

    .line 16
    new-array v0, v2, [Ljava/lang/Class;

    sput-object v0, Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter;->j:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 19
    const-class v1, Lcom/snapchat/android/util/dagger/DiscoverModule;

    sget-object v2, Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter;->h:[Ljava/lang/String;

    sget-object v3, Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter;->i:[Ljava/lang/Class;

    sget-object v5, Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter;->j:[Ljava/lang/Class;

    const/4 v7, 0x1

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Ldagger/internal/ModuleAdapter;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Z[Ljava/lang/Class;ZZ)V

    .line 20
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/util/dagger/DiscoverModule;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/snapchat/android/util/dagger/DiscoverModule;

    invoke-direct {v0}, Lcom/snapchat/android/util/dagger/DiscoverModule;-><init>()V

    return-object v0
.end method

.method public a(Ldagger/internal/BindingsGroup;Lcom/snapchat/android/util/dagger/DiscoverModule;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 33
    const-string v0, "com.snapchat.android.discover.model.database.vtable.DiscoverRepository"

    new-instance v1, Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter$ProvideDiscoverRepositoryProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter$ProvideDiscoverRepositoryProvidesAdapter;-><init>(Lcom/snapchat/android/util/dagger/DiscoverModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->a(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 34
    const-string v0, "com.snapchat.android.discover.controller.DiscoverMediaManager"

    new-instance v1, Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter$ProvideDiscoverMediaManagerProvidesAdapter;

    invoke-direct {v1, p2}, Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter$ProvideDiscoverMediaManagerProvidesAdapter;-><init>(Lcom/snapchat/android/util/dagger/DiscoverModule;)V

    invoke-virtual {p1, v0, v1}, Ldagger/internal/BindingsGroup;->a(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 35
    return-void
.end method

.method public bridge synthetic a(Ldagger/internal/BindingsGroup;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    check-cast p2, Lcom/snapchat/android/util/dagger/DiscoverModule;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter;->a(Ldagger/internal/BindingsGroup;Lcom/snapchat/android/util/dagger/DiscoverModule;)V

    return-void
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/snapchat/android/util/dagger/DiscoverModule$$ModuleAdapter;->a()Lcom/snapchat/android/util/dagger/DiscoverModule;

    move-result-object v0

    return-object v0
.end method
