.class public Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;->a:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;->a:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;

    .line 29
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;->a:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;)Landroid/content/ContentValues;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    new-instance v1, Lcom/snapchat/android/database/table/ContentValuesBuilder;

    invoke-direct {v1}, Lcom/snapchat/android/database/table/ContentValuesBuilder;-><init>()V

    .line 79
    instance-of v2, p1, Lcom/snapchat/android/screenshotdetection/SnapViewingSession;

    if-eqz v2, :cond_2

    .line 80
    const-string v0, "SnapViewingSession"

    .line 87
    :goto_1
    sget-object v2, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->a:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 88
    sget-object v2, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->b:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->e()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 89
    sget-object v2, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->c:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->f()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 90
    sget-object v2, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->d:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 91
    sget-object v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->e:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 92
    invoke-virtual {v1}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_2
    instance-of v2, p1, Lcom/snapchat/android/screenshotdetection/ChatViewingSession;

    if-eqz v2, :cond_0

    .line 82
    const-string v0, "ChatViewingSession"

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;->a(Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;
    .locals 14
    .parameter

    .prologue
    .line 53
    sget-object v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->a:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->b()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    sget-object v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->b:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->b()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 55
    sget-object v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->c:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->b()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 56
    sget-object v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->d:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->b()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    sget-object v1, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->e:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 58
    const-string v1, "SnapViewingSession"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Lcom/snapchat/android/screenshotdetection/SnapViewingSession;

    invoke-direct/range {v1 .. v7}, Lcom/snapchat/android/screenshotdetection/SnapViewingSession;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 63
    :goto_0
    return-object v1

    .line 60
    :cond_0
    const-string v1, "ChatViewingSession"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    new-instance v8, Lcom/snapchat/android/screenshotdetection/ChatViewingSession;

    move-object v9, v2

    move-wide v10, v4

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/snapchat/android/screenshotdetection/ChatViewingSession;-><init>(Ljava/lang/String;JJ)V

    move-object v1, v8

    goto :goto_0

    .line 63
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "ViewingSessions"

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-static {}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->a()Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;

    move-result-object v0

    invoke-virtual {p0, v1, v1}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->a(Ljava/util/List;)V

    .line 69
    return-void
.end method

.method protected synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/snapchat/android/model/User;)Ljava/util/Collection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/User;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/screenshotdetection/ScreenshotDetectionSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->a()Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/screenshotdetection/ScreenshotDetector;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 6

    .prologue
    .line 39
    const-string v1, "_id INTEGER PRIMARY KEY"

    .line 40
    invoke-static {}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->values()[Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->a(Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->b(Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-object v1
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->values()[Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    move-result-object v0

    return-object v0
.end method
