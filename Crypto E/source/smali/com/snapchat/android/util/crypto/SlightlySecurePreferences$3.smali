.class Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$3;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$3;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-static {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$3;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-static {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 448
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    if-lez v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$3;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$3;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-static {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 454
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$3;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-static {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 455
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 456
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$3;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->f()V

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 448
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 455
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$3;->a:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->f()V

    goto :goto_0
.end method
