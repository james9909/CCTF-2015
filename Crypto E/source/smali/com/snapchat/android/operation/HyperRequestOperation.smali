.class public abstract Lcom/snapchat/android/operation/HyperRequestOperation;
.super Lcom/snapchat/android/api2/framework/HyperRequest;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/operation/Operation;


# instance fields
.field private final a:Landroid/content/Intent;

.field protected d:Lcom/snapchat/android/api2/framework/NetworkInterface;


# direct methods
.method protected constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/HyperRequest;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/snapchat/android/operation/HyperRequestOperation;->a:Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/operation/HyperRequestOperation;->mProvider:Lcom/snapchat/android/api2/framework/HyperRequestDependencyProvider;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/framework/HyperRequestDependencyProvider;->a()Lcom/snapchat/android/api2/framework/NetworkInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/HyperRequestOperation;->d:Lcom/snapchat/android/api2/framework/NetworkInterface;

    .line 55
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/operation/HyperRequestOperation;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/operation/HyperRequestOperation;->d:Lcom/snapchat/android/api2/framework/NetworkInterface;

    invoke-virtual {p0}, Lcom/snapchat/android/operation/HyperRequestOperation;->m_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/operation/HyperRequestOperation;->c()Lcom/snapchat/android/api2/framework/HttpMethod;

    move-result-object v2

    invoke-virtual {p0}, Lcom/snapchat/android/operation/HyperRequestOperation;->j_()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0}, Lcom/snapchat/android/operation/HyperRequestOperation;->f_()Lcom/snapchat/android/util/memory/Buffer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/snapchat/android/operation/HyperRequestOperation;->b()Ljava/lang/Object;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/snapchat/android/api2/framework/NetworkInterface;->a(Ljava/lang/String;Lcom/snapchat/android/api2/framework/HttpMethod;Ljava/util/Map;Lcom/snapchat/android/util/memory/Buffer;Ljava/lang/Object;)Lcom/snapchat/android/api2/framework/NetworkResult;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/snapchat/android/operation/HyperRequestOperation;->a(Lcom/snapchat/android/api2/framework/NetworkResult;)V

    .line 67
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    return-void
.end method
