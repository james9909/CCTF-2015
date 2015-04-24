.class public final enum Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/database/schema/Schema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/SnapbryoTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SnapbryoSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;",
        ">;",
        "Lcom/snapchat/android/database/schema/Schema;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum b:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum c:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum d:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum e:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum f:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum g:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum h:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum i:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum j:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum k:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum l:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum m:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum n:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field public static final enum o:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

.field private static final synthetic s:[Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;


# instance fields
.field private p:I

.field private q:Ljava/lang/String;

.field private r:Lcom/snapchat/android/database/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 92
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "CLIENT_ID"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ClientId"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->a:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 94
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "TIME"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "Time"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 96
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "VIDEO_URI"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "VideoUri"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->c:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 98
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "RECIPIENTS"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-string v4, "Recipients"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->d:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 100
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "STORY_GROUPS"

    const/4 v2, 0x4

    const/4 v3, 0x5

    const-string v4, "StoryGroups"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->e:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 102
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "UPLOAD_STATUS"

    const/4 v2, 0x5

    const/4 v3, 0x6

    const-string v4, "UploadStatus"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->f:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 104
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "SEND_STATUS"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "SendStatus"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->g:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 106
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "POST_STATUS"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "PostStatus"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->h:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 108
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "IS_MUTED"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "IsMuted"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->i:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 110
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "IS_ZIP_UPLOAD"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "HasBeenZipped"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->j:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 112
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "TIMER_VALUE"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "TimerValueOrDuration"

    sget-object v5, Lcom/snapchat/android/database/DataType;->e:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->k:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 114
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "CAPTION_TEXT"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "CaptionText"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->l:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 116
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "TIME_OF_FIRST_ATTEMPT"

    const/16 v2, 0xc

    const/16 v3, 0xd

    const-string v4, "TimeOfFirstAttempt"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->m:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 118
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "TIME_OF_LAST_ATTEMPT"

    const/16 v2, 0xd

    const/16 v3, 0xe

    const-string v4, "TimeOfLastAttempt"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->n:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 120
    new-instance v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const-string v1, "RETRIED"

    const/16 v2, 0xe

    const/16 v3, 0xf

    const-string v4, "Retried"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->o:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    .line 91
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->a:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->c:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->d:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->e:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->f:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->g:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->h:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->i:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->j:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->k:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->l:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->m:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->n:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->o:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->s:[Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

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
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput p3, p0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->p:I

    .line 129
    iput-object p4, p0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->q:Ljava/lang/String;

    .line 130
    iput-object p5, p0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->r:Lcom/snapchat/android/database/DataType;

    .line 131
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->r:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;
    .locals 1
    .parameter

    .prologue
    .line 91
    const-class v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->s:[Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->r:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->p:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->q:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method
