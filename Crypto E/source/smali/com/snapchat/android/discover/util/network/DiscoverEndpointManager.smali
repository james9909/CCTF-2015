.class public Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$ConfigurationListener;,
        Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;


# instance fields
.field private final b:Lcom/snapchat/android/model/UserPrefs;

.field private final c:Lcom/snapchat/android/util/debug/DeveloperSettings;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-direct {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/snapchat/android/model/UserPrefs;

    invoke-direct {v0}, Lcom/snapchat/android/model/UserPrefs;-><init>()V

    invoke-static {}, Lcom/snapchat/android/util/debug/DeveloperSettings;->a()Lcom/snapchat/android/util/debug/DeveloperSettings;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;-><init>(Lcom/snapchat/android/model/UserPrefs;Lcom/snapchat/android/util/debug/DeveloperSettings;)V

    .line 91
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/model/UserPrefs;Lcom/snapchat/android/util/debug/DeveloperSettings;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->d:Ljava/util/Set;

    .line 79
    sget-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    iput-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 95
    iput-object p1, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b:Lcom/snapchat/android/model/UserPrefs;

    .line 96
    iput-object p2, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->c:Lcom/snapchat/android/util/debug/DeveloperSettings;

    .line 97
    return-void
.end method

.method public static a()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$ConfigurationListener;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 115
    invoke-static {p1}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 116
    iput-object p4, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->h:Ljava/lang/String;

    .line 117
    iput-object p5, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->i:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->f:Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->g:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->d:Ljava/util/Set;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$ConfigurationListener;

    .line 123
    invoke-interface {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$ConfigurationListener;->c()V

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0, p4}, Lcom/snapchat/android/model/UserPrefs;->o(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0, p5}, Lcom/snapchat/android/model/UserPrefs;->p(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->c:Lcom/snapchat/android/util/debug/DeveloperSettings;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/DeveloperSettings;->b()Ljava/lang/String;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$ConfigurationListener;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->e:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->as()Ljava/lang/String;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->at()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->i:Ljava/lang/String;

    goto :goto_0
.end method
