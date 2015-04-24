.class final enum Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/livechat/AdlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MediaTransmissionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

.field public static final enum b:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

.field public static final enum c:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

.field private static final synthetic d:[Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->a:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    .line 67
    new-instance v0, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    const-string v1, "SETTING_UP"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->b:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    .line 70
    new-instance v0, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->c:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->a:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->b:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->c:Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->d:[Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;
    .locals 1
    .parameter

    .prologue
    .line 56
    const-class v0, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->d:[Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    invoke-virtual {v0}, [Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/livechat/AdlHelper$MediaTransmissionState;

    return-object v0
.end method
