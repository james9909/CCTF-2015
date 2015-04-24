.class public Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$1;,
        Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/data/gson/rich_story/RichStoryChannelResponse;",
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

.field private static e:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 46
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->values()[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    move-result-object v1

    .line 47
    array-length v2, v1

    .line 48
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->a:[Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->b:Ljava/util/HashMap;

    .line 50
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 51
    aget-object v3, v1, v0

    .line 52
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->a:[Ljava/lang/String;

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 53
    sget-object v4, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;
    .locals 2

    .prologue
    .line 102
    const-class v1, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->e:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->e:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;

    .line 105
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->e:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a(Lcom/snapchat/data/gson/rich_story/RichStoryChannelResponse;)Landroid/content/ContentValues;
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 155
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/data/gson/rich_story/RichStoryChannelResponse;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/data/gson/rich_story/RichStoryChannelResponse;->b()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-object v1

    .line 159
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/data/gson/rich_story/RichStoryChannelResponse;->c()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;

    .line 160
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;->b()Lcom/snapchat/data/gson/rich_story/RichStoryItemPropertiesResponse;

    move-result-object v2

    .line 165
    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {v2}, Lcom/snapchat/data/gson/rich_story/RichStoryItemPropertiesResponse;->c()Ljava/lang/String;

    move-result-object v3

    .line 171
    if-eqz v3, :cond_2

    .line 172
    invoke-static {v3}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v0

    .line 178
    :goto_1
    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$1;->a:[I

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 192
    :goto_2
    new-instance v3, Lcom/snapchat/android/database/table/ContentValuesBuilder;

    invoke-direct {v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;-><init>()V

    sget-object v4, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->c:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->f:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v2}, Lcom/snapchat/data/gson/rich_story/RichStoryItemPropertiesResponse;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->g:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v2}, Lcom/snapchat/data/gson/rich_story/RichStoryItemPropertiesResponse;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->d:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v0, v3, v1}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->e:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v2}, Lcom/snapchat/data/gson/rich_story/RichStoryItemPropertiesResponse;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->i:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v2}, Lcom/snapchat/data/gson/rich_story/RichStoryItemPropertiesResponse;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->h:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v2}, Lcom/snapchat/data/gson/rich_story/RichStoryItemPropertiesResponse;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a()Landroid/content/ContentValues;

    move-result-object v1

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {v0}, Lcom/snapchat/data/gson/rich_story/RichStoryItemResponse;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$MediaType;

    move-result-object v0

    goto :goto_1

    .line 180
    :pswitch_0
    invoke-virtual {v2}, Lcom/snapchat/data/gson/rich_story/RichStoryItemPropertiesResponse;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 183
    :pswitch_1
    invoke-virtual {v2}, Lcom/snapchat/data/gson/rich_story/RichStoryItemPropertiesResponse;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 186
    :pswitch_2
    invoke-virtual {v2}, Lcom/snapchat/data/gson/rich_story/RichStoryItemPropertiesResponse;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 32
    check-cast p1, Lcom/snapchat/data/gson/rich_story/RichStoryChannelResponse;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->a(Lcom/snapchat/data/gson/rich_story/RichStoryChannelResponse;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "DSnapItem"

    return-object v0
.end method

.method protected a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/snapchat/data/gson/rich_story/RichStoryChannelResponse;)V
    .locals 5
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 211
    invoke-virtual {p0, p3}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->a(Lcom/snapchat/data/gson/rich_story/RichStoryChannelResponse;)Landroid/content/ContentValues;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 226
    :cond_0
    return-void

    .line 216
    :cond_1
    invoke-virtual {p3}, Lcom/snapchat/data/gson/rich_story/RichStoryChannelResponse;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Form;

    move-result-object v1

    .line 217
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->j:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->b:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->a:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "DSnapItem"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 223
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Insertion in DB failed for DSnapItem"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    return-void
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
            "Lcom/snapchat/data/gson/rich_story/RichStoryChannelResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->values()[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    move-result-object v2

    .line 122
    array-length v3, v2

    .line 123
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 124
    aget-object v4, v2, v0

    .line 125
    if-lez v0, :cond_0

    .line 126
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->a(Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->b(Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->d()Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-static {v4}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 131
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    return-void
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->values()[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method
