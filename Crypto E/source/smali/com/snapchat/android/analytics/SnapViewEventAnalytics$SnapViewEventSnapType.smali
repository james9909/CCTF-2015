.class public final enum Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/SnapViewEventAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SnapViewEventSnapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

.field public static final enum IMAGE:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

.field public static final enum VIDEO:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;->IMAGE:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    .line 27
    new-instance v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;->VIDEO:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;->IMAGE:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;->VIDEO:Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;->$VALUES:[Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;
    .locals 1
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;->$VALUES:[Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/SnapViewEventAnalytics$SnapViewEventSnapType;

    return-object v0
.end method
