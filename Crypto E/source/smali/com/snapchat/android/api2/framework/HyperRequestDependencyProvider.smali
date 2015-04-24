.class public Lcom/snapchat/android/api2/framework/HyperRequestDependencyProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mGsonWrapper:Lcom/snapchat/android/util/GsonWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mNetworkInterface:Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 25
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/api2/framework/NetworkInterface;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/HyperRequestDependencyProvider;->mNetworkInterface:Lcom/snapchat/android/api2/framework/OkHttpNetworkInterface;

    return-object v0
.end method

.method public b()Lcom/snapchat/android/util/GsonWrapper;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/api2/framework/HyperRequestDependencyProvider;->mGsonWrapper:Lcom/snapchat/android/util/GsonWrapper;

    return-object v0
.end method
