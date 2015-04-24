.class public Lcom/snapchat/android/api2/ApiTaskFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/api2/GetDeviceTokenTask;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/snapchat/android/api2/GetDeviceTokenTask;

    invoke-direct {v0}, Lcom/snapchat/android/api2/GetDeviceTokenTask;-><init>()V

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/snapchat/android/util/memory/Buffer;)Lcom/snapchat/android/api2/MediaDownloadTask;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    new-instance v0, Lcom/snapchat/android/api2/MediaDownloadTask;

    invoke-direct {v0, p1, p2}, Lcom/snapchat/android/api2/MediaDownloadTask;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/memory/Buffer;)V

    return-object v0
.end method
