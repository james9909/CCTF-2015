.class public Lcom/snapchat/android/api2/MediaDownloadTask;
.super Lcom/snapchat/android/api2/framework/HyperRequestTask;
.source "SourceFile"


# instance fields
.field private final mResponseBuffer:Lcom/snapchat/android/util/memory/Buffer;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/snapchat/android/util/memory/Buffer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/HyperRequestTask;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/snapchat/android/api2/MediaDownloadTask;->mUrl:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/snapchat/android/api2/MediaDownloadTask;->mResponseBuffer:Lcom/snapchat/android/util/memory/Buffer;

    .line 19
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public f_()Lcom/snapchat/android/util/memory/Buffer;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/api2/MediaDownloadTask;->mResponseBuffer:Lcom/snapchat/android/util/memory/Buffer;

    return-object v0
.end method

.method public m_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/snapchat/android/api2/MediaDownloadTask;->mUrl:Ljava/lang/String;

    return-object v0
.end method
