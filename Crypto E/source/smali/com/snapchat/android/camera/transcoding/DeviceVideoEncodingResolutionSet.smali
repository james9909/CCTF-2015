.class public Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;


# instance fields
.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Lcom/snapchat/android/util/debug/ExceptionReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    invoke-direct {v0}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;-><init>()V

    sput-object v0, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->a:Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/snapchat/android/util/debug/ExceptionReporter;

    invoke-direct {v0}, Lcom/snapchat/android/util/debug/ExceptionReporter;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;-><init>(Lcom/snapchat/android/util/debug/ExceptionReporter;)V

    .line 45
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/debug/ExceptionReporter;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->b:Ljava/util/Set;

    .line 49
    iput-object p1, p0, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->d:Lcom/snapchat/android/util/debug/ExceptionReporter;

    .line 50
    return-void
.end method

.method public static a()Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->a:Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/Resolution;

    .line 142
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/snapchat/android/util/Resolution;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    invoke-virtual {p0, v2}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->b(Ljava/lang/String;)Lcom/snapchat/android/util/Resolution;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_1
    return-object v0
.end method

.method protected a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 181
    new-instance v3, Lcom/snapchat/android/util/Resolution;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v0}, Lcom/snapchat/android/util/Resolution;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_0
    return-object v1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->a(Landroid/content/SharedPreferences;)V

    .line 54
    return-void
.end method

.method protected a(Landroid/content/SharedPreferences$Editor;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0, p2}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 134
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->aW:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    return-void
.end method

.method protected a(Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->c:Landroid/content/SharedPreferences;

    .line 59
    invoke-virtual {p0, p1}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->b(Landroid/content/SharedPreferences;)V

    .line 60
    return-void
.end method

.method public a(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 115
    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->b:Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->b(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->b:Ljava/util/Set;

    invoke-virtual {p0, v0, v1}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->a(Landroid/content/SharedPreferences$Editor;Ljava/util/Set;)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->d:Lcom/snapchat/android/util/debug/ExceptionReporter;

    new-instance v1, Lcom/snapchat/android/analytics/handledexceptions/FailedToPersistVideoEncodingResolutionsException;

    invoke-direct {v1}, Lcom/snapchat/android/analytics/handledexceptions/FailedToPersistVideoEncodingResolutionsException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/debug/ExceptionReporter;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Lcom/snapchat/android/util/Resolution;
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 102
    const-string v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 103
    array-length v1, v2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 110
    :goto_0
    return-object v0

    .line 108
    :cond_0
    :try_start_0
    new-instance v1, Lcom/snapchat/android/util/Resolution;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v3, v2}, Lcom/snapchat/android/util/Resolution;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected b(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    .line 165
    if-nez v0, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 169
    :cond_0
    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/util/Resolution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->b:Ljava/util/Set;

    return-object v0
.end method

.method protected b(Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->aW:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/snapchat/android/camera/transcoding/DeviceVideoEncodingResolutionSet;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
