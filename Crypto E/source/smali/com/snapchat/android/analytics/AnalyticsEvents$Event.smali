.class final enum Lcom/snapchat/android/analytics/AnalyticsEvents$Event;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/AnalyticsEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/AnalyticsEvents$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$Event;

.field public static final enum SYNC_ALL:Lcom/snapchat/android/analytics/AnalyticsEvents$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Event;

    const-string v1, "SYNC_ALL"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Event;->SYNC_ALL:Lcom/snapchat/android/analytics/AnalyticsEvents$Event;

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$Event;

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$Event;->SYNC_ALL:Lcom/snapchat/android/analytics/AnalyticsEvents$Event;

    aput-object v1, v0, v2

    sput-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Event;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$Event;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/AnalyticsEvents$Event;
    .locals 1
    .parameter

    .prologue
    .line 65
    const-class v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Event;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/AnalyticsEvents$Event;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$Event;->$VALUES:[Lcom/snapchat/android/analytics/AnalyticsEvents$Event;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/AnalyticsEvents$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/AnalyticsEvents$Event;

    return-object v0
.end method
