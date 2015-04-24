.class public Lcom/snapchat/android/discover/model/database/table/EditionChunkFileTable;
.super Lcom/snapchat/android/database/table/BaseIdToFileTable;
.source "SourceFile"


# static fields
.field private static final a:Lcom/snapchat/android/discover/model/database/table/EditionChunkFileTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkFileTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/table/EditionChunkFileTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkFileTable;->a:Lcom/snapchat/android/discover/model/database/table/EditionChunkFileTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    const-string v0, "EditionChunkFileTable"

    sget-object v1, Lcom/snapchat/android/discover/model/DiscoverCaches;->b:Lcom/snapchat/android/util/cache/Cache;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/database/table/BaseIdToFileTable;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/cache/Cache;)V

    .line 16
    return-void
.end method

.method public static b()Lcom/snapchat/android/discover/model/database/table/EditionChunkFileTable;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkFileTable;->a:Lcom/snapchat/android/discover/model/database/table/EditionChunkFileTable;

    return-object v0
.end method


# virtual methods
.method public m()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method
