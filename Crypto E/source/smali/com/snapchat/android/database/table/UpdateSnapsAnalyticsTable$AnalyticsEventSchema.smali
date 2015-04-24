.class public final enum Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/database/schema/Schema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnalyticsEventSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;",
        ">;",
        "Lcom/snapchat/android/database/schema/Schema;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

.field public static final enum b:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

.field public static final enum c:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

.field private static final synthetic g:[Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;


# instance fields
.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/snapchat/android/database/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v3, 0x1

    .line 96
    new-instance v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    const-string v1, "EVENT_NAME"

    const-string v4, "EventName"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->a:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    .line 98
    new-instance v4, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    const-string v5, "EVENT_PARAMETERS"

    const-string v8, "EventParameters"

    sget-object v9, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    move v6, v3

    invoke-direct/range {v4 .. v9}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v4, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->b:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    .line 100
    new-instance v5, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    const-string v6, "EVENT_TIMESTAMP"

    const-string v9, "EventTimestamp"

    sget-object v10, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    move v8, v11

    invoke-direct/range {v5 .. v10}, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v5, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->c:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    .line 94
    new-array v0, v11, [Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->a:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->b:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->c:Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    aput-object v1, v0, v7

    sput-object v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->g:[Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

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
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput p3, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->d:I

    .line 109
    iput-object p4, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->e:Ljava/lang/String;

    .line 110
    iput-object p5, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->f:Lcom/snapchat/android/database/DataType;

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->f:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;
    .locals 1
    .parameter

    .prologue
    .line 94
    const-class v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->g:[Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->f:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->d:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/snapchat/android/database/table/UpdateSnapsAnalyticsTable$AnalyticsEventSchema;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method
