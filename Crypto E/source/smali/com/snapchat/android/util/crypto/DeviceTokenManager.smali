.class public Lcom/snapchat/android/util/crypto/DeviceTokenManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static i:Lcom/snapchat/android/util/crypto/DeviceTokenManager;


# instance fields
.field protected a:Z

.field protected b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

.field private final d:Lcom/snapchat/android/util/GsonWrapper;

.field private final e:Lcom/snapchat/android/api2/ApiTaskFactory;

.field private final f:Lcom/snapchat/android/util/debug/DeveloperSettings;

.field private final g:Ljava/lang/Object;

.field private h:Lcom/snapchat/android/util/crypto/DeviceToken;


# direct methods
.method protected constructor <init>(Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;Lcom/snapchat/android/util/GsonWrapper;Lcom/snapchat/android/api2/ApiTaskFactory;Lcom/snapchat/android/util/debug/DeveloperSettings;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->g:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a:Z

    .line 68
    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->c:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->b:Ljava/util/concurrent/ExecutorService;

    .line 75
    iput-object p1, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->c:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    .line 76
    iput-object p2, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->d:Lcom/snapchat/android/util/GsonWrapper;

    .line 77
    iput-object p3, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->e:Lcom/snapchat/android/api2/ApiTaskFactory;

    .line 78
    iput-object p4, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->f:Lcom/snapchat/android/util/debug/DeveloperSettings;

    .line 79
    return-void
.end method

.method public static declared-synchronized a()Lcom/snapchat/android/util/crypto/DeviceTokenManager;
    .locals 3

    .prologue
    .line 82
    const-class v1, Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->i:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Ldagger/ObjectGraph;

    move-result-object v0

    const-class v2, Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    invoke-virtual {v0, v2}, Ldagger/ObjectGraph;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    sput-object v0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->i:Lcom/snapchat/android/util/crypto/DeviceTokenManager;

    .line 85
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->i:Lcom/snapchat/android/util/crypto/DeviceTokenManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->f:Lcom/snapchat/android/util/debug/DeveloperSettings;

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/DeveloperSettings;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->h:Lcom/snapchat/android/util/crypto/DeviceToken;

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->h:Lcom/snapchat/android/util/crypto/DeviceToken;

    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/DeviceToken;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    :cond_0
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;I)V

    .line 211
    :cond_1
    const-string v0, "DeviceTokenManager"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method private a(Ljava/io/File;)[B
    .locals 6
    .parameter

    .prologue
    .line 131
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 132
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 133
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 134
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot read files larger than 2147483647 bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    long-to-int v1, v2

    .line 138
    new-array v2, v1, [B

    .line 139
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 140
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 142
    return-object v2
.end method


# virtual methods
.method public a(Lcom/snapchat/android/util/crypto/DeviceToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/snapchat/android/util/crypto/DeviceToken;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 269
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA256"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 271
    :try_start_0
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 272
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 276
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    :goto_1
    const-string v1, "DeviceTokenManager"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Lcom/snapchat/android/util/crypto/DeviceToken;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 228
    iget-object v1, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    iput-object p1, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->h:Lcom/snapchat/android/util/crypto/DeviceToken;

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a:Z

    .line 231
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->h:Lcom/snapchat/android/util/crypto/DeviceToken;

    if-nez v0, :cond_1

    .line 232
    monitor-exit v1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    const-string v0, "DeviceTokenManager"

    const-string v1, "A new device token was acquired from the server."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->d:Lcom/snapchat/android/util/GsonWrapper;

    iget-object v1, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->h:Lcom/snapchat/android/util/crypto/DeviceToken;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 240
    new-instance v1, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    invoke-direct {v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>()V

    .line 241
    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a([B)[B

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->c()Ljava/io/File;

    move-result-object v3

    .line 249
    if-eqz v3, :cond_0

    .line 253
    const/4 v2, 0x0

    .line 255
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 256
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 257
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 262
    invoke-static {v1}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 259
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 260
    :goto_1
    :try_start_4
    const-string v2, "DeviceTokenManager"

    invoke-static {v2, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 262
    invoke-static {v1}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 259
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 223
    new-instance v0, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;

    invoke-direct {v0, p1, p2}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->c:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    sget-object v2, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->g:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    iget-object v3, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->d:Lcom/snapchat/android/util/GsonWrapper;

    invoke-virtual {v3, v0}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method protected a(Z)V
    .locals 3
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->c:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->b()V

    .line 180
    iget-object v1, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->h:Lcom/snapchat/android/util/crypto/DeviceToken;

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "Device token successfully fetched in memory."

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a(Ljava/lang/String;)V

    .line 183
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :goto_0
    return-void

    .line 187
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->b()Lcom/snapchat/android/util/crypto/DeviceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->h:Lcom/snapchat/android/util/crypto/DeviceToken;

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->h:Lcom/snapchat/android/util/crypto/DeviceToken;

    if-eqz v0, :cond_1

    .line 189
    const-string v0, "Device token successfully fetched from disk."

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    :try_start_2
    monitor-exit v1

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    :try_start_3
    const-string v2, "DeviceTokenManager"

    invoke-static {v2, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a:Z

    if-nez v0, :cond_2

    .line 197
    const-string v0, "Requesting a new device token from the server."

    invoke-direct {p0, v0}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a:Z

    .line 199
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->e:Lcom/snapchat/android/api2/ApiTaskFactory;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/ApiTaskFactory;->a()Lcom/snapchat/android/api2/GetDeviceTokenTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/api2/GetDeviceTokenTask;->g()V

    .line 201
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected b()Lcom/snapchat/android/util/crypto/DeviceToken;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->c()Ljava/io/File;

    move-result-object v2

    .line 92
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 115
    :goto_0
    return-object v0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->f()Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;

    move-result-object v0

    .line 98
    if-nez v0, :cond_2

    .line 99
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-object v0, v1

    .line 100
    goto :goto_0

    .line 103
    :cond_2
    invoke-direct {p0, v2}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a(Ljava/io/File;)[B

    move-result-object v3

    .line 105
    new-instance v4, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v4, v3}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->b([B)[B

    move-result-object v0

    .line 107
    if-eqz v0, :cond_3

    .line 109
    :try_start_0
    iget-object v3, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->d:Lcom/snapchat/android/util/GsonWrapper;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    const-class v0, Lcom/snapchat/android/util/crypto/DeviceToken;

    invoke-virtual {v3, v4, v0}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/crypto/DeviceToken;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string v3, "DeviceTokenManager"

    invoke-static {v3, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-object v0, v1

    .line 115
    goto :goto_0
.end method

.method protected c()Ljava/io/File;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 121
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/snapchat/android/util/cache/Storage;->a()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Snapchat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/io/File;

    const-string v2, "device_token_1"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 127
    :cond_0
    return-object v0
.end method

.method public d()Lcom/snapchat/android/util/crypto/DeviceToken;
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->a(Z)V

    .line 156
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->h:Lcom/snapchat/android/util/crypto/DeviceToken;

    return-object v0
.end method

.method public e()V
    .locals 2
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lcom/snapchat/android/util/crypto/DeviceTokenManager$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/util/crypto/DeviceTokenManager$1;-><init>(Lcom/snapchat/android/util/crypto/DeviceTokenManager;)V

    .line 173
    iget-object v1, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public f()Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->c:Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    sget-object v1, Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKeys;->g:Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;->a(Lcom/snapchat/android/util/crypto/SlightlySecurePreferencesKey;)Ljava/lang/String;

    move-result-object v0

    .line 217
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->d:Lcom/snapchat/android/util/GsonWrapper;

    const-class v2, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/crypto/CbcKeyAndIvWrapper;

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/snapchat/android/util/crypto/DeviceTokenManager;->d()Lcom/snapchat/android/util/crypto/DeviceToken;

    move-result-object v0

    .line 285
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/util/crypto/DeviceToken;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/crypto/SecureHash;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
