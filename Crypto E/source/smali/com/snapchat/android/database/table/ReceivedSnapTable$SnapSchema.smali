.class public final enum Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/database/schema/Schema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/ReceivedSnapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SnapSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;",
        ">;",
        "Lcom/snapchat/android/database/schema/Schema;"
    }
.end annotation


# static fields
.field private static final synthetic A:[Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum a:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum b:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum c:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum d:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum e:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum f:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum g:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum h:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum i:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum j:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum k:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum l:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum m:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum n:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum o:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum p:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum q:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum r:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum s:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum t:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum u:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

.field public static final enum v:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;


# instance fields
.field private w:I

.field private x:Ljava/lang/String;

.field private y:Lcom/snapchat/android/database/DataType;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 124
    new-instance v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v1, "ID"

    const-string v4, "_id"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    const-string v6, "PRIMARY KEY"

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->a:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 125
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "TIMESTAMP"

    const-string v7, "Timestamp"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 126
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "MEDIA_TYPE"

    const-string v7, "MediaType"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 127
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "IS_ZIPPED"

    const-string v7, "IsZipped"

    sget-object v8, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->d:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 128
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "STATUS"

    const-string v7, "Status"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->e:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 129
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "SENDER"

    const/4 v5, 0x5

    const/4 v6, 0x5

    const-string v7, "Sender"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->f:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 130
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "DISPLAY_TIME"

    const/4 v5, 0x6

    const/4 v6, 0x6

    const-string v7, "DisplayTime"

    sget-object v8, Lcom/snapchat/android/database/DataType;->e:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->g:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 131
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "CAPTION_TEXT"

    const/4 v5, 0x7

    const/4 v6, 0x7

    const-string v7, "CaptionText"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->h:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 132
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "CAPTION_ORIENTATION"

    const/16 v5, 0x8

    const/16 v6, 0x8

    const-string v7, "CaptionOrientation"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->i:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 133
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "CAPTION_POSITION"

    const/16 v5, 0x9

    const/16 v6, 0x9

    const-string v7, "CaptionPosition"

    sget-object v8, Lcom/snapchat/android/database/DataType;->e:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->j:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 137
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "IS_VIEWED"

    const/16 v5, 0xa

    const/16 v6, 0xa

    const-string v7, "IsViewed"

    sget-object v8, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->k:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 138
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "IS_SCREENSHOTTED"

    const/16 v5, 0xb

    const/16 v6, 0xb

    const-string v7, "IsScreenshotted"

    sget-object v8, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->l:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 140
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "IS_UPDATED"

    const/16 v5, 0xc

    const/16 v6, 0xc

    const-string v7, "IsUpdated"

    sget-object v8, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->m:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 141
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "VIEWED_TIMESTAMP"

    const/16 v5, 0xd

    const/16 v6, 0xd

    const-string v7, "ViewedTimestamp"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->n:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 142
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "CONVERSATION_ID"

    const/16 v5, 0xe

    const/16 v6, 0xe

    const-string v7, "ConversationId"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->o:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 143
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "SENT_TIMESTAMP"

    const/16 v5, 0xf

    const/16 v6, 0xf

    const-string v7, "SentTimestamp"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->p:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 144
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "TARGET_VIEW"

    const/16 v5, 0x10

    const/16 v6, 0x10

    const-string v7, "TargetView"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->q:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 145
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "BROADCAST_MEDIA_URL"

    const/16 v5, 0x11

    const/16 v6, 0x11

    const-string v7, "BroadcastMediaUrl"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->r:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 146
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "BROADCAST_URL"

    const/16 v5, 0x12

    const/16 v6, 0x12

    const-string v7, "BroadcastUrl"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->s:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 147
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "BROADCAST_TEXT"

    const/16 v5, 0x13

    const/16 v6, 0x13

    const-string v7, "BroadcastText"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->t:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 148
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "BROADCAST_HIDE_TIMER"

    const/16 v5, 0x14

    const/16 v6, 0x14

    const-string v7, "BroadcastHideTimer"

    sget-object v8, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->u:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 149
    new-instance v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    const-string v4, "FILTER_ID"

    const/16 v5, 0x15

    const/16 v6, 0x15

    const-string v7, "FilterId"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->v:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    .line 122
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    sget-object v1, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->a:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->b:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v1, v0, v9

    sget-object v1, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->c:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v1, v0, v10

    sget-object v1, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->d:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v1, v0, v11

    sget-object v1, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->e:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->f:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->g:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->h:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->i:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->j:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->k:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->l:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->m:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->n:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->o:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->p:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->q:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->r:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->s:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->t:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->u:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->v:Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->A:[Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

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
    .line 157
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 158
    iput p3, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->w:I

    .line 159
    iput-object p4, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->x:Ljava/lang/String;

    .line 160
    iput-object p5, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->y:Lcom/snapchat/android/database/DataType;

    .line 161
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V
    .locals 0
    .parameter
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
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 164
    iput p3, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->w:I

    .line 165
    iput-object p4, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->x:Ljava/lang/String;

    .line 166
    iput-object p5, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->y:Lcom/snapchat/android/database/DataType;

    .line 167
    iput-object p6, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->z:Ljava/lang/String;

    .line 168
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->y:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;
    .locals 1
    .parameter

    .prologue
    .line 122
    const-class v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->A:[Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->y:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->w:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->x:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/snapchat/android/database/table/ReceivedSnapTable$SnapSchema;->z:Ljava/lang/String;

    return-object v0
.end method
