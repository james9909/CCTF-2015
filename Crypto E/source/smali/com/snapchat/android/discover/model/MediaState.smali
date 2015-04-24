.class public final enum Lcom/snapchat/android/discover/model/MediaState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/MediaState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum b:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum c:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum d:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum e:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum f:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum g:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum h:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum i:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum j:Lcom/snapchat/android/discover/model/MediaState;

.field public static final enum k:Lcom/snapchat/android/discover/model/MediaState;

.field private static final synthetic n:[Lcom/snapchat/android/discover/model/MediaState;


# instance fields
.field private final l:Z

.field private final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v3, v4, v3}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    .line 14
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "FETCHING_MEDIA"

    invoke-direct {v0, v1, v4, v4, v3}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->b:Lcom/snapchat/android/discover/model/MediaState;

    .line 18
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "RESOLVE_NEEDED"

    invoke-direct {v0, v1, v5, v4, v3}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->c:Lcom/snapchat/android/discover/model/MediaState;

    .line 22
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "RESOLVING_AD"

    invoke-direct {v0, v1, v6, v4, v3}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->d:Lcom/snapchat/android/discover/model/MediaState;

    .line 26
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "RESOLVED_AD"

    invoke-direct {v0, v1, v7, v4, v3}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->e:Lcom/snapchat/android/discover/model/MediaState;

    .line 30
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "SUCCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    .line 34
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "DISK_FULL_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->g:Lcom/snapchat/android/discover/model/MediaState;

    .line 38
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "CONTENT_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->h:Lcom/snapchat/android/discover/model/MediaState;

    .line 42
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->i:Lcom/snapchat/android/discover/model/MediaState;

    .line 46
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "EXTERNAL_STORAGE_UNAVAILABLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->j:Lcom/snapchat/android/discover/model/MediaState;

    .line 50
    new-instance v0, Lcom/snapchat/android/discover/model/MediaState;

    const-string v1, "GENERIC_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/discover/model/MediaState;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->k:Lcom/snapchat/android/discover/model/MediaState;

    .line 6
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/snapchat/android/discover/model/MediaState;

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->a:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->b:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->c:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->d:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/discover/model/MediaState;->e:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->f:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->g:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->h:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->i:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->j:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/discover/model/MediaState;->k:Lcom/snapchat/android/discover/model/MediaState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/discover/model/MediaState;->n:[Lcom/snapchat/android/discover/model/MediaState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput-boolean p3, p0, Lcom/snapchat/android/discover/model/MediaState;->l:Z

    .line 58
    iput-boolean p4, p0, Lcom/snapchat/android/discover/model/MediaState;->m:Z

    .line 59
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/MediaState;
    .locals 1
    .parameter

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/discover/model/MediaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/MediaState;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/discover/model/MediaState;->n:[Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/MediaState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/MediaState;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/MediaState;->l:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/snapchat/android/discover/model/MediaState;->m:Z

    return v0
.end method
