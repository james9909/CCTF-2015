.class public final enum Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/database/schema/Schema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/SentSnapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SnapSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;",
        ">;",
        "Lcom/snapchat/android/database/schema/Schema;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

.field public static final enum b:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

.field public static final enum c:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

.field public static final enum d:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

.field public static final enum e:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

.field public static final enum f:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

.field public static final enum g:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

.field public static final enum h:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

.field public static final enum i:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

.field public static final enum j:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

.field public static final enum k:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

.field public static final enum l:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

.field public static final enum m:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

.field private static final synthetic r:[Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;


# instance fields
.field private n:I

.field private o:Ljava/lang/String;

.field private p:Lcom/snapchat/android/database/DataType;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 119
    new-instance v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    const-string v1, "ID"

    const-string v4, "_id"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    const-string v6, "PRIMARY KEY"

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->a:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    .line 120
    new-instance v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    const-string v4, "CLIENT_ID"

    const-string v7, "ClientId"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    .line 121
    new-instance v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    const-string v4, "TIMESTAMP"

    const-string v7, "Timestamp"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    .line 122
    new-instance v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    const-string v4, "MEDIA_TYPE"

    const-string v7, "MediaType"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    move v5, v11

    move v6, v11

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->d:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    .line 123
    new-instance v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    const-string v4, "STATUS"

    const-string v7, "Status"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    move v5, v12

    move v6, v12

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->e:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    .line 124
    new-instance v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    const-string v4, "RECIPIENT"

    const/4 v5, 0x5

    const/4 v6, 0x5

    const-string v7, "Recipient"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->f:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    .line 125
    new-instance v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    const-string v4, "DISPLAY_TIME"

    const/4 v5, 0x6

    const/4 v6, 0x6

    const-string v7, "DisplayTime"

    sget-object v8, Lcom/snapchat/android/database/DataType;->e:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->g:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    .line 126
    new-instance v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    const-string v4, "URI"

    const/4 v5, 0x7

    const/4 v6, 0x7

    const-string v7, "Uri"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->h:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    .line 127
    new-instance v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    const-string v4, "TIME_OF_LAST_SEND_ATTEMPT"

    const/16 v5, 0x8

    const/16 v6, 0x8

    const-string v7, "TimeOfLastSendAttempt"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->i:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    .line 128
    new-instance v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    const-string v4, "IS_ZIPPED"

    const/16 v5, 0x9

    const/16 v6, 0x9

    const-string v7, "IsZipped"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->j:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    .line 129
    new-instance v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    const-string v4, "CONVERSATION_ID"

    const/16 v5, 0xa

    const/16 v6, 0xa

    const-string v7, "ConversationId"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->k:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    .line 130
    new-instance v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    const-string v4, "SENT_TIMESTAMP"

    const/16 v5, 0xb

    const/16 v6, 0xb

    const-string v7, "SentTimestamp"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->l:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    .line 131
    new-instance v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    const-string v4, "TARGET_VIEW"

    const/16 v5, 0xc

    const/16 v6, 0xc

    const-string v7, "TargetView"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->m:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    .line 118
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    sget-object v1, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->a:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->b:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    aput-object v1, v0, v9

    sget-object v1, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->c:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    aput-object v1, v0, v10

    sget-object v1, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->d:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    aput-object v1, v0, v11

    sget-object v1, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->e:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->f:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->g:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->h:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->i:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->j:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->k:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->l:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->m:Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->r:[Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

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
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput p3, p0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->n:I

    .line 141
    iput-object p4, p0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->o:Ljava/lang/String;

    .line 142
    iput-object p5, p0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->p:Lcom/snapchat/android/database/DataType;

    .line 143
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
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    iput p3, p0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->n:I

    .line 147
    iput-object p4, p0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->o:Ljava/lang/String;

    .line 148
    iput-object p5, p0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->p:Lcom/snapchat/android/database/DataType;

    .line 149
    iput-object p6, p0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->q:Ljava/lang/String;

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->p:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;
    .locals 1
    .parameter

    .prologue
    .line 118
    const-class v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->r:[Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->p:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->n:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->o:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/snapchat/android/database/table/SentSnapTable$SnapSchema;->q:Ljava/lang/String;

    return-object v0
.end method
