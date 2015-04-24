.class public final enum Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/database/schema/Schema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PublisherChannelSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;",
        ">;",
        "Lcom/snapchat/android/database/schema/Schema;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum b:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum c:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum d:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum e:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum f:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum g:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum h:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field public static final enum i:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

.field private static final synthetic m:[Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;


# instance fields
.field private j:Ljava/lang/String;

.field private k:Lcom/snapchat/android/database/DataType;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "NAME"

    const-string v3, "_id"

    sget-object v4, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    const-string v5, "PRIMARY KEY"

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->a:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 61
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "PRIMARY_COLOR"

    const-string v3, "primary_color"

    sget-object v4, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v6, v3, v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->b:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 62
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "SECONDARY_COLOR"

    const-string v3, "secondary_color"

    sget-object v4, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v7, v3, v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->c:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 63
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "FILLED_ICON"

    const-string v3, "filled_icon"

    sget-object v4, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v8, v3, v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->d:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 64
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "INVERTED_ICON"

    const-string v3, "inverted_icon"

    sget-object v4, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v9, v3, v4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->e:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 65
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "LOADING_ICON"

    const/4 v3, 0x5

    const-string v4, "loading_icon"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->f:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 66
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "INTRO_MOVIE"

    const/4 v3, 0x6

    const-string v4, "intro_movie"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->g:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 67
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "POSITION"

    const/4 v3, 0x7

    const-string v4, "position"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->h:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 68
    new-instance v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    const-string v1, "ENABLED"

    const/16 v3, 0x8

    const-string v4, "enabled"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->i:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->a:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->b:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->c:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->d:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v1, v0, v8

    sget-object v1, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->e:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->f:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->g:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->h:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->i:Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->m:[Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-object p3, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->j:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->k:Lcom/snapchat/android/database/DataType;

    .line 78
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
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    .line 82
    iput-object p5, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->l:Ljava/lang/String;

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->k:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;
    .locals 1
    .parameter

    .prologue
    .line 57
    const-class v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->m:[Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->k:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->ordinal()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable$PublisherChannelSchema;->l:Ljava/lang/String;

    return-object v0
.end method
