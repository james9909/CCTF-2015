.class public Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/model/server/AnalyticsEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;


# instance fields
.field protected a:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 28
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/SnapchatApplication;->a(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;->b:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;->b:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;

    .line 35
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;->b:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/server/AnalyticsEvent;)Landroid/content/ContentValues;
    .locals 4
    .parameter

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lcom/snapchat/android/database/table/ContentValuesBuilder;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;-><init>()V

    .line 74
    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->a:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 75
    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->b:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/AnalyticsEvent;->getParamsAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 76
    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->c:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/server/AnalyticsEvent;->getTimeStampInSeconds()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 78
    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 19
    check-cast p1, Lcom/snapchat/android/model/server/AnalyticsEvent;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;->a(Lcom/snapchat/android/model/server/AnalyticsEvent;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Lcom/snapchat/android/model/server/AnalyticsEvent;
    .locals 4
    .parameter

    .prologue
    .line 84
    sget-object v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->a:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->b()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->b:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    sget-object v2, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->c:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->b()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    new-instance v3, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;

    invoke-direct {v3, v0}, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v3, v1}, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->addParamsFromString(Ljava/lang/String;)Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;

    .line 90
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->setTimestampInSeconds(D)Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;

    .line 91
    invoke-virtual {v3}, Lcom/snapchat/android/model/server/AnalyticsEvent$Builder;->build()Lcom/snapchat/android/model/server/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "AnalyticsEvents"

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;->a:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;

    invoke-virtual {p0, v1, v1}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->b(Ljava/util/List;)V

    .line 65
    return-void
.end method

.method protected synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/model/server/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/snapchat/android/model/User;)Ljava/util/Collection;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/User;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/server/AnalyticsEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;->a:Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/UpdateSnapsAnalyticsPlatform;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 6

    .prologue
    .line 45
    const-string v1, "_id INTEGER PRIMARY KEY"

    .line 46
    invoke-static {}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->values()[Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->a(Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->b(Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-object v1
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->values()[Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    move-result-object v0

    return-object v0
.end method
