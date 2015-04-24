.class Lcom/snapchat/android/SnapchatApplication$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/SnapchatApplication;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapchatApplication;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapchatApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/snapchat/android/SnapchatApplication$1;->a:Lcom/snapchat/android/SnapchatApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "SlightlySecurePreferences.initialize"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/snapchat/android/SnapchatApplication$1;->a:Lcom/snapchat/android/SnapchatApplication;

    iget-object v0, v0, Lcom/snapchat/android/SnapchatApplication;->c:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a()V

    .line 126
    return-void
.end method
