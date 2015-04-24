.class Lcom/snapchat/android/GoogleAuthManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/GoogleAuthManager;->d()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/snapchat/android/GoogleAuthManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/GoogleAuthManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/snapchat/android/GoogleAuthManager$2;->c:Lcom/snapchat/android/GoogleAuthManager;

    iput-object p2, p0, Lcom/snapchat/android/GoogleAuthManager$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/snapchat/android/GoogleAuthManager$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/snapchat/android/GoogleAuthManager$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/snapchat/android/GoogleAuthManager$2;->b:Ljava/lang/String;

    const-string v2, "audience:server:client_id:694893979329-l59f3phl42et9clpoo296d8raqoljl6p.apps.googleusercontent.com"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/snapchat/android/GoogleAuthManager$2;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
