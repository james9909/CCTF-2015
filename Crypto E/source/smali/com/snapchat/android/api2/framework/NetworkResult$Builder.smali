.class public Lcom/snapchat/android/api2/framework/NetworkResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/framework/NetworkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBuffer:Lcom/snapchat/android/util/memory/Buffer;

.field private mCaughtException:Ljava/lang/Exception;

.field private mNetworkType:Ljava/lang/String;

.field private mResponseCode:I

.field private mResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResponseMessage:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->mResponseHeaders:Ljava/util/Map;

    .line 166
    iput-object p1, p0, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->mUrl:Ljava/lang/String;

    .line 167
    iput-object p2, p0, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->mNetworkType:Ljava/lang/String;

    .line 168
    return-void
.end method


# virtual methods
.method public a(I)Lcom/snapchat/android/api2/framework/NetworkResult$Builder;
    .locals 0
    .parameter

    .prologue
    .line 171
    iput p1, p0, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->mResponseCode:I

    .line 172
    return-object p0
.end method

.method public a(Lcom/snapchat/android/util/memory/Buffer;)Lcom/snapchat/android/api2/framework/NetworkResult$Builder;
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->mBuffer:Lcom/snapchat/android/util/memory/Buffer;

    .line 182
    return-object p0
.end method

.method public a(Ljava/lang/Exception;)Lcom/snapchat/android/api2/framework/NetworkResult$Builder;
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->mCaughtException:Ljava/lang/Exception;

    .line 192
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/snapchat/android/api2/framework/NetworkResult$Builder;
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->mResponseMessage:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/snapchat/android/api2/framework/NetworkResult$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/snapchat/android/api2/framework/NetworkResult$Builder;"
        }
    .end annotation

    .prologue
    .line 186
    iput-object p1, p0, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->mResponseHeaders:Ljava/util/Map;

    .line 187
    return-object p0
.end method

.method public a()Lcom/snapchat/android/api2/framework/NetworkResult;
    .locals 9

    .prologue
    .line 196
    new-instance v0, Lcom/snapchat/android/api2/framework/NetworkResult;

    iget-object v1, p0, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->mNetworkType:Ljava/lang/String;

    iget v3, p0, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->mResponseCode:I

    iget-object v4, p0, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->mResponseMessage:Ljava/lang/String;

    iget-object v5, p0, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->mBuffer:Lcom/snapchat/android/util/memory/Buffer;

    iget-object v6, p0, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->mResponseHeaders:Ljava/util/Map;

    iget-object v7, p0, Lcom/snapchat/android/api2/framework/NetworkResult$Builder;->mCaughtException:Ljava/lang/Exception;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/api2/framework/NetworkResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/memory/Buffer;Ljava/util/Map;Ljava/lang/Exception;Lcom/snapchat/android/api2/framework/NetworkResult$1;)V

    return-object v0
.end method
