.class public final enum Lcom/snapchat/android/database/table/DbTable$DatabaseTable;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/DbTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DatabaseTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/DbTable$DatabaseTable;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum B:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum C:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum D:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum E:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum F:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum G:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum H:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum I:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum J:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum K:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum L:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum M:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum N:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum O:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum P:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum Q:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum R:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field private static final synthetic T:[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum a:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum b:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum c:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum d:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum e:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum f:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum g:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum h:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum i:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum j:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum k:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum l:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum m:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum n:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum o:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum p:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum q:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum r:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum s:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum t:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum u:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum v:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum w:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum x:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum y:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field public static final enum z:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;


# instance fields
.field private S:Lcom/snapchat/android/database/table/DbTable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 385
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "CONTACTS_ON_SNAPCHAT"

    invoke-static {}, Lcom/snapchat/android/database/table/ContactOnSnapchatTable;->b()Lcom/snapchat/android/database/table/ContactOnSnapchatTable;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->a:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 386
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "CONTACTS_NOT_ON_SNAPCHAT"

    invoke-static {}, Lcom/snapchat/android/database/table/ContactNotOnSnapchatTable;->b()Lcom/snapchat/android/database/table/ContactNotOnSnapchatTable;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->b:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 387
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "FRIENDS_WHO_ADDED_ME"

    invoke-static {}, Lcom/snapchat/android/database/table/FriendsWhoAddedMeTable;->b()Lcom/snapchat/android/database/table/FriendsWhoAddedMeTable;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->c:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 388
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "FRIENDS"

    invoke-static {}, Lcom/snapchat/android/database/table/FriendTable;->f()Lcom/snapchat/android/database/table/FriendTable;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->d:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 389
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "SENT_SNAPS"

    invoke-static {}, Lcom/snapchat/android/database/table/SentSnapTable;->b()Lcom/snapchat/android/database/table/SentSnapTable;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->e:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 390
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "RECEIVED_SNAPS"

    const/4 v2, 0x5

    invoke-static {}, Lcom/snapchat/android/database/table/ReceivedSnapTable;->b()Lcom/snapchat/android/database/table/ReceivedSnapTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->f:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 391
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "VIEWING_SESSIONS"

    const/4 v2, 0x6

    invoke-static {}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;->b()Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->g:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 392
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "SNAP_IMAGE_FILES"

    const/4 v2, 0x7

    invoke-static {}, Lcom/snapchat/android/database/table/SnapImageFileTable;->b()Lcom/snapchat/android/database/table/SnapImageFileTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->h:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 393
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "SNAP_VIDEO_FILES"

    const/16 v2, 0x8

    invoke-static {}, Lcom/snapchat/android/database/table/SnapVideoFileTable;->b()Lcom/snapchat/android/database/table/SnapVideoFileTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->i:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 394
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "STORY_IMAGE_FILES"

    const/16 v2, 0x9

    invoke-static {}, Lcom/snapchat/android/database/table/StoryImageFileTable;->b()Lcom/snapchat/android/database/table/StoryImageFileTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->j:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 395
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "STORY_IMAGE_THUMBNAIL_FILES"

    const/16 v2, 0xa

    invoke-static {}, Lcom/snapchat/android/database/table/StoryImageThumbnailFileTable;->b()Lcom/snapchat/android/database/table/StoryImageThumbnailFileTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->k:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 396
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "STORY_VIDEO_FILES"

    const/16 v2, 0xb

    invoke-static {}, Lcom/snapchat/android/database/table/StoryVideoFileTable;->b()Lcom/snapchat/android/database/table/StoryVideoFileTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->l:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 397
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "MY_STORY_FILES"

    const/16 v2, 0xc

    invoke-static {}, Lcom/snapchat/android/database/table/MyMediaFileTable;->b()Lcom/snapchat/android/database/table/MyMediaFileTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->m:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 398
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "STORY_GROUPS"

    const/16 v2, 0xd

    invoke-static {}, Lcom/snapchat/android/database/table/StoryGroupTable;->b()Lcom/snapchat/android/database/table/StoryGroupTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->n:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 399
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "MY_POSTED_STORIES"

    const/16 v2, 0xe

    invoke-static {}, Lcom/snapchat/android/database/table/MyPostedStorySnapTable;->b()Lcom/snapchat/android/database/table/MyPostedStorySnapTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->o:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 400
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "FRIEND_STORIES"

    const/16 v2, 0xf

    invoke-static {}, Lcom/snapchat/android/database/table/FriendStorySnapTable;->b()Lcom/snapchat/android/database/table/FriendStorySnapTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->p:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 401
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "ANALYTICS_EVENTS"

    const/16 v2, 0x10

    invoke-static {}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;->b()Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->q:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 402
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "FAILED_POST_SNAPBRYOS"

    const/16 v2, 0x11

    invoke-static {}, Lcom/snapchat/android/database/table/FailedPostSnapbryoTable;->b()Lcom/snapchat/android/database/table/FailedPostSnapbryoTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->r:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 403
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "FAILED_SEND_SNAPBRYOS"

    const/16 v2, 0x12

    invoke-static {}, Lcom/snapchat/android/database/table/FailedSendSnapbryoTable;->b()Lcom/snapchat/android/database/table/FailedSendSnapbryoTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->s:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 404
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "FAILED_CHAT_MEDIA_SNAPBRYOS"

    const/16 v2, 0x13

    invoke-static {}, Lcom/snapchat/android/database/table/FailedChatMediaSnapbryoTable;->b()Lcom/snapchat/android/database/table/FailedChatMediaSnapbryoTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->t:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 405
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "SENDING_SNAPBRYOS"

    const/16 v2, 0x14

    invoke-static {}, Lcom/snapchat/android/database/table/SendingSnapbryoTable;->b()Lcom/snapchat/android/database/table/SendingSnapbryoTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->u:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 408
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "CONVERSATION"

    const/16 v2, 0x15

    invoke-static {}, Lcom/snapchat/android/database/table/ConversationTable;->b()Lcom/snapchat/android/database/table/ConversationTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->v:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 409
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "CHAT"

    const/16 v2, 0x16

    invoke-static {}, Lcom/snapchat/android/database/table/ChatTable;->b()Lcom/snapchat/android/database/table/ChatTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->w:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 410
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "NOTIFICATION"

    const/16 v2, 0x17

    invoke-static {}, Lcom/snapchat/android/database/table/NotificationTable;->b()Lcom/snapchat/android/database/table/NotificationTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->x:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 411
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "CHATS_FROM_LAST_HOUR"

    const/16 v2, 0x18

    invoke-static {}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;->b()Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->y:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 412
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "CLEARED_CHAT_IDS"

    const/16 v2, 0x19

    invoke-static {}, Lcom/snapchat/android/database/table/ClearedChatIdsTable;->b()Lcom/snapchat/android/database/table/ClearedChatIdsTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->z:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 413
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "GEOFILTER_FILES"

    const/16 v2, 0x1a

    invoke-static {}, Lcom/snapchat/android/database/table/GeofilterFileTable;->b()Lcom/snapchat/android/database/table/GeofilterFileTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->A:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 414
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "HAS_SEEN_OUR_STORY_DIALOG_TABLE"

    const/16 v2, 0x1b

    invoke-static {}, Lcom/snapchat/android/database/table/HasSeenPostToOurStoryDialogTable;->b()Lcom/snapchat/android/database/table/HasSeenPostToOurStoryDialogTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->B:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 415
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "HAS_SEEN_OUR_CAMPUS_STORY_DIALOG_TABLE"

    const/16 v2, 0x1c

    invoke-static {}, Lcom/snapchat/android/database/table/HasSeenOurCampusStoryDialogTable;->b()Lcom/snapchat/android/database/table/HasSeenOurCampusStoryDialogTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->C:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 416
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "STORY_SNAP_NOTE_TABLE"

    const/16 v2, 0x1d

    invoke-static {}, Lcom/snapchat/android/database/table/StorySnapNoteTable;->b()Lcom/snapchat/android/database/table/StorySnapNoteTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->D:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 419
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "HTTP_METRICS"

    const/16 v2, 0x1e

    invoke-static {}, Lcom/snapchat/android/database/table/HttpMetricsTable;->b()Lcom/snapchat/android/database/table/HttpMetricsTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->E:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 420
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "CASH_FEED_ITEM"

    const/16 v2, 0x1f

    invoke-static {}, Lcom/snapchat/android/database/table/CashFeedItemTable;->b()Lcom/snapchat/android/database/table/CashFeedItemTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->F:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 423
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "PUBLISHER_CHANNELS"

    const/16 v2, 0x20

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->b()Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->G:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 424
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "EDITIONS"

    const/16 v2, 0x21

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionTable;->b()Lcom/snapchat/android/discover/model/database/table/EditionTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->H:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 425
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "EDITION_CHUNKS"

    const/16 v2, 0x22

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;->b()Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->I:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 426
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "DSNAPS"

    const/16 v2, 0x23

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapTable;->b()Lcom/snapchat/android/discover/model/database/table/DSnapTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->J:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 427
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "DSNAP_ITEMS"

    const/16 v2, 0x24

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;->b()Lcom/snapchat/android/discover/model/database/table/DSnapItemTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->K:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 428
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "INTRO_VIDEO_FILES"

    const/16 v2, 0x25

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/IntroVideoFileTable;->b()Lcom/snapchat/android/discover/model/database/table/IntroVideoFileTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->L:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 429
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "PUBLISHER_ICONS"

    const/16 v2, 0x26

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/PublisherIconTable;->b()Lcom/snapchat/android/discover/model/database/table/PublisherIconTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->M:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 430
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "EDITION_CHUNK_FILES"

    const/16 v2, 0x27

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionChunkFileTable;->b()Lcom/snapchat/android/discover/model/database/table/EditionChunkFileTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->N:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 431
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "EDITION_VIEW_STATE"

    const/16 v2, 0x28

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;->b()Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->O:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 432
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "CHANNEL_VIEW_STATE"

    const/16 v2, 0x29

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;->b()Lcom/snapchat/android/discover/model/database/table/ChannelViewStateTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->P:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 433
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "DSNAP_VIEW_STATE"

    const/16 v2, 0x2a

    invoke-static {}, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable;->b()Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->Q:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 434
    new-instance v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    const-string v1, "PROFILE_IMAGE_FILE_TABLE"

    const/16 v2, 0x2b

    invoke-static {}, Lcom/snapchat/android/database/table/ProfileImageFileTable;->b()Lcom/snapchat/android/database/table/ProfileImageFileTable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->R:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 384
    const/16 v0, 0x2c

    new-array v0, v0, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    sget-object v1, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->a:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->b:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->c:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->d:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->e:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->f:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->g:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->h:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->i:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->j:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->k:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->l:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->m:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->n:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->o:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->p:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->q:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->r:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->s:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->t:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->u:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->v:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->w:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->x:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->y:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->z:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->A:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->B:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->C:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->D:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->E:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->F:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->G:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->H:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->I:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->J:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->K:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->L:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->M:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->N:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->O:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->P:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->Q:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->R:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->T:[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/snapchat/android/database/table/DbTable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/database/table/DbTable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 439
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 440
    iput-object p3, p0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->S:Lcom/snapchat/android/database/table/DbTable;

    .line 441
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/DbTable$DatabaseTable;
    .locals 1
    .parameter

    .prologue
    .line 384
    const-class v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->T:[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/table/DbTable;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->S:Lcom/snapchat/android/database/table/DbTable;

    return-object v0
.end method
