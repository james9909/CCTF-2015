.class public final enum Lcom/snapchat/android/util/cache/CacheType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/cache/CacheType$1;,
        Lcom/snapchat/android/util/cache/CacheType$StorageLocation;,
        Lcom/snapchat/android/util/cache/CacheType$FileType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/cache/CacheType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum b:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum c:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum d:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum e:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum f:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum g:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum h:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum i:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum j:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum k:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum l:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum m:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum n:Lcom/snapchat/android/util/cache/CacheType;

.field public static final enum o:Lcom/snapchat/android/util/cache/CacheType;

.field private static final synthetic s:[Lcom/snapchat/android/util/cache/CacheType;


# instance fields
.field private final p:Ljava/lang/String;

.field private final q:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

.field private final r:Lcom/snapchat/android/util/cache/CacheType$FileType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/snapchat/android/util/cache/CacheType;

    const-string v1, "STORIES_RECEIVED_THUMBNAIL"

    const-string v3, "/stories/received/thumbnail/"

    sget-object v4, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->c:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    sget-object v5, Lcom/snapchat/android/util/cache/CacheType$FileType;->b:Lcom/snapchat/android/util/cache/CacheType$FileType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/cache/CacheType$StorageLocation;Lcom/snapchat/android/util/cache/CacheType$FileType;)V

    sput-object v0, Lcom/snapchat/android/util/cache/CacheType;->a:Lcom/snapchat/android/util/cache/CacheType;

    .line 11
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "STORIES_RECEIVED_IMAGE"

    const-string v6, "/stories/received/image/"

    sget-object v7, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->b:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    sget-object v8, Lcom/snapchat/android/util/cache/CacheType$FileType;->b:Lcom/snapchat/android/util/cache/CacheType$FileType;

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/cache/CacheType$StorageLocation;Lcom/snapchat/android/util/cache/CacheType$FileType;)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->b:Lcom/snapchat/android/util/cache/CacheType;

    .line 12
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "STORIES_RECEIVED_VIDEO"

    const-string v6, "/stories/received/video/"

    sget-object v7, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->a:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    sget-object v8, Lcom/snapchat/android/util/cache/CacheType$FileType;->a:Lcom/snapchat/android/util/cache/CacheType$FileType;

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/cache/CacheType$StorageLocation;Lcom/snapchat/android/util/cache/CacheType$FileType;)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->c:Lcom/snapchat/android/util/cache/CacheType;

    .line 13
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "SNAPS_RECEIVED_IMAGE"

    const-string v6, "/received_image_snaps/"

    sget-object v7, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->c:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    sget-object v8, Lcom/snapchat/android/util/cache/CacheType$FileType;->b:Lcom/snapchat/android/util/cache/CacheType$FileType;

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/cache/CacheType$StorageLocation;Lcom/snapchat/android/util/cache/CacheType$FileType;)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->d:Lcom/snapchat/android/util/cache/CacheType;

    .line 14
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "SNAPS_RECEIVED_VIDEO"

    const-string v6, "/received_video_snaps/"

    sget-object v7, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->a:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    sget-object v8, Lcom/snapchat/android/util/cache/CacheType$FileType;->a:Lcom/snapchat/android/util/cache/CacheType$FileType;

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/cache/CacheType$StorageLocation;Lcom/snapchat/android/util/cache/CacheType$FileType;)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->e:Lcom/snapchat/android/util/cache/CacheType;

    .line 15
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "CHAT_MEDIA_RECEIVED_IMAGE"

    const/4 v5, 0x5

    const-string v6, "/chat/received/image/"

    sget-object v7, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->b:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    sget-object v8, Lcom/snapchat/android/util/cache/CacheType$FileType;->b:Lcom/snapchat/android/util/cache/CacheType$FileType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/cache/CacheType$StorageLocation;Lcom/snapchat/android/util/cache/CacheType$FileType;)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->f:Lcom/snapchat/android/util/cache/CacheType;

    .line 16
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "UNENCRYPTED_VIDEOS"

    const/4 v5, 0x6

    const-string v6, "/uv/"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    sget-object v7, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->a:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    :goto_0
    sget-object v8, Lcom/snapchat/android/util/cache/CacheType$FileType;->a:Lcom/snapchat/android/util/cache/CacheType$FileType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/cache/CacheType$StorageLocation;Lcom/snapchat/android/util/cache/CacheType$FileType;)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->g:Lcom/snapchat/android/util/cache/CacheType;

    .line 18
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "MY_MEDIA"

    const/4 v5, 0x7

    const-string v6, "/my_media/"

    sget-object v7, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->b:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    sget-object v8, Lcom/snapchat/android/util/cache/CacheType$FileType;->a:Lcom/snapchat/android/util/cache/CacheType$FileType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/cache/CacheType$StorageLocation;Lcom/snapchat/android/util/cache/CacheType$FileType;)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->h:Lcom/snapchat/android/util/cache/CacheType;

    .line 20
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "SNAPS_TO_SEND_IMAGE"

    const/16 v5, 0x8

    const-string v6, "/snaps/tosend/image/"

    sget-object v7, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->d:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    sget-object v8, Lcom/snapchat/android/util/cache/CacheType$FileType;->b:Lcom/snapchat/android/util/cache/CacheType$FileType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/cache/CacheType$StorageLocation;Lcom/snapchat/android/util/cache/CacheType$FileType;)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->i:Lcom/snapchat/android/util/cache/CacheType;

    .line 21
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "SNAPS_TO_SEND_VIDEO"

    const/16 v5, 0x9

    const-string v6, "/snaps/tosend/video/"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    sget-object v7, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->b:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    :goto_1
    sget-object v8, Lcom/snapchat/android/util/cache/CacheType$FileType;->a:Lcom/snapchat/android/util/cache/CacheType$FileType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/cache/CacheType$StorageLocation;Lcom/snapchat/android/util/cache/CacheType$FileType;)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->j:Lcom/snapchat/android/util/cache/CacheType;

    .line 24
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "GEOFILTERS_MEDIA"

    const/16 v5, 0xa

    const-string v6, "/geofilters/"

    sget-object v7, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->c:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    sget-object v8, Lcom/snapchat/android/util/cache/CacheType$FileType;->b:Lcom/snapchat/android/util/cache/CacheType$FileType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/cache/CacheType$StorageLocation;Lcom/snapchat/android/util/cache/CacheType$FileType;)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->k:Lcom/snapchat/android/util/cache/CacheType;

    .line 25
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "DISCOVER_INTRO_VIDEOS"

    const/16 v5, 0xb

    const-string v6, "/discover/intro_videos/"

    sget-object v7, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->a:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    sget-object v8, Lcom/snapchat/android/util/cache/CacheType$FileType;->a:Lcom/snapchat/android/util/cache/CacheType$FileType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/cache/CacheType$StorageLocation;Lcom/snapchat/android/util/cache/CacheType$FileType;)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->l:Lcom/snapchat/android/util/cache/CacheType;

    .line 26
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "DISCOVER_EDITIONS_CHUNKS"

    const/16 v5, 0xc

    const-string v6, "/discover/edition_chunks/"

    sget-object v7, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->a:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    sget-object v8, Lcom/snapchat/android/util/cache/CacheType$FileType;->c:Lcom/snapchat/android/util/cache/CacheType$FileType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/cache/CacheType$StorageLocation;Lcom/snapchat/android/util/cache/CacheType$FileType;)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->m:Lcom/snapchat/android/util/cache/CacheType;

    .line 27
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "DISCOVER_PUBLISHER_ICONS"

    const/16 v5, 0xd

    const-string v6, "/discover/icons/"

    sget-object v7, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->c:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    sget-object v8, Lcom/snapchat/android/util/cache/CacheType$FileType;->b:Lcom/snapchat/android/util/cache/CacheType$FileType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/cache/CacheType$StorageLocation;Lcom/snapchat/android/util/cache/CacheType$FileType;)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->n:Lcom/snapchat/android/util/cache/CacheType;

    .line 28
    new-instance v3, Lcom/snapchat/android/util/cache/CacheType;

    const-string v4, "PROFILE_IMAGE"

    const/16 v5, 0xe

    const-string v6, "/profile/image/"

    sget-object v7, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->c:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    sget-object v8, Lcom/snapchat/android/util/cache/CacheType$FileType;->b:Lcom/snapchat/android/util/cache/CacheType$FileType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/util/cache/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/cache/CacheType$StorageLocation;Lcom/snapchat/android/util/cache/CacheType$FileType;)V

    sput-object v3, Lcom/snapchat/android/util/cache/CacheType;->o:Lcom/snapchat/android/util/cache/CacheType;

    .line 8
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/snapchat/android/util/cache/CacheType;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->a:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->b:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->c:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->d:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType;->e:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->f:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->g:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->h:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->i:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->j:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->k:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->l:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->m:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->n:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/util/cache/CacheType;->o:Lcom/snapchat/android/util/cache/CacheType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/util/cache/CacheType;->s:[Lcom/snapchat/android/util/cache/CacheType;

    return-void

    .line 16
    :cond_0
    sget-object v7, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->c:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    goto/16 :goto_0

    .line 21
    :cond_1
    sget-object v7, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->d:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    goto/16 :goto_1
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/util/cache/CacheType$StorageLocation;Lcom/snapchat/android/util/cache/CacheType$FileType;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/util/cache/CacheType$StorageLocation;",
            "Lcom/snapchat/android/util/cache/CacheType$FileType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/snapchat/android/util/cache/CacheType;->p:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/snapchat/android/util/cache/CacheType;->q:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    .line 54
    iput-object p5, p0, Lcom/snapchat/android/util/cache/CacheType;->r:Lcom/snapchat/android/util/cache/CacheType$FileType;

    .line 55
    return-void
.end method

.method private c()Ljava/io/File;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/snapchat/android/util/cache/CacheType;->q:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->a:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    if-ne v0, v1, :cond_1

    .line 79
    invoke-static {}, Lcom/snapchat/android/util/cache/Storage;->b()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException;

    const-string v1, "Well, this is awkward."

    invoke-direct {v0, v1}, Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/cache/Storage;->b()Ljava/io/File;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/cache/CacheType;->q:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->b:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/snapchat/android/util/cache/Storage;->b()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/util/cache/CacheType;->q:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    sget-object v1, Lcom/snapchat/android/util/cache/CacheType$StorageLocation;->d:Lcom/snapchat/android/util/cache/CacheType$StorageLocation;

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/snapchat/android/util/cache/Storage;->a()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_4

    .line 89
    :cond_3
    invoke-static {}, Lcom/snapchat/android/util/cache/Storage;->b()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_4
    invoke-static {}, Lcom/snapchat/android/util/cache/Storage;->a()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/cache/CacheType;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/snapchat/android/util/cache/CacheType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/cache/CacheType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/cache/CacheType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/snapchat/android/util/cache/CacheType;->s:[Lcom/snapchat/android/util/cache/CacheType;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/cache/CacheType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/cache/CacheType;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    sget-object v0, Lcom/snapchat/android/util/cache/CacheType$1;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/util/cache/CacheType;->r:Lcom/snapchat/android/util/cache/CacheType$FileType;

    invoke-virtual {v1}, Lcom/snapchat/android/util/cache/CacheType$FileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "y78soep3m2n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 60
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sesrh_dlw21"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4.nomedia"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "h1a81hurcs00h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg.nomedia"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()Ljava/io/File;
    .locals 3

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/snapchat/android/util/cache/CacheType;->c()Ljava/io/File;

    move-result-object v0

    .line 71
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 74
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/util/cache/CacheType;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
