.class public Lcom/snapchat/android/util/DeviceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/snapchat/android/util/DeviceUtils;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/snapchat/android/util/DeviceUtils;

    invoke-direct {v0}, Lcom/snapchat/android/util/DeviceUtils;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/DeviceUtils;->a:Lcom/snapchat/android/util/DeviceUtils;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/snapchat/android/util/DeviceUtils;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/snapchat/android/util/DeviceUtils;->a:Lcom/snapchat/android/util/DeviceUtils;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 5

    .prologue
    .line 191
    const/4 v2, 0x0

    .line 192
    const-string v0, ""

    .line 194
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "/proc/meminfo"

    const-string v4, "r"

    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 199
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 201
    :goto_0
    return-object v0

    .line 196
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 197
    :goto_1
    :try_start_2
    const-string v2, "DeviceUtils"

    const-string v3, "There was an error reading /proc/meminfo"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 196
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method protected a(D)D
    .locals 7
    .parameter

    .prologue
    const-wide/high16 v4, 0x3ff0

    const-wide/16 v0, 0x0

    .line 210
    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    .line 214
    :goto_0
    return-wide v0

    .line 213
    :cond_0
    sub-double v0, p1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 214
    const-wide/high16 v2, 0x4000

    add-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)D
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 169
    const-string v0, " kB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 170
    aget-object v0, v0, v5

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 171
    const-wide/16 v0, 0x0

    .line 173
    :try_start_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 177
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/util/DeviceUtils;->a(D)D

    move-result-wide v0

    return-wide v0

    .line 174
    :catch_0
    move-exception v2

    .line 175
    const-string v2, "DeviceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There was an error parsing /proc/meminfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Runtime;Landroid/util/DisplayMetrics;)Ljava/util/Map;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runtime;",
            "Landroid/util/DisplayMetrics;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x7dc

    const/16 v1, 0x7df

    const/16 v2, 0x7db

    const/16 v3, 0x7da

    const/16 v4, 0x7d9

    .line 98
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 100
    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 101
    const-string v5, "num_processors"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/16 v5, 0x8

    if-lt v0, v5, :cond_0

    move v0, v1

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/util/DeviceUtils;->c()D

    move-result-wide v8

    const-wide/high16 v10, 0x4130

    div-double/2addr v8, v10

    .line 116
    const-string v5, "total_memory"

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-wide/high16 v10, 0x4010

    cmpl-double v5, v8, v10

    if-ltz v5, :cond_4

    move v5, v1

    .line 132
    :goto_1
    iget v8, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 133
    const-string v9, "display_density"

    invoke-static {p2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const/16 v9, 0x280

    if-lt v8, v9, :cond_9

    .line 149
    :goto_2
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 150
    const-string v1, "year_class"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->t(Ljava/lang/String;)V

    .line 153
    return-object v7

    .line 105
    :cond_0
    const/4 v5, 0x4

    if-lt v0, v5, :cond_1

    .line 106
    const/16 v0, 0x7dd

    goto :goto_0

    .line 107
    :cond_1
    const/4 v5, 0x2

    if-lt v0, v5, :cond_2

    move v0, v2

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    const/4 v5, 0x1

    if-lt v0, v5, :cond_3

    move v0, v3

    .line 110
    goto :goto_0

    :cond_3
    move v0, v4

    .line 112
    goto :goto_0

    .line 120
    :cond_4
    const-wide/high16 v10, 0x4008

    cmpl-double v5, v8, v10

    if-ltz v5, :cond_5

    .line 121
    const/16 v5, 0x7de

    goto :goto_1

    .line 122
    :cond_5
    const-wide/high16 v10, 0x4000

    cmpl-double v5, v8, v10

    if-ltz v5, :cond_6

    move v5, v6

    .line 123
    goto :goto_1

    .line 124
    :cond_6
    const-wide/high16 v10, 0x3ff0

    cmpl-double v5, v8, v10

    if-ltz v5, :cond_7

    move v5, v2

    .line 125
    goto :goto_1

    .line 126
    :cond_7
    const-wide/high16 v10, 0x3fe0

    cmpl-double v5, v8, v10

    if-ltz v5, :cond_8

    move v5, v3

    .line 127
    goto :goto_1

    :cond_8
    move v5, v4

    .line 129
    goto :goto_1

    .line 137
    :cond_9
    const/16 v1, 0x1e0

    if-lt v8, v1, :cond_a

    .line 138
    const/16 v1, 0x7dd

    goto :goto_2

    .line 139
    :cond_a
    const/16 v1, 0xf0

    if-lt v8, v1, :cond_b

    move v1, v6

    .line 140
    goto :goto_2

    .line 141
    :cond_b
    const/16 v1, 0xa0

    if-lt v8, v1, :cond_c

    move v1, v2

    .line 142
    goto :goto_2

    .line 143
    :cond_c
    const/16 v1, 0x78

    if-lt v8, v1, :cond_d

    move v1, v3

    .line 144
    goto :goto_2

    :cond_d
    move v1, v4

    .line 146
    goto :goto_2
.end method

.method protected a(Ljava/lang/Runtime;Landroid/util/DisplayMetrics;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runtime;",
            "Landroid/util/DisplayMetrics;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/snapchat/android/util/DeviceUtils;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/DeviceUtils;->b:Ljava/util/Map;

    const-string v1, "year_class"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/util/DeviceUtils;->b:Ljava/util/Map;

    .line 93
    :goto_0
    return-object v0

    .line 84
    :cond_0
    new-instance v0, Lcom/snapchat/android/util/DeviceUtils$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/util/DeviceUtils$1;-><init>(Lcom/snapchat/android/util/DeviceUtils;)V

    invoke-virtual {v0}, Lcom/snapchat/android/util/DeviceUtils$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/snapchat/android/util/DeviceUtils;->b:Ljava/util/Map;

    .line 86
    iget-object v0, p0, Lcom/snapchat/android/util/DeviceUtils;->b:Ljava/util/Map;

    const-string v1, "year_class"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/snapchat/android/util/DeviceUtils;->b:Ljava/util/Map;

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/util/DeviceUtils;->a(Ljava/lang/Runtime;Landroid/util/DisplayMetrics;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/DeviceUtils;->b:Ljava/util/Map;

    .line 93
    iget-object v0, p0, Lcom/snapchat/android/util/DeviceUtils;->b:Ljava/util/Map;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 61
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    return v0
.end method

.method public b()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/SnapchatApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->aH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/snapchat/android/util/DeviceUtils;->a(Ljava/lang/Runtime;Landroid/util/DisplayMetrics;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()D
    .locals 2

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/snapchat/android/util/DeviceUtils;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/DeviceUtils;->a(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method
