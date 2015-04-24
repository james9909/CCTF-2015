.class public final enum Lcom/snapchat/android/database/DataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/database/DataType;

.field public static final enum b:Lcom/snapchat/android/database/DataType;

.field public static final enum c:Lcom/snapchat/android/database/DataType;

.field public static final enum d:Lcom/snapchat/android/database/DataType;

.field public static final enum e:Lcom/snapchat/android/database/DataType;

.field private static final synthetic g:[Lcom/snapchat/android/database/DataType;


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/snapchat/android/database/DataType;

    const-string v1, "TEXT"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v3, v2}, Lcom/snapchat/android/database/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    .line 8
    new-instance v0, Lcom/snapchat/android/database/DataType;

    const-string v1, "INTEGER"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/database/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    .line 9
    new-instance v0, Lcom/snapchat/android/database/DataType;

    const-string v1, "LONG"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v5, v2}, Lcom/snapchat/android/database/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/DataType;->c:Lcom/snapchat/android/database/DataType;

    .line 10
    new-instance v0, Lcom/snapchat/android/database/DataType;

    const-string v1, "BOOLEAN"

    const-string v2, "INTEGER"

    invoke-direct {v0, v1, v6, v2}, Lcom/snapchat/android/database/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    .line 11
    new-instance v0, Lcom/snapchat/android/database/DataType;

    const-string v1, "REAL"

    const-string v2, "REAL"

    invoke-direct {v0, v1, v7, v2}, Lcom/snapchat/android/database/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/database/DataType;->e:Lcom/snapchat/android/database/DataType;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/database/DataType;

    sget-object v1, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/database/DataType;->c:Lcom/snapchat/android/database/DataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/database/DataType;->e:Lcom/snapchat/android/database/DataType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/snapchat/android/database/DataType;->g:[Lcom/snapchat/android/database/DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/snapchat/android/database/DataType;->f:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/DataType;
    .locals 1
    .parameter

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/database/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/database/DataType;->g:[Lcom/snapchat/android/database/DataType;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/DataType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/snapchat/android/database/DataType;->f:Ljava/lang/String;

    return-object v0
.end method
