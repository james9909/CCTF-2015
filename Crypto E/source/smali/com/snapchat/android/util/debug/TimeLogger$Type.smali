.class final enum Lcom/snapchat/android/util/debug/TimeLogger$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/debug/TimeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/debug/TimeLogger$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/util/debug/TimeLogger$Type;

.field public static final enum b:Lcom/snapchat/android/util/debug/TimeLogger$Type;

.field public static final enum c:Lcom/snapchat/android/util/debug/TimeLogger$Type;

.field private static final synthetic d:[Lcom/snapchat/android/util/debug/TimeLogger$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/snapchat/android/util/debug/TimeLogger$Type;

    const-string v1, "BEGIN"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/debug/TimeLogger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/debug/TimeLogger$Type;->a:Lcom/snapchat/android/util/debug/TimeLogger$Type;

    .line 26
    new-instance v0, Lcom/snapchat/android/util/debug/TimeLogger$Type;

    const-string v1, "END"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/debug/TimeLogger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/debug/TimeLogger$Type;->b:Lcom/snapchat/android/util/debug/TimeLogger$Type;

    .line 27
    new-instance v0, Lcom/snapchat/android/util/debug/TimeLogger$Type;

    const-string v1, "ONE_TIME_EVENT"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/debug/TimeLogger$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/debug/TimeLogger$Type;->c:Lcom/snapchat/android/util/debug/TimeLogger$Type;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/util/debug/TimeLogger$Type;

    sget-object v1, Lcom/snapchat/android/util/debug/TimeLogger$Type;->a:Lcom/snapchat/android/util/debug/TimeLogger$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/debug/TimeLogger$Type;->b:Lcom/snapchat/android/util/debug/TimeLogger$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/debug/TimeLogger$Type;->c:Lcom/snapchat/android/util/debug/TimeLogger$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/util/debug/TimeLogger$Type;->d:[Lcom/snapchat/android/util/debug/TimeLogger$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/debug/TimeLogger$Type;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/snapchat/android/util/debug/TimeLogger$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/debug/TimeLogger$Type;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/debug/TimeLogger$Type;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/snapchat/android/util/debug/TimeLogger$Type;->d:[Lcom/snapchat/android/util/debug/TimeLogger$Type;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/debug/TimeLogger$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/debug/TimeLogger$Type;

    return-object v0
.end method
