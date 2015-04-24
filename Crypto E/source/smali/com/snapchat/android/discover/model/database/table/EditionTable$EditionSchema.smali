.class public final enum Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/database/schema/Schema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/database/table/EditionTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EditionSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;",
        ">;",
        "Lcom/snapchat/android/database/schema/Schema;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

.field public static final enum b:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

.field public static final enum c:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

.field public static final enum d:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

.field private static final synthetic h:[Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Lcom/snapchat/android/database/DataType;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    const-string v1, "ID"

    const-string v3, "_id"

    sget-object v4, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    const-string v5, "PRIMARY KEY"

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->a:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    .line 74
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    const-string v1, "PUBLISHER_NAME"

    const-string v3, "publisher_name"

    sget-object v4, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v6, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->b:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    .line 75
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    const-string v1, "TIME_ADDED"

    const-string v3, "time_added"

    sget-object v4, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v7, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->c:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    .line 76
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    const-string v1, "ACTIVE"

    const-string v3, "active"

    sget-object v4, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v8, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->d:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->a:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->b:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->c:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->d:Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    aput-object v1, v0, v8

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->h:[Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

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
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    iput-object p3, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->e:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->f:Lcom/snapchat/android/database/DataType;

    .line 86
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
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    .line 90
    iput-object p5, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->g:Ljava/lang/String;

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->f:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;
    .locals 1
    .parameter

    .prologue
    .line 71
    const-class v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->h:[Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->f:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->ordinal()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionTable$EditionSchema;->g:Ljava/lang/String;

    return-object v0
.end method
