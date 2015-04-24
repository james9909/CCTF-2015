.class final enum Lcom/snapchat/android/analytics/AnalyticsEvents$Param;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/AnalyticsEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Param"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/AnalyticsEvents$Param;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

.field public static final enum FROM_NOTIFICATION:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

.field public static final enum NEWLY_RECEIVED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

.field public static final enum NEWLY_RECEIVED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

.field public static final enum UNVIEWED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

.field public static final enum UNVIEWED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    const-string v1, "FROM_NOTIFICATION"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->FROM_NOTIFICATION:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    .line 71
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    const-string v1, "NEWLY_RECEIVED_CHATS_COUNT"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->NEWLY_RECEIVED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    .line 72
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    const-string v1, "NEWLY_RECEIVED_SNAPS_COUNT"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->NEWLY_RECEIVED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    .line 73
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    const-string v1, "UNVIEWED_CHATS_COUNT"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->UNVIEWED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    .line 74
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    const-string v1, "UNVIEWED_SNAPS_COUNT"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->UNVIEWED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->FROM_NOTIFICATION:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->NEWLY_RECEIVED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->NEWLY_RECEIVED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->UNVIEWED_CHATS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->UNVIEWED_SNAPS_COUNT:Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/AnalyticsEvents$Param;
    .locals 1
    .parameter

    .prologue
    .line 69
    const-class v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/AnalyticsEvents$Param;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/AnalyticsEvents$Param;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$Param;

    return-object v0
.end method
