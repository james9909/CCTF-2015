.class public final Lcom/snapchat/yorick/AnrDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/yorick/AnrListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/yorick/AnrDetector;->a:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/snapchat/yorick/TraceParser;Ljava/io/FileReader;)Lcom/snapchat/yorick/ParsedTrace;
    .locals 2
    .parameter
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 107
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 109
    :try_start_0
    invoke-virtual {p1, v1}, Lcom/snapchat/yorick/TraceParser;->a(Ljava/io/BufferedReader;)Lcom/snapchat/yorick/ParsedTrace;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    invoke-static {v1}, Lcom/snapchat/yorick/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 115
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-static {v1}, Lcom/snapchat/yorick/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 115
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/snapchat/yorick/CloseableUtils;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method static synthetic a(Lcom/snapchat/yorick/AnrDetector;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/snapchat/yorick/AnrDetector;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snapchat/yorick/AnrDetector;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call registerListener() before detectAnrs()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    new-instance v0, Lcom/snapchat/yorick/AnrDetector$1;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/yorick/AnrDetector$1;-><init>(Lcom/snapchat/yorick/AnrDetector;Landroid/content/Context;)V

    .line 65
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method

.method public a(Lcom/snapchat/yorick/AnrListener;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/yorick/AnrDetector;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public a(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/snapchat/yorick/AnrDetector;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 47
    return-void
.end method

.method a(ILandroid/content/SharedPreferences;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 125
    const-string v0, "LAST_INSTALL_VERSION"

    const/4 v1, -0x1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 126
    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    .line 128
    :cond_0
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    const-string v1, "LAST_INSTALL_VERSION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 131
    const-string v1, "LAST_DETECTED_ANR"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(JLandroid/content/SharedPreferences;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 147
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    const-string v1, "LAST_DETECTED_ANR"

    const-wide/high16 v2, -0x8000

    invoke-interface {p3, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 150
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 151
    const-string v1, "LAST_DETECTED_ANR"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    const/4 v0, 0x1

    goto :goto_0
.end method

.method b(Landroid/content/Context;)V
    .locals 6
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v2, 0x0

    .line 72
    const-string v0, "YORICK"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 75
    if-nez v1, :cond_1

    .line 76
    const-string v0, "Failed to get package name. Aborting."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/snapchat/yorick/Timber;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0, p1}, Lcom/snapchat/yorick/AnrDetector;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/snapchat/yorick/AnrDetector;->a(ILandroid/content/SharedPreferences;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/anr/traces.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    new-instance v3, Lcom/snapchat/yorick/TraceParser;

    invoke-direct {v3, v1}, Lcom/snapchat/yorick/TraceParser;-><init>(Ljava/lang/String;)V

    .line 86
    const/4 v2, 0x0

    .line 89
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v4, "/data/anr/traces.txt"

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :try_start_1
    invoke-direct {p0, v3, v1}, Lcom/snapchat/yorick/AnrDetector;->a(Lcom/snapchat/yorick/TraceParser;Ljava/io/FileReader;)Lcom/snapchat/yorick/ParsedTrace;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 91
    if-nez v2, :cond_2

    .line 101
    invoke-static {v1}, Lcom/snapchat/yorick/CloseableUtils;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 92
    :cond_2
    :try_start_2
    iget-wide v4, v2, Lcom/snapchat/yorick/ParsedTrace;->a:J

    invoke-virtual {p0, v4, v5, v0}, Lcom/snapchat/yorick/AnrDetector;->a(JLandroid/content/SharedPreferences;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 101
    invoke-static {v1}, Lcom/snapchat/yorick/CloseableUtils;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 94
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/snapchat/yorick/AnrDetector;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/yorick/AnrListener;

    .line 95
    invoke-interface {v0, v2}, Lcom/snapchat/yorick/AnrListener;->a(Lcom/snapchat/yorick/ParsedTrace;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    invoke-static {v1}, Lcom/snapchat/yorick/CloseableUtils;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/snapchat/yorick/CloseableUtils;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/snapchat/yorick/CloseableUtils;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 98
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method c(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 140
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
