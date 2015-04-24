.class public final enum Lcom/snapchat/android/model/Mediabryo$SendStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/Mediabryo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SendStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/Mediabryo$SendStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/Mediabryo$SendStatus;

.field public static final enum FAILED:Lcom/snapchat/android/model/Mediabryo$SendStatus;

.field public static final enum SENDING:Lcom/snapchat/android/model/Mediabryo$SendStatus;

.field public static final enum SENDING_ON_UPLOAD:Lcom/snapchat/android/model/Mediabryo$SendStatus;

.field public static final enum SENT:Lcom/snapchat/android/model/Mediabryo$SendStatus;

.field public static final enum UNSENT:Lcom/snapchat/android/model/Mediabryo$SendStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;

    const-string v1, "UNSENT"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/Mediabryo$SendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->UNSENT:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    .line 48
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;

    const-string v1, "SENDING"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/Mediabryo$SendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->SENDING:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    .line 51
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;

    const-string v1, "SENDING_ON_UPLOAD"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/Mediabryo$SendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->SENDING_ON_UPLOAD:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    .line 53
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/model/Mediabryo$SendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->SENT:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    .line 55
    new-instance v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/model/Mediabryo$SendStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/model/Mediabryo$SendStatus;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SendStatus;->UNSENT:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SendStatus;->SENDING:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SendStatus;->SENDING_ON_UPLOAD:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SendStatus;->SENT:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$SendStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->$VALUES:[Lcom/snapchat/android/model/Mediabryo$SendStatus;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/Mediabryo$SendStatus;
    .locals 1
    .parameter

    .prologue
    .line 44
    const-class v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/Mediabryo$SendStatus;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->$VALUES:[Lcom/snapchat/android/model/Mediabryo$SendStatus;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/Mediabryo$SendStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/Mediabryo$SendStatus;

    return-object v0
.end method
