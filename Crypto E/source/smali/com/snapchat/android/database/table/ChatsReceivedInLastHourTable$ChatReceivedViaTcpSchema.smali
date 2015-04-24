.class public final enum Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/database/schema/Schema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChatReceivedViaTcpSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;",
        ">;",
        "Lcom/snapchat/android/database/schema/Schema;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

.field public static final enum b:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

.field public static final enum c:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

.field private static final synthetic h:[Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;


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

    .line 129
    new-instance v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    const-string v1, "ID"

    const-string v4, "_id"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    const-string v6, "PRIMARY_KEY"

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->a:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    .line 130
    new-instance v3, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    const-string v4, "TIMESTAMP"

    const-string v7, "timestamp"

    sget-object v8, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    move v5, v9

    move v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->b:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    .line 131
    new-instance v3, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    const-string v4, "SENDER_USERNAME"

    const-string v7, "sender_username"

    sget-object v8, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v3, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->c:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    sget-object v1, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->a:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->b:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    aput-object v1, v0, v9

    sget-object v1, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->c:Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    aput-object v1, v0, v10

    sput-object v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->h:[Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

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
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput p3, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->d:I

    .line 141
    iput-object p4, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->e:Ljava/lang/String;

    .line 142
    iput-object p5, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->f:Lcom/snapchat/android/database/DataType;

    .line 143
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
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    iput p3, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->d:I

    .line 147
    iput-object p4, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->e:Ljava/lang/String;

    .line 148
    iput-object p5, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->f:Lcom/snapchat/android/database/DataType;

    .line 149
    iput-object p6, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->g:Ljava/lang/String;

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->f:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;
    .locals 1
    .parameter

    .prologue
    .line 128
    const-class v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->h:[Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->f:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->d:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/snapchat/android/database/table/ChatsReceivedInLastHourTable$ChatReceivedViaTcpSchema;->g:Ljava/lang/String;

    return-object v0
.end method
