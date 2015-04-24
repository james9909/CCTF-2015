.class Lcom/snapchat/android/GoogleAuthManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/GoogleAuthManager;->c()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/GoogleAuthManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/GoogleAuthManager;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/snapchat/android/GoogleAuthManager$1;->a:Lcom/snapchat/android/GoogleAuthManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/GoogleAuthManager$1;->a:Lcom/snapchat/android/GoogleAuthManager;

    invoke-static {v1}, Lcom/snapchat/android/GoogleAuthManager;->a(Lcom/snapchat/android/GoogleAuthManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->clearToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    const-string v0, "GoogleAuthManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearGoogleOauthToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/GoogleAuthManager$1;->a:Lcom/snapchat/android/GoogleAuthManager;

    invoke-static {v2}, Lcom/snapchat/android/GoogleAuthManager;->a(Lcom/snapchat/android/GoogleAuthManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/GoogleAuthManager$1;->a:Lcom/snapchat/android/GoogleAuthManager;

    invoke-static {v0, v3}, Lcom/snapchat/android/GoogleAuthManager;->a(Lcom/snapchat/android/GoogleAuthManager;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/GoogleAuthManager$1;->a:Lcom/snapchat/android/GoogleAuthManager;

    invoke-static {v0, v3}, Lcom/snapchat/android/GoogleAuthManager;->b(Lcom/snapchat/android/GoogleAuthManager;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    return-object v3
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/snapchat/android/GoogleAuthManager$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
