.class public final enum Lcom/snapchat/android/database/schema/HttpMetricSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/database/schema/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/schema/HttpMetricSchema;",
        ">;",
        "Lcom/snapchat/android/database/schema/Schema;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/database/schema/HttpMetricSchema;

.field public static final enum b:Lcom/snapchat/android/database/schema/HttpMetricSchema;

.field public static final enum c:Lcom/snapchat/android/database/schema/HttpMetricSchema;

.field public static final enum d:Lcom/snapchat/android/database/schema/HttpMetricSchema;

.field public static final enum e:Lcom/snapchat/android/database/schema/HttpMetricSchema;

.field public static final enum f:Lcom/snapchat/android/database/schema/HttpMetricSchema;

.field public static final enum g:Lcom/snapchat/android/database/schema/HttpMetricSchema;

.field public static final enum h:Lcom/snapchat/android/database/schema/HttpMetricSchema;

.field public static final enum i:Lcom/snapchat/android/database/schema/HttpMetricSchema;

.field private static final synthetic m:[Lcom/snapchat/android/database/schema/HttpMetricSchema;


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

    .line 10
    new-instance v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;

    const-string v1, "ID"

    const-string v3, "_id"

    sget-object v4, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    const-string v5, "PRIMARY KEY AUTOINCREMENT"

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/schema/HttpMetricSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->a:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    .line 11
    new-instance v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;

    const-string v1, "TIMESTAMP"

    const-string v3, "timestamp"

    sget-object v4, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v6, v3, v4}, Lcom/snapchat/android/database/schema/HttpMetricSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->b:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    .line 12
    new-instance v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;

    const-string v1, "METHOD"

    const-string v3, "method"

    sget-object v4, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v7, v3, v4}, Lcom/snapchat/android/database/schema/HttpMetricSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->c:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    .line 13
    new-instance v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;

    const-string v1, "PATH"

    const-string v3, "path"

    sget-object v4, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v8, v3, v4}, Lcom/snapchat/android/database/schema/HttpMetricSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->d:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    .line 14
    new-instance v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;

    const-string v1, "SENT_BYTES"

    const-string v3, "sent_bytes"

    sget-object v4, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v9, v3, v4}, Lcom/snapchat/android/database/schema/HttpMetricSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->e:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    .line 15
    new-instance v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;

    const-string v1, "RECEIVED_BYTES"

    const/4 v3, 0x5

    const-string v4, "received_bytes"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/database/schema/HttpMetricSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->f:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    .line 16
    new-instance v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;

    const-string v1, "DURATION"

    const/4 v3, 0x6

    const-string v4, "duration"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/database/schema/HttpMetricSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->g:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    .line 17
    new-instance v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;

    const-string v1, "STATUS_LINE"

    const/4 v3, 0x7

    const-string v4, "status_line"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/database/schema/HttpMetricSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->h:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    .line 18
    new-instance v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;

    const-string v1, "STATUS_CODE"

    const/16 v3, 0x8

    const-string v4, "status_code"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/snapchat/android/database/schema/HttpMetricSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->i:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    .line 8
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/snapchat/android/database/schema/HttpMetricSchema;

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->a:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->b:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->c:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->d:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    aput-object v1, v0, v8

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->e:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/database/schema/HttpMetricSchema;->f:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/schema/HttpMetricSchema;->g:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/schema/HttpMetricSchema;->h:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/database/schema/HttpMetricSchema;->i:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->m:[Lcom/snapchat/android/database/schema/HttpMetricSchema;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->j:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->k:Lcom/snapchat/android/database/DataType;

    .line 28
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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->j:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->k:Lcom/snapchat/android/database/DataType;

    .line 33
    iput-object p5, p0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->l:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/schema/HttpMetricSchema;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/schema/HttpMetricSchema;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->m:[Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/schema/HttpMetricSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/schema/HttpMetricSchema;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->k:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->ordinal()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/snapchat/android/database/schema/HttpMetricSchema;->l:Ljava/lang/String;

    return-object v0
.end method
