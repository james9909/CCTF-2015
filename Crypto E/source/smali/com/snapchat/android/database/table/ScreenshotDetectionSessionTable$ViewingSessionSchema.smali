.class public final enum Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/database/schema/Schema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewingSessionSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;",
        ">;",
        "Lcom/snapchat/android/database/schema/Schema;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

.field public static final enum b:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

.field public static final enum c:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

.field public static final enum d:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

.field public static final enum e:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

.field private static final synthetic i:[Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;


# instance fields
.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/snapchat/android/database/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x4

    const/4 v15, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    .line 110
    new-instance v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    const-string v1, "SENDER"

    const-string v4, "Sender"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->a:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    .line 112
    new-instance v4, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    const-string v5, "START_TIME"

    const-string v8, "StartTime"

    sget-object v9, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    move v6, v3

    invoke-direct/range {v4 .. v9}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v4, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->b:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    .line 114
    new-instance v5, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    const-string v6, "END_TIME"

    const-string v9, "EndTime"

    sget-object v10, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    move v8, v15

    invoke-direct/range {v5 .. v10}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v5, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->c:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    .line 116
    new-instance v8, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    const-string v9, "TYPE"

    const-string v12, "Type"

    sget-object v13, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    move v10, v15

    invoke-direct/range {v8 .. v13}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v8, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->d:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    .line 118
    new-instance v9, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    const-string v10, "EXTRA"

    const/4 v12, 0x5

    const-string v13, "Extra"

    sget-object v14, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v9 .. v14}, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v9, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->e:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    .line 108
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    sget-object v1, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->a:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->b:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->c:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->d:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    aput-object v1, v0, v15

    sget-object v1, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->e:Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    aput-object v1, v0, v11

    sput-object v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->i:[Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

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
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 126
    iput p3, p0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->f:I

    .line 127
    iput-object p4, p0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->g:Ljava/lang/String;

    .line 128
    iput-object p5, p0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->h:Lcom/snapchat/android/database/DataType;

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->h:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;
    .locals 1
    .parameter

    .prologue
    .line 108
    const-class v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->i:[Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->h:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->f:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/snapchat/android/database/table/ScreenshotDetectionSessionTable$ViewingSessionSchema;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method
