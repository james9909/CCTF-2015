.class public Lcom/snapchat/android/operation/PingUrlOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/operation/Operation;


# instance fields
.field private final a:Landroid/content/Intent;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/snapchat/android/operation/PingUrlOperation;->a:Landroid/content/Intent;

    .line 21
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/PingUrlOperation;->b:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/operation/PingUrlOperation;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/snapchat/android/operation/PingUrlOperation;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/util/HttpUtils;->b(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    return-void
.end method
