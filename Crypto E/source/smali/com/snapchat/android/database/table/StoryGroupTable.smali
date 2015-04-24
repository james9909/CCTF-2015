.class public Lcom/snapchat/android/database/table/StoryGroupTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/model/StoryGroup;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/snapchat/android/database/table/StoryGroupTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-static {}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->values()[Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    move-result-object v2

    .line 28
    array-length v3, v2

    .line 29
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lcom/snapchat/android/database/table/StoryGroupTable;->a:[Ljava/lang/String;

    move v1, v0

    .line 30
    :goto_0
    if-ge v1, v3, :cond_0

    .line 31
    sget-object v4, Lcom/snapchat/android/database/table/StoryGroupTable;->a:[Ljava/lang/String;

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/snapchat/android/database/table/StoryGroupTable;->b:Ljava/util/HashMap;

    .line 36
    invoke-static {}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->values()[Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 37
    sget-object v4, Lcom/snapchat/android/database/table/StoryGroupTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 39
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/StoryGroupTable;
    .locals 2

    .prologue
    .line 81
    const-class v1, Lcom/snapchat/android/database/table/StoryGroupTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/StoryGroupTable;->e:Lcom/snapchat/android/database/table/StoryGroupTable;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/snapchat/android/database/table/StoryGroupTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/StoryGroupTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/StoryGroupTable;->e:Lcom/snapchat/android/database/table/StoryGroupTable;

    .line 84
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/StoryGroupTable;->e:Lcom/snapchat/android/database/table/StoryGroupTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/StoryGroup;)Landroid/content/ContentValues;
    .locals 3
    .parameter

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 154
    :goto_0
    return-object v0

    .line 148
    :cond_0
    new-instance v0, Lcom/snapchat/android/database/table/ContentValuesBuilder;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;-><init>()V

    .line 149
    sget-object v1, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->a:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 150
    sget-object v1, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->b:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 151
    sget-object v1, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->c:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->f()Z

    move-result v2

    invoke-static {v2}, Lcom/snapchat/android/database/table/StoryGroupTable;->a(Z)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 153
    sget-object v1, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->d:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StoryGroup;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 154
    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 16
    check-cast p1, Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/StoryGroupTable;->a(Lcom/snapchat/android/model/StoryGroup;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Lcom/snapchat/android/model/StoryGroup;
    .locals 5
    .parameter

    .prologue
    .line 119
    sget-object v0, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->a:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->b()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->b:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    sget-object v2, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->c:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->b()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/snapchat/android/database/table/StoryGroupTable;->a(I)Z

    move-result v2

    .line 123
    sget-object v3, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->d:Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->b()I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    new-instance v4, Lcom/snapchat/android/model/StoryGroup$Builder;

    invoke-direct {v4, v0}, Lcom/snapchat/android/model/StoryGroup$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/snapchat/android/model/StoryGroup$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/model/StoryGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/model/StoryGroup$Builder;->a(Z)Lcom/snapchat/android/model/StoryGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/StoryGroup$Builder;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryGroup$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryGroup$Builder;->a()Lcom/snapchat/android/model/StoryGroup;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "StoryGroup"

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-virtual {p0, v1, v1}, Lcom/snapchat/android/database/table/StoryGroupTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->b(Ljava/util/List;)V

    .line 140
    return-void
.end method

.method protected synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/StoryGroupTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/model/StoryGroup;

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
            "Lcom/snapchat/android/model/StoryGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryLibrary;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-static {}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->values()[Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    move-result-object v2

    .line 96
    array-length v3, v2

    .line 97
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 98
    aget-object v4, v2, v0

    .line 99
    if-lez v0, :cond_0

    .line 100
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->a(Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->b(Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->d()Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 105
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;->values()[Lcom/snapchat/android/database/table/StoryGroupTable$StoryGroupSchema;

    move-result-object v0

    return-object v0
.end method
