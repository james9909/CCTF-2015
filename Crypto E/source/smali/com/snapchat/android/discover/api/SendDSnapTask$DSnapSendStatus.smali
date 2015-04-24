.class public final enum Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/api/SendDSnapTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DSnapSendStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UNSEND"
    .end annotation
.end field

.field public static final enum b:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SUCCESS"
    .end annotation
.end field

.field public static final enum c:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FAILED_NOT_A_FRIEND"
    .end annotation
.end field

.field public static final enum d:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FAILED_TRANSIENT"
    .end annotation
.end field

.field public static final enum e:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "FAILED_INVALID_SEQUENCE"
    .end annotation
.end field

.field public static final enum f:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

.field private static final synthetic g:[Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    const-string v1, "UNSEND"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->a:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    .line 54
    new-instance v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->b:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    .line 56
    new-instance v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    const-string v1, "FAILED_NOT_A_FRIEND"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->c:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    .line 58
    new-instance v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    const-string v1, "FAILED_TRANSIENT"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->d:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    .line 60
    new-instance v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    const-string v1, "FAILED_INVALID_SEQUENCE"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->e:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    .line 62
    new-instance v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    const-string v1, "NO_NETWORK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->f:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    sget-object v1, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->a:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->b:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->c:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->d:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->e:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->f:Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->g:[Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;
    .locals 1
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->g:[Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/api/SendDSnapTask$DSnapSendStatus;

    return-object v0
.end method
