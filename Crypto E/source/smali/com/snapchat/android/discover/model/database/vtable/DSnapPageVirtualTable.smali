.class public Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;
.super Lcom/snapchat/android/database/vtable/DbVirtualTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;
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

.field private static final f:[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

.field private static final g:[Ljava/lang/String;

.field private static h:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

.field private static final i:Ljava/lang/String;


# instance fields
.field private final c:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

.field private final d:Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;

.field private final e:Lcom/snapchat/android/util/debug/ReleaseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 42
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->f:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->g:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->d:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->c:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->h:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->i:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->e:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    aput-object v3, v1, v2

    sput-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->f:[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    .line 63
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->j()[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->g:[Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->values()[Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    move-result-object v1

    .line 67
    array-length v2, v1

    .line 68
    new-array v3, v2, [Ljava/lang/String;

    sput-object v3, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->a:[Ljava/lang/String;

    .line 69
    new-instance v3, Ljava/util/HashMap;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    sput-object v3, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->b:Ljava/util/HashMap;

    .line 70
    :goto_0
    if-ge v0, v2, :cond_0

    .line 71
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->c()Ljava/lang/String;

    move-result-object v3

    .line 72
    sget-object v4, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->a:[Ljava/lang/String;

    aput-object v3, v4, v0

    .line 73
    sget-object v4, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->f()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->i:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 87
    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a()Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;->a()Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->a()Lcom/snapchat/android/util/debug/ReleaseManager;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;-><init>(Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;Lcom/snapchat/android/util/debug/ReleaseManager;)V

    .line 88
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;Lcom/snapchat/android/util/debug/ReleaseManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/snapchat/android/database/vtable/DbVirtualTable;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->c:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    .line 94
    iput-object p2, p0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->d:Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;

    .line 95
    iput-object p3, p0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->e:Lcom/snapchat/android/util/debug/ReleaseManager;

    .line 96
    return-void
.end method

.method private static a(Lcom/snapchat/android/discover/model/DSnapPage$Form;)Ljava/lang/StringBuilder;
    .locals 8
    .parameter

    .prologue
    .line 269
    invoke-static {p0}, Lcom/snapchat/android/util/EnumUtils;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    const-string v0, "(SELECT "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->f:[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 273
    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->c()Ljava/lang/String;

    move-result-object v5

    .line 274
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->j:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " FROM "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "DSnapItem"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " WHERE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->b:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") AS "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    return-object v2
.end method

.method public static e()Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->h:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->h:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

    .line 83
    :cond_0
    sget-object v0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->h:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x2e

    const/4 v0, 0x0

    const/16 v8, 0x2c

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " CREATE VIEW "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DSnapPage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Edition"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->b:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v2, v3}, Lcom/snapchat/android/database/SqlHelper;->a(Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "chunk_dsnap_items"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->a:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-static {v2, v3}, Lcom/snapchat/android/database/SqlHelper;->a(Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "chunk_dsnap_items"

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->b:Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    invoke-static {v2, v3}, Lcom/snapchat/android/database/SqlHelper;->a(Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 157
    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->values()[Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 158
    sget-object v6, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->a:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    if-eq v5, v6, :cond_0

    .line 159
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "chunk_dsnap_items"

    invoke-static {v7, v5}, Lcom/snapchat/android/database/SqlHelper;->a(Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Edition"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->b:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    sget-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->g:[Ljava/lang/String;

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 170
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "chunk_dsnap_items"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :cond_2
    const-string v0, " FROM "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Edition"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->g()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Edition"

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->a:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v1, v2}, Lcom/snapchat/android/database/SqlHelper;->a(Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "chunk_dsnap_items"

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->b:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-static {v1, v2}, Lcom/snapchat/android/database/SqlHelper;->a(Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EditionChunk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->h()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EditionChunk"

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->d:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-static {v1, v2}, Lcom/snapchat/android/database/SqlHelper;->a(Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dsnap_and_dsnap_items"

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->a:Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    invoke-static {v1, v2}, Lcom/snapchat/android/database/SqlHelper;->a(Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "chunk_dsnap_items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static h()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DSnap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->i()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DSnap"

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;->a:Lcom/snapchat/android/discover/model/database/table/DSnapTable$DSnapSchema;

    invoke-static {v1, v2}, Lcom/snapchat/android/database/SqlHelper;->a(Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dsnap_items"

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->j:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-static {v1, v2}, Lcom/snapchat/android/database/SqlHelper;->a(Ljava/lang/String;Lcom/snapchat/android/database/schema/Schema;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dsnap_and_dsnap_items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static i()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    const/16 v2, 0x2e

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->a:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-static {v1}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->a(Lcom/snapchat/android/discover/model/DSnapPage$Form;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LEFT JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-static {v1}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->a(Lcom/snapchat/android/discover/model/DSnapPage$Form;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->a:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-static {v1}, Lcom/snapchat/android/util/EnumUtils;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->j:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-static {v1}, Lcom/snapchat/android/util/EnumUtils;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->j:Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dsnap_items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private static j()[Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-static {}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->values()[Lcom/snapchat/android/discover/model/DSnapPage$Form;

    move-result-object v5

    .line 249
    array-length v0, v5

    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->f:[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    array-length v2, v2

    mul-int/2addr v0, v2

    new-array v6, v0, [Ljava/lang/String;

    .line 251
    array-length v7, v5

    move v4, v1

    move v0, v1

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v2, v5, v4

    .line 252
    invoke-static {v2}, Lcom/snapchat/android/util/EnumUtils;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v8

    .line 253
    sget-object v9, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->f:[Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;

    array-length v10, v9

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v10, :cond_0

    aget-object v11, v9, v0

    .line 254
    add-int/lit8 v3, v2, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable$DSnapItemSchema;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v2

    .line 253
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    .line 251
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_0

    .line 257
    :cond_1
    return-object v6
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;
    .locals 19
    .parameter

    .prologue
    .line 357
    sget-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->a:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 358
    sget-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 360
    sget-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->d:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 361
    sget-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->e:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 362
    sget-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->c:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 363
    sget-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->f:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 364
    sget-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->g:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 365
    sget-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->h:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 366
    sget-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->i:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 367
    sget-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->j:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 368
    const/4 v1, 0x0

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->e:Lcom/snapchat/android/util/debug/ReleaseManager;

    invoke-virtual {v2}, Lcom/snapchat/android/util/debug/ReleaseManager;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    sget-object v1, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->k:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    .line 374
    :cond_0
    :goto_0
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->l:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 375
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->m:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 376
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->n:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 378
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->o:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 379
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->p:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 380
    sget-object v2, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->q:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 381
    const/4 v2, 0x0

    .line 382
    if-eqz v3, :cond_1

    if-eqz v16, :cond_1

    .line 383
    new-instance v2, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;

    invoke-direct {v2}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;-><init>()V

    invoke-virtual {v2, v3}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->c(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->e(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->d(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->g(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->f(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->a()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v2

    .line 394
    :cond_1
    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->t:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 395
    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->r:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 396
    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->s:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 398
    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->u:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 399
    sget-object v3, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->v:Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->b()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 400
    const/4 v3, 0x0

    .line 401
    if-eqz v17, :cond_5

    if-nez v14, :cond_2

    if-eqz v18, :cond_5

    .line 402
    :cond_2
    new-instance v3, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;

    invoke-direct {v3}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;-><init>()V

    invoke-virtual {v3, v14}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->c(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->d(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->e(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->b(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;

    move-result-object v14

    .line 409
    if-eqz v18, :cond_4

    .line 410
    invoke-virtual {v14}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->a()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v3

    .line 411
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->c:Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;

    invoke-virtual {v15, v3}, Lcom/snapchat/android/discover/model/DiscoverMediaStateTracker;->a(Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/model/MediaState;

    move-result-object v3

    .line 413
    sget-object v15, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    if-ne v3, v15, :cond_3

    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->d:Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/snapchat/android/discover/model/DiscoverVideoCatalog;->a(Ljava/lang/String;)Lcom/snapchat/data/gson/discover/VideoCatalogResponse;

    move-result-object v3

    .line 415
    if-eqz v3, :cond_9

    .line 416
    invoke-virtual {v14, v3}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->a(Lcom/snapchat/data/gson/discover/VideoCatalogResponse;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;

    .line 417
    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    .line 424
    :cond_3
    :goto_1
    invoke-virtual {v14, v3}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->a(Lcom/snapchat/android/discover/model/MediaState;)Lcom/snapchat/android/discover/model/DSnapPanel$Builder;

    .line 426
    :cond_4
    invoke-virtual {v14}, Lcom/snapchat/android/discover/model/DSnapPanel$Builder;->a()Lcom/snapchat/android/discover/model/DSnapPanel;

    move-result-object v3

    .line 430
    :cond_5
    new-instance v14, Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    invoke-direct {v14}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;-><init>()V

    invoke-virtual {v14, v4}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->b(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->a(Ljava/lang/Integer;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->c(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->d(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->e(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->f(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->g(Ljava/lang/String;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->a(I)Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->a(Z)Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->b(Ljava/lang/Integer;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    move-result-object v1

    .line 442
    if-eqz v2, :cond_6

    .line 443
    sget-object v4, Lcom/snapchat/android/discover/model/DSnapPage$Form;->a:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v4}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    .line 445
    :cond_6
    if-eqz v3, :cond_7

    .line 446
    sget-object v2, Lcom/snapchat/android/discover/model/DSnapPage$Form;->b:Lcom/snapchat/android/discover/model/DSnapPage$Form;

    invoke-virtual {v2}, Lcom/snapchat/android/discover/model/DSnapPage$Form;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/discover/model/DSnapPage$Builder;->a(Ljava/lang/String;Lcom/snapchat/android/discover/model/DSnapPanel;)Lcom/snapchat/android/discover/model/DSnapPage$Builder;

    .line 449
    :cond_7
    return-object v1

    .line 370
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 419
    :cond_9
    sget-object v3, Lcom/snapchat/android/discover/model/MediaState;->k:Lcom/snapchat/android/discover/model/MediaState;

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "DSnapPage"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;->values()[Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable$DSnapPageSchema;

    move-result-object v0

    return-object v0
.end method
