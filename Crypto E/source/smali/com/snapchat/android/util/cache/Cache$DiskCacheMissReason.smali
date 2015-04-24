.class final enum Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/cache/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DiskCacheMissReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

.field public static final enum b:Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

.field public static final enum c:Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

.field public static final enum d:Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

.field public static final enum e:Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

.field private static final synthetic f:[Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    const-string v1, "FILE_NOT_EXIST"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;->a:Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    .line 59
    new-instance v0, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;->b:Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    .line 60
    new-instance v0, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    const-string v1, "DECODING_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;->c:Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    .line 61
    new-instance v0, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    const-string v1, "EMPTY_FILE"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;->d:Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    .line 62
    new-instance v0, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;->e:Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    sget-object v1, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;->a:Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;->b:Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;->c:Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;->d:Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;->e:Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;->f:[Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;
    .locals 1
    .parameter

    .prologue
    .line 57
    const-class v0, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;->f:[Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/cache/Cache$DiskCacheMissReason;

    return-object v0
.end method
