.class public final enum Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/AnalyticsEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogoutReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

.field public static final enum AUTHENTICATION_ERROR:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

.field public static final enum NO_USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

.field public static final enum USER_INITIATED:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    const-string v1, "USER_INITIATED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->USER_INITIATED:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    .line 79
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    const-string v1, "AUTHENTICATION_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->AUTHENTICATION_ERROR:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    .line 80
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    const-string v1, "NO_USERNAME"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->NO_USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->USER_INITIATED:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->AUTHENTICATION_ERROR:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->NO_USERNAME:Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;
    .locals 1
    .parameter

    .prologue
    .line 77
    const-class v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$LogoutReason;

    return-object v0
.end method
