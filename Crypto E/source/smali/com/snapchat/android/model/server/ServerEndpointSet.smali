.class public Lcom/snapchat/android/model/server/ServerEndpointSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDirectoryUrls:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gae_proxy_directory_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mProxies:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gae_proxy_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/ProxyEndpoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mVersion:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gae_proxy_list_version"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirectoryUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/snapchat/android/model/server/ServerEndpointSet;->mDirectoryUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getProxies()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/ProxyEndpoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/snapchat/android/model/server/ServerEndpointSet;->mProxies:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/snapchat/android/model/server/ServerEndpointSet;->mVersion:J

    return-wide v0
.end method
