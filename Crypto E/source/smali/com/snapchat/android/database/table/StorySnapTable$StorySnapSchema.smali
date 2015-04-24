.class public final enum Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/database/schema/Schema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/StorySnapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorySnapSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;",
        ">;",
        "Lcom/snapchat/android/database/schema/Schema;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field private static final synthetic E:[Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum a:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum b:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum c:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum d:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum e:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum f:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum g:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum h:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum i:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum j:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum k:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum l:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum m:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum n:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum o:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum p:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum q:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum r:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum s:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum t:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum u:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum v:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum w:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum x:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum y:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

.field public static final enum z:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;


# instance fields
.field private B:I

.field private C:Ljava/lang/String;

.field private D:Lcom/snapchat/android/database/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 150
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "STORY_SNAP_ID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "StorySnapId"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->a:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 152
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "CLIENT_ID"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "ClientId"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 154
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "MEDIA_ID"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "MediaId"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->c:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 156
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "TIMESTAMP"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-string v4, "Timestamp"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->d:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 158
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "MEDIA_TYPE"

    const/4 v2, 0x4

    const/4 v3, 0x5

    const-string v4, "MediaType"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->e:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 160
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "MEDIA_URL"

    const/4 v2, 0x5

    const/4 v3, 0x6

    const-string v4, "MediaUrl"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->f:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 162
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "THUMBNAIL_URL"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "ThumbnailUrl"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->g:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 164
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "STATUS"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "Status"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->h:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 166
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "USERNAME"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "Username"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->i:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 168
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "DISPLAY_TIME"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "DisplayTime"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->j:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 170
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "CAPTION_TEXT"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "CaptionText"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->k:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 172
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "CAPTION_ORIENTATION"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "CaptionOrientation"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->l:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 174
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "CAPTION_POSITION"

    const/16 v2, 0xc

    const/16 v3, 0xd

    const-string v4, "CaptionPosition"

    sget-object v5, Lcom/snapchat/android/database/DataType;->e:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->m:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 176
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "IS_VIEWED"

    const/16 v2, 0xd

    const/16 v3, 0xe

    const-string v4, "IsViewed"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->n:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 178
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "IS_SCREENSHOTTED"

    const/16 v2, 0xe

    const/16 v3, 0xf

    const-string v4, "IsScreenshotted"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->o:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 180
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "VIEWED_TIMESTAMP"

    const/16 v2, 0xf

    const/16 v3, 0x10

    const-string v4, "ViewedTimestamp"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->p:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 182
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "IS_UPDATED"

    const/16 v2, 0x10

    const/16 v3, 0x11

    const-string v4, "IsUpdated"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->q:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 184
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "IS_FAILED"

    const/16 v2, 0x11

    const/16 v3, 0x12

    const-string v4, "IsFailed"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->r:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 186
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "IS_ZIPPED"

    const/16 v2, 0x12

    const/16 v3, 0x13

    const-string v4, "IsZipped"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->s:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 188
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "FILTER_ID"

    const/16 v2, 0x13

    const/16 v3, 0x14

    const-string v4, "FilterId"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->t:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 190
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "WAS_404_RESPONSE_RECEIVED"

    const/16 v2, 0x14

    const/16 v3, 0x15

    const-string v4, "Was404ResponseReceived"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->u:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 192
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "STORY_ID"

    const/16 v2, 0x15

    const/16 v3, 0x16

    const-string v4, "StoryId"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->v:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 194
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "IS_SHARED"

    const/16 v2, 0x16

    const/16 v3, 0x17

    const-string v4, "IsShared"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->w:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 196
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "SPONSORED_PREVIEW_DISPLAY_NAME"

    const/16 v2, 0x17

    const/16 v3, 0x18

    const-string v4, "SponsoredPreviewDisplayName"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->x:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 198
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "SPONSORED_POSTVIEW_DISPLAY_NAME"

    const/16 v2, 0x18

    const/16 v3, 0x19

    const-string v4, "SponsoredPostviewDisplayName"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->y:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 200
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "SPONSORED_SPONSOR"

    const/16 v2, 0x19

    const/16 v3, 0x1a

    const-string v4, "SponsoredSponsor"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->z:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 202
    new-instance v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const-string v1, "SPONSORED_TAG_URL"

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    const-string v4, "SponsoredTagUrl"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->A:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    .line 149
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->a:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->c:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->d:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->e:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->f:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->g:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->h:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->i:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->j:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->k:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->l:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->m:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->n:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->o:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->p:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->q:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->r:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->s:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->t:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->u:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->v:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->w:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->x:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->y:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->z:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->A:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->E:[Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/database/DataType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 211
    iput p3, p0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->B:I

    .line 212
    iput-object p4, p0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->C:Ljava/lang/String;

    .line 213
    iput-object p5, p0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->D:Lcom/snapchat/android/database/DataType;

    .line 214
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->D:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;
    .locals 1
    .parameter

    .prologue
    .line 149
    const-class v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->E:[Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->D:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->B:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->C:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return-object v0
.end method
