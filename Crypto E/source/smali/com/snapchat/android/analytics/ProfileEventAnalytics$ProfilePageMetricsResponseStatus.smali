.class public final enum Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/ProfileEventAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProfilePageMetricsResponseStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

.field public static final enum FAIL:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

.field public static final enum SUCCESS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;->SUCCESS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

    .line 77
    new-instance v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;->FAIL:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;->SUCCESS:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;->FAIL:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;->$VALUES:[Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;
    .locals 1
    .parameter

    .prologue
    .line 75
    const-class v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;->$VALUES:[Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricsResponseStatus;

    return-object v0
.end method
