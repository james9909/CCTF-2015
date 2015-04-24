.class final enum Lcom/snapchat/android/util/cache/CacheType$StorageLocation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/cache/CacheType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StorageLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/cache/CacheType$StorageLocation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

.field public static final enum b:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

.field public static final enum c:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

.field public static final enum d:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

.field private static final synthetic e:[Lcom/snapchat/android/util/cache/CacheType$StorageLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    const-string v1, "EXTERNAL_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->a:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    .line 38
    new-instance v0, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    const-string v1, "EXTERNAL_PREFERRED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->b:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    .line 39
    new-instance v0, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->c:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    .line 40
    new-instance v0, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    const-string v1, "INTERNAL_PREFERRED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->d:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->a:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->b:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->c:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->d:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->e:[Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/cache/CacheType$StorageLocation;
    .locals 1
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/cache/CacheType$StorageLocation;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->e:[Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    return-object v0
.end method
