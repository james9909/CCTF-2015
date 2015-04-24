.class public final enum Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/server/chat/ReleaseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReleaseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

.field public static final enum DELETE:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

.field public static final enum DISPLAY:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

.field public static final enum RELEASE:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    const-string v1, "RELEASE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->RELEASE:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    .line 24
    new-instance v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->DELETE:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    .line 25
    new-instance v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    const-string v1, "DISPLAY"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->DISPLAY:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    sget-object v1, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->RELEASE:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->DELETE:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->DISPLAY:Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->$VALUES:[Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->$VALUES:[Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/server/chat/ReleaseMessage$ReleaseType;

    return-object v0
.end method
