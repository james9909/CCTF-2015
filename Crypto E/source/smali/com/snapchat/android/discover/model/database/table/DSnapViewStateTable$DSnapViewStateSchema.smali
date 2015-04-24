.class public final enum Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/database/schema/Schema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DSnapViewStateSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;",
        ">;",
        "Lcom/snapchat/android/database/schema/Schema;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;

.field public static final enum b:Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;

.field private static final synthetic f:[Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcom/snapchat/android/database/DataType;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;

    const-string v1, "ID"

    const-string v3, "_id"

    sget-object v4, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    const-string v5, "PRIMARY KEY"

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;->a:Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;

    .line 66
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;

    const-string v1, "TIME_LAST_VIEWED_MILLISECONDS"

    const-string v3, "time_last_viewed_milli"

    sget-object v4, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v6, v3, v4}, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;->b:Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;->a:Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;->b:Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;->f:[Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/database/DataType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;->c:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;->d:Lcom/snapchat/android/database/DataType;

    .line 76
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V
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
            "Lcom/snapchat/android/database/DataType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    .line 80
    iput-object p5, p0, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;->e:Ljava/lang/String;

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;->d:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;
    .locals 1
    .parameter

    .prologue
    .line 64
    const-class v0, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;->f:[Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;->d:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;->ordinal()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/DSnapViewStateTable$DSnapViewStateSchema;->e:Ljava/lang/String;

    return-object v0
.end method
