.class public final enum Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/database/schema/Schema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/database/table/EditionChunkTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EditionChunkSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;",
        ">;",
        "Lcom/snapchat/android/database/schema/Schema;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum b:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum c:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum d:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum e:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum f:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum g:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum h:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum i:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field public static final enum j:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

.field private static final synthetic n:[Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;


# instance fields
.field private k:Ljava/lang/String;

.field private l:Lcom/snapchat/android/database/DataType;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "ID"

    const-string v3, "_id"

    sget-object v4, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    const-string v5, "PRIMARY KEY"

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->a:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 63
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "EDITION_ID"

    const-string v3, "edition_id"

    sget-object v4, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v6, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->b:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 64
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "URL"

    const-string v3, "url"

    sget-object v4, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v7, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->c:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 65
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "HASH"

    const-string v3, "hash"

    sget-object v4, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v8, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->d:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 66
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "COLOR"

    const-string v3, "color"

    sget-object v4, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v9, v3, v4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->e:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 67
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "AD_TYPE"

    const/4 v3, 0x5

    const-string v4, "ad_type"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->f:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 68
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "AD_POSITION"

    const/4 v3, 0x6

    const-string v4, "ad_position"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->g:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 69
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "POSITION"

    const/4 v3, 0x7

    const-string v4, "position"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->h:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 70
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "ACTIVE"

    const/16 v3, 0x8

    const-string v4, "active"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->i:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 71
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    const-string v1, "SHAREABLE"

    const/16 v3, 0x9

    const-string v4, "shareable"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->j:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    .line 60
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->a:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->b:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->c:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->d:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v1, v0, v8

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->e:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->f:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->g:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->h:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->i:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->j:Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->n:[Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-object p3, p0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->k:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->l:Lcom/snapchat/android/database/DataType;

    .line 81
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
    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    .line 85
    iput-object p5, p0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->m:Ljava/lang/String;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->l:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;
    .locals 1
    .parameter

    .prologue
    .line 60
    const-class v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->n:[Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->l:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->ordinal()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->k:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/EditionChunkTable$EditionChunkSchema;->m:Ljava/lang/String;

    return-object v0
.end method
