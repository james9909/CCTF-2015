.class public final enum Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/database/schema/Schema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/ConversationTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConversationSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;",
        ">;",
        "Lcom/snapchat/android/database/schema/Schema;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum b:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum c:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum d:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum e:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum f:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum g:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum h:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum i:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum j:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum k:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum l:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum m:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum n:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum o:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum p:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum q:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field public static final enum r:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

.field private static final synthetic w:[Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;


# instance fields
.field private s:I

.field private t:Ljava/lang/String;

.field private u:Lcom/snapchat/android/database/DataType;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v1, "ID"

    const-string v4, "_id"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    const-string v6, "PRIMARY KEY"

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->a:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 68
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "SENDER"

    const-string v7, "sender"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 69
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "RECIPIENT"

    const-string v7, "recipient"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 70
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "TIMESTAMP"

    const-string v7, "timestamp"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->d:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 71
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "HAS_UNVIEWED_CHATS"

    const-string v7, "has_unviewed_chats"

    sget-object v8, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->e:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 72
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "HAS_UNVIEWED_SNAPS"

    const/4 v5, 0x5

    const/4 v6, 0x5

    const-string v7, "has_unviewed_snaps"

    sget-object v8, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->f:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 73
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "HAS_UNVIEWED_AUDIO_SNAPS"

    const/4 v5, 0x6

    const/4 v6, 0x6

    const-string v7, "has_unviewed_audio_snap"

    sget-object v8, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->g:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 74
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "HAS_UNVIEWED_CASH"

    const/4 v5, 0x7

    const/4 v6, 0x7

    const-string v7, "has_unviewed_cash"

    sget-object v8, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->h:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 75
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "ITER_TOKEN"

    const/16 v5, 0x8

    const/16 v6, 0x8

    const-string v7, "iter_token"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->i:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 76
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "CHATS_ITER_TOKEN"

    const/16 v5, 0x9

    const/16 v6, 0x9

    const-string v7, "chats_iter_token"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->j:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 77
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "LAST_SEQ_NUM_OF_MY_CHAT_THEY_RELEASED"

    const/16 v5, 0xa

    const/16 v6, 0xa

    const-string v7, "last_seq_num_of_my_chat_they_released"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->k:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 78
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "LAST_SEQ_NUM_OF_THEIR_CHAT_I_RELEASED"

    const/16 v5, 0xb

    const/16 v6, 0xb

    const-string v7, "last_seq_num_of_their_chat_i_released"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->l:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 79
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "LAST_SEQ_NUM_OF_MY_CHAT_I_DELETED"

    const/16 v5, 0xc

    const/16 v6, 0xc

    const-string v7, "last_seq_num_of_my_chat_i_deleted"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->m:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 80
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "LAST_SEQ_NUM_OF_THEIR_CHAT_I_DELETED"

    const/16 v5, 0xd

    const/16 v6, 0xd

    const-string v7, "last_seq_num_of_their_chat_i_deleted"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->n:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 81
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "LAST_TIMESTAMP_OF_SENT_SNAP_READ_RECEIPT_I_DELETED"

    const/16 v5, 0xe

    const/16 v6, 0xe

    const-string v7, "last_timestamp_of_sent_snap_read_receipt_i_deleted"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->o:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 83
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "LAST_TIMESTAMP_OF_RECEIVED_SNAP_READ_RECEIPT_I_DELETED"

    const/16 v5, 0xf

    const/16 v6, 0xf

    const-string v7, "last_timestamp_of_received_snap_read_receipt_i_deleted"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->p:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 85
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "MY_LAST_SEQ_NUM"

    const/16 v5, 0x10

    const/16 v6, 0x10

    const-string v7, "my_last_seq_num"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->q:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 86
    new-instance v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    const-string v4, "THEIR_LAST_SEQ_NUM"

    const/16 v5, 0x11

    const/16 v6, 0x11

    const-string v7, "their_last_seq_num"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->r:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    .line 66
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    sget-object v1, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->a:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->b:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v1, v0, v9

    sget-object v1, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->c:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v1, v0, v10

    sget-object v1, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->d:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v1, v0, v11

    sget-object v1, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->e:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->f:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->g:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->h:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->i:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->j:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->k:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->l:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->m:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->n:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->o:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->p:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->q:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->r:Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->w:[Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput p3, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->s:I

    .line 96
    iput-object p4, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->t:Ljava/lang/String;

    .line 97
    iput-object p5, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->u:Lcom/snapchat/android/database/DataType;

    .line 98
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
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput p3, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->s:I

    .line 102
    iput-object p4, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->t:Ljava/lang/String;

    .line 103
    iput-object p5, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->u:Lcom/snapchat/android/database/DataType;

    .line 104
    iput-object p6, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->v:Ljava/lang/String;

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->u:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;
    .locals 1
    .parameter

    .prologue
    .line 66
    const-class v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->w:[Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->u:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->s:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->t:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/snapchat/android/database/table/ConversationTable$ConversationSchema;->v:Ljava/lang/String;

    return-object v0
.end method
