.class public Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Z

.field private final f:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->f:Ljava/util/concurrent/CountDownLatch;

    .line 88
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a:Ljava/util/concurrent/ExecutorService;

    .line 89
    iput-boolean v1, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->e:Z

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Ljava/io/File;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 188
    if-eqz p1, :cond_0

    .line 190
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string v1, "SlightlySecurePreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to delete the file that cannot be decrypted. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 193
    const-string v1, "SlightlySecurePreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully deleted the file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string v1, "SlightlySecurePreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete the file that cannot be decrypted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 337
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 356
    :cond_0
    :goto_0
    return v0

    .line 341
    :cond_1
    new-instance v0, Lcom/snapchat/android/util/crypto/PrefixFilenameFilter;

    const-string v3, "bananas"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/snapchat/android/util/crypto/PrefixFilenameFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    move v0, v2

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    .line 342
    invoke-direct {p0, v6}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b(Ljava/io/File;)V

    .line 343
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v1

    .line 341
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 346
    :cond_3
    new-instance v3, Lcom/snapchat/android/util/crypto/PrefixFilenameFilter;

    const-string v4, "fdg78df67g5s6f"

    invoke-direct {v3, v4, p2}, Lcom/snapchat/android/util/crypto/PrefixFilenameFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_5

    aget-object v5, v3, v2

    .line 347
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v1

    .line 346
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 352
    :cond_5
    if-eqz v0, :cond_0

    .line 353
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/StoryLibrary;->c()V

    .line 354
    invoke-static {}, Lcom/snapchat/android/util/cache/Caches;->b()V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 7
    .parameter

    .prologue
    .line 403
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 408
    :cond_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 409
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 410
    const-string v0, "seems legit..."

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 411
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-byte v0, v2, v1

    .line 416
    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 418
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 419
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 422
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 423
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private b(Ljava/io/File;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 367
    .line 369
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    .line 372
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :try_start_1
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 374
    const/4 v2, 0x2

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 375
    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, v3, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 376
    :try_start_2
    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v4, Ljava/util/HashMap;

    invoke-virtual {v1, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 380
    sget-object v1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->e:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    sget-object v4, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->e:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    sget-object v1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->e:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;Ljava/lang/String;)V

    .line 384
    :cond_0
    sget-object v1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->f:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    sget-object v1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->f:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    sget-object v4, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->f:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v4}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 391
    :cond_1
    invoke-static {v2}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 392
    invoke-static {v3}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 394
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 389
    :goto_1
    :try_start_3
    const-string v3, "SlightlySecurePreferences"

    invoke-static {v3, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 391
    invoke-static {v1}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 392
    invoke-static {v2}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 391
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_2
    invoke-static {v2}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 392
    invoke-static {v3}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    throw v0

    .line 391
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_2

    .line 388
    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;)Ljava/lang/String;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 268
    iget-object v1, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 7
    .parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 213
    :cond_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 214
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 215
    const-string v0, "7f6as9d7f6dasf7"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 216
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-byte v0, v2, v1

    .line 221
    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 224
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 228
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public a()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 104
    iget-boolean v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->e:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->b()V

    .line 107
    :cond_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    .line 110
    iput-boolean v4, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->d:Z

    .line 117
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 118
    if-nez v1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 171
    :goto_0
    return-void

    .line 121
    :cond_1
    :try_start_1
    const-string v3, "fdg78df67g5s6f2"

    invoke-direct {p0, v1, v3}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/fdg78df67g5s6f2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_3

    .line 168
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    :try_start_2
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not open file"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 138
    :cond_3
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 140
    :try_start_4
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v8

    .line 141
    const/4 v1, 0x2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 142
    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, v3, v8}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 144
    :try_start_5
    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$1;-><init>(Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;)V

    invoke-virtual {v2}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 146
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v8

    invoke-virtual {v8, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 147
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 148
    iget-object v2, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 149
    :try_start_6
    iget-object v8, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 150
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 151
    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->d:Z

    .line 153
    :cond_4
    if-nez v6, :cond_7

    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->c:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 163
    :try_start_8
    invoke-static {v1}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 164
    invoke-static {v3}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 168
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_0

    .line 150
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 154
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 158
    :goto_3
    :try_start_b
    instance-of v3, v0, Ljava/io/IOException;

    if-nez v3, :cond_5

    instance-of v3, v0, Ljava/security/GeneralSecurityException;

    if-eqz v3, :cond_6

    .line 159
    :cond_5
    invoke-direct {p0, v7}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Ljava/io/File;)V

    .line 161
    :cond_6
    const-string v3, "SlightlySecurePreferences"

    invoke-static {v3, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 163
    :try_start_c
    invoke-static {v1}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 164
    invoke-static {v2}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :cond_7
    move v0, v5

    .line 153
    goto :goto_1

    .line 163
    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_4
    invoke-static {v1}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 164
    invoke-static {v3}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 163
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_4
    move-exception v0

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v3, v2

    goto :goto_4

    .line 154
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_3
.end method

.method public a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;Ljava/lang/String;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 251
    iget-object v1, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 252
    if-nez p2, :cond_0

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->c:Z

    .line 259
    return-void

    .line 255
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string v1, "SlightlySecurePreferences"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 280
    iget-boolean v2, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->e:Z

    if-eqz v2, :cond_0

    .line 281
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->b()V

    .line 283
    :cond_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v4

    .line 286
    iget-boolean v2, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->c:Z

    if-eqz v2, :cond_1

    .line 329
    :goto_0
    return v0

    .line 287
    :cond_1
    iput-boolean v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->c:Z

    .line 291
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 292
    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 293
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/fdg78df67g5s6f2"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 296
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not open file"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    move v0, v1

    .line 300
    goto :goto_0

    .line 306
    :cond_4
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 308
    :try_start_2
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 309
    const/4 v6, 0x1

    invoke-virtual {p0, v4}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 310
    new-instance v4, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v4, v2, v5}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 313
    :try_start_3
    iget-object v3, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 314
    :try_start_4
    new-instance v5, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$2;

    invoke-direct {v5, p0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$2;-><init>(Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;)V

    invoke-virtual {v5}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 315
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v6

    iget-object v7, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v5

    .line 316
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 318
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 319
    invoke-virtual {v4}, Ljavax/crypto/CipherOutputStream;->flush()V

    .line 320
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 325
    invoke-static {v4}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 326
    invoke-static {v2}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 328
    iput-boolean v1, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->d:Z

    goto/16 :goto_0

    .line 316
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 321
    :catch_1
    move-exception v0

    move-object v3, v4

    .line 322
    :goto_1
    :try_start_8
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Could not encrypt file"

    invoke-direct {v1, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 325
    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v3}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 326
    invoke-static {v2}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    throw v0

    .line 325
    :cond_5
    invoke-static {v3}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 326
    invoke-static {v2}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    move v0, v1

    goto/16 :goto_0

    .line 325
    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v4

    goto :goto_2

    .line 321
    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public d()V
    .locals 3

    .prologue
    .line 430
    iget-object v1, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 432
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->c:Z

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    iget-boolean v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->c:Z

    if-nez v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$3;-><init>(Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 464
    :cond_2
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->d:Z

    if-eqz v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 478
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 479
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->c:Z

    goto :goto_1

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    iget-boolean v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->c:Z

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$4;-><init>(Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->e:Z

    if-eqz v0, :cond_0

    .line 501
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->b()V

    .line 505
    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->d:Z

    if-eqz v0, :cond_2

    .line 517
    :cond_1
    :goto_0
    return-void

    .line 510
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_1

    .line 512
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Ljava/io/File;Ljava/lang/String;)Z

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
