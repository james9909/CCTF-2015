.class public Lcom/snapchat/android/database/table/SnapVideoFileTable;
.super Lcom/snapchat/android/database/table/BaseIdToFileTable;
.source "SourceFile"


# static fields
.field private static final a:Lcom/snapchat/android/database/table/SnapVideoFileTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/snapchat/android/database/table/SnapVideoFileTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/SnapVideoFileTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/SnapVideoFileTable;->a:Lcom/snapchat/android/database/table/SnapVideoFileTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 12
    const-string v0, "SnapVideoFiles"

    sget-object v1, Lcom/snapchat/android/util/cache/Caches;->f:Lcom/snapchat/android/util/cache/Cache;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/database/table/BaseIdToFileTable;-><init>(Ljava/lang/String;Lcom/snapchat/android/util/cache/Cache;)V

    .line 13
    return-void
.end method

.method public static b()Lcom/snapchat/android/database/table/SnapVideoFileTable;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/snapchat/android/database/table/SnapVideoFileTable;->a:Lcom/snapchat/android/database/table/SnapVideoFileTable;

    return-object v0
.end method
