.class public Lcom/snapchat/android/SnapchatApplication;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/SnapchatApplication$Crashable;
    }
.end annotation


# static fields
.field protected static a:Z

.field static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/snapchat/android/SnapchatApplication$Crashable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static m:Lcom/snapchat/android/SnapchatApplication;


# instance fields
.field c:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/snapchat/android/util/debug/ReleaseManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/snapchat/android/util/debug/StrictModeHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/snapchat/android/ads/AdManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/snapchat/android/api/ScreenParameterProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/snapchat/android/util/debug/DeveloperSettings;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/snapchat/android/service/SnapchatServiceManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private n:Ldagger/ObjectGraph;

.field private final o:Lcom/snapchat/android/ApplicationMemoryMonitor;

.field private p:Lcom/snapchat/android/util/debug/DebugCrashReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snapchat/android/SnapchatApplication;->a:Z

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/snapchat/android/SnapchatApplication;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 50
    new-instance v0, Lcom/snapchat/android/ApplicationMemoryMonitor;

    invoke-direct {v0}, Lcom/snapchat/android/ApplicationMemoryMonitor;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->o:Lcom/snapchat/android/ApplicationMemoryMonitor;

    .line 66
    new-instance v0, Lcom/snapchat/android/util/debug/DebugCrashReporter;

    invoke-direct {v0}, Lcom/snapchat/android/util/debug/DebugCrashReporter;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->p:Lcom/snapchat/android/util/debug/DebugCrashReporter;

    return-void
.end method

.method public static a(Lcom/snapchat/android/SnapchatApplication$Crashable;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    sget-object v0, Lcom/snapchat/android/SnapchatApplication;->b:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 189
    sget-boolean v0, Lcom/snapchat/android/SnapchatApplication;->a:Z

    return v0
.end method

.method public static e()Lcom/snapchat/android/SnapchatApplication;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/snapchat/android/SnapchatApplication;->m:Lcom/snapchat/android/SnapchatApplication;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/snapchat/android/SnapchatApplication$2;

    invoke-direct {v1, p0, v0}, Lcom/snapchat/android/SnapchatApplication$2;-><init>(Lcom/snapchat/android/SnapchatApplication;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 172
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 173
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 181
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->aP()Ljava/util/UUID;

    move-result-object v0

    .line 182
    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/snapchat/android/analytics/framework/UniqueDeviceIdBuilder;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/framework/UniqueDeviceIdBuilder;-><init>()V

    .line 184
    invoke-virtual {v0, p0}, Lcom/snapchat/android/analytics/framework/UniqueDeviceIdBuilder;->a(Landroid/content/Context;)Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->a(Ljava/util/UUID;)V

    .line 186
    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 98
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/snapchat/android/SnapchatApplication;->f()V

    .line 110
    :cond_0
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->e:Lcom/snapchat/android/util/debug/StrictModeHelper;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/StrictModeHelper;->a()V

    .line 118
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatApplication;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/cache/Storage;->a(Ljava/io/File;Ljava/io/File;)V

    .line 119
    invoke-direct {p0}, Lcom/snapchat/android/SnapchatApplication;->g()V

    .line 121
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/snapchat/android/SnapchatApplication$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/SnapchatApplication$1;-><init>(Lcom/snapchat/android/SnapchatApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->d:Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/ReleaseManager;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->d:Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/ReleaseManager;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->d:Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/ReleaseManager;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->p:Lcom/snapchat/android/util/debug/DebugCrashReporter;

    invoke-static {v0}, Lcom/snapchat/android/SnapchatApplication;->a(Lcom/snapchat/android/SnapchatApplication$Crashable;)V

    .line 132
    :cond_2
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v1, "SnapchatApplication"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->n:Ldagger/ObjectGraph;

    invoke-virtual {v0, p1}, Ldagger/ObjectGraph;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 177
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->a(Landroid/content/Context;)V

    .line 178
    return-void
.end method

.method protected b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Lcom/snapchat/android/util/dagger/AndroidModule;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/dagger/AndroidModule;-><init>(Lcom/snapchat/android/SnapchatApplication;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/snapchat/android/util/dagger/DiscoverModule;

    invoke-direct {v2}, Lcom/snapchat/android/util/dagger/DiscoverModule;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ldagger/ObjectGraph;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->n:Ldagger/ObjectGraph;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 75
    sput-object p0, Lcom/snapchat/android/SnapchatApplication;->m:Lcom/snapchat/android/SnapchatApplication;

    .line 77
    invoke-static {p0}, Lcom/snapchat/android/util/debug/ReleaseManager;->a(Landroid/content/Context;)V

    .line 78
    invoke-static {p0}, Lcom/snapchat/android/location/LocationProvider;->a(Landroid/content/Context;)V

    .line 80
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatApplication;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ldagger/ObjectGraph;->a([Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->n:Ldagger/ObjectGraph;

    .line 81
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->n:Ldagger/ObjectGraph;

    invoke-virtual {v0, p0}, Ldagger/ObjectGraph;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->g:Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;->a(Landroid/content/Context;)V

    .line 84
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->f:Lcom/snapchat/android/ads/AdManager;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ads/AdManager;->a(Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->h:Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->a(Landroid/content/Context;)V

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->i:Lcom/snapchat/android/api/ScreenParameterProvider;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/api/ScreenParameterProvider;->a(Landroid/content/Context;)V

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->j:Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->a(Landroid/content/Context;)V

    .line 88
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->o:Lcom/snapchat/android/ApplicationMemoryMonitor;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/ApplicationMemoryMonitor;->a(Landroid/app/Application;)V

    .line 89
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->k:Lcom/snapchat/android/util/debug/DeveloperSettings;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/debug/DeveloperSettings;->a(Landroid/content/SharedPreferences;)V

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication;->l:Lcom/snapchat/android/service/SnapchatServiceManager;

    invoke-virtual {v0, p0}, Lcom/snapchat/android/service/SnapchatServiceManager;->a(Landroid/content/Context;)V

    .line 92
    invoke-virtual {p0}, Lcom/snapchat/android/SnapchatApplication;->a()V

    .line 93
    return-void
.end method
