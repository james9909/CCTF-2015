.class public final enum Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/database/schema/Schema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EditionViewStateSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;",
        ">;",
        "Lcom/snapchat/android/database/schema/Schema;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

.field public static final enum b:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

.field public static final enum c:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

.field private static final synthetic g:[Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/snapchat/android/database/DataType;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    const-string v1, "ID"

    const-string v3, "_id"

    sget-object v4, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    const-string v5, "PRIMARY KEY"

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->a:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    .line 66
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    const-string v1, "LAST_INDEX_VIEWED"

    const-string v3, "last_index_viewed"

    sget-object v4, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v6, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->b:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    .line 67
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    const-string v1, "VIEWED_ALL_DSNAPS"

    const-string v3, "viewed_all_dsnaps"

    sget-object v4, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v7, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->c:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->a:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->b:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->c:Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    aput-object v1, v0, v7

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->g:[Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-object p3, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->d:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->e:Lcom/snapchat/android/database/DataType;

    .line 77
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
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    .line 81
    iput-object p5, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->f:Ljava/lang/String;

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->e:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;
    .locals 1
    .parameter

    .prologue
    .line 64
    const-class v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->g:[Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->e:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->ordinal()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionViewStateTable$EditionViewStateSchema;->f:Ljava/lang/String;

    return-object v0
.end method