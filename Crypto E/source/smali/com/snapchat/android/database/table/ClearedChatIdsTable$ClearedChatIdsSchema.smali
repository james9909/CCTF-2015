.class public final enum Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/database/schema/Schema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/ClearedChatIdsTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClearedChatIdsSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;",
        ">;",
        "Lcom/snapchat/android/database/schema/Schema;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

.field public static final enum b:Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

.field public static final enum c:Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

.field private static final synthetic h:[Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;


# instance fields
.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/snapchat/android/database/DataType;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 156
    new-instance v0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    const-string v1, "ID"

    const-string v4, "_id"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    const-string v6, "PRIMARY_KEY"

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->a:Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    .line 157
    new-instance v3, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    const-string v4, "CONVERSATION_ID"

    const-string v7, "conversationId"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->b:Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    .line 158
    new-instance v3, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    const-string v4, "TIMESTAMP"

    const-string v7, "timestamp"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->c:Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    .line 155
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    sget-object v1, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->a:Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->b:Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    aput-object v1, v0, v9

    sget-object v1, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->c:Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    aput-object v1, v0, v10

    sput-object v0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->h:[Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

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
    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 167
    iput p3, p0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->d:I

    .line 168
    iput-object p4, p0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->e:Ljava/lang/String;

    .line 169
    iput-object p5, p0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->f:Lcom/snapchat/android/database/DataType;

    .line 170
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
    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 173
    iput p3, p0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->d:I

    .line 174
    iput-object p4, p0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->e:Ljava/lang/String;

    .line 175
    iput-object p5, p0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->f:Lcom/snapchat/android/database/DataType;

    .line 176
    iput-object p6, p0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->g:Ljava/lang/String;

    .line 177
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->f:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;
    .locals 1
    .parameter

    .prologue
    .line 155
    const-class v0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->h:[Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->f:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->d:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/snapchat/android/database/table/ClearedChatIdsTable$ClearedChatIdsSchema;->g:Ljava/lang/String;

    return-object v0
.end method
