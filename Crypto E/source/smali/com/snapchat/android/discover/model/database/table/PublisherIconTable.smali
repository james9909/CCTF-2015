.class public Lcom/snapchat/android/discover/model/database/table/PublisherIconTable;
.super Lcom/snapchat/android/database/table/BaseIdToFileTable;
.source "SourceFile"


# static fields
.field private static final a:Lcom/snapchat/android/discover/model/database/table/PublisherIconTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherIconTable;

    invoke-direct {v0}, Lcom/snapchat/android/discover/model/database/table/PublisherIconTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherIconTable;->a:Lcom/snapchat/android/discover/model/database/table/PublisherIconTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 15
    const-string v0, "PublisherIconTable"

    sget-object v1, Lcom/snapchat/android/discover/model/DiscoverCaches;->c:Lcom/snapchat/android/util/cache/Cache;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/database/table/BaseIdToFileTable;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/cache/Cache;)V

    .line 16
    return-void
.end method

.method public static b()Lcom/snapchat/android/discover/model/database/table/PublisherIconTable;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherIconTable;->a:Lcom/snapchat/android/discover/model/database/table/PublisherIconTable;

    return-object v0
.end method


# virtual methods
.method public m()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method
