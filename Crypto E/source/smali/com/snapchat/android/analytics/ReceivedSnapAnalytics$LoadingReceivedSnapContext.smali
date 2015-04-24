.class public final enum Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/ReceivedSnapAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadingReceivedSnapContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

.field public static final enum LOAD_SNAP_BY_DEFAULT:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

.field public static final enum LOAD_SNAP_BY_TAP:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

.field public static final enum LOAD_STORY_SNAP_BY_DEFAULT:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

.field public static final enum LOAD_STORY_SNAP_BY_TAP:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

.field public static final enum UNINITIALIZED:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    const-string v1, "LOAD_STORY_SNAP_BY_DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->LOAD_STORY_SNAP_BY_DEFAULT:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    .line 15
    new-instance v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    const-string v1, "LOAD_STORY_SNAP_BY_TAP"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->LOAD_STORY_SNAP_BY_TAP:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    .line 16
    new-instance v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    const-string v1, "LOAD_SNAP_BY_DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->LOAD_SNAP_BY_DEFAULT:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    .line 17
    new-instance v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    const-string v1, "LOAD_SNAP_BY_TAP"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->LOAD_SNAP_BY_TAP:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    .line 18
    new-instance v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->UNINITIALIZED:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    sget-object v1, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->LOAD_STORY_SNAP_BY_DEFAULT:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->LOAD_STORY_SNAP_BY_TAP:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->LOAD_SNAP_BY_DEFAULT:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->LOAD_SNAP_BY_TAP:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->UNINITIALIZED:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->$VALUES:[Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;
    .locals 1
    .parameter

    .prologue
    .line 13
    const-class v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->$VALUES:[Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    invoke-virtual {v0}, [Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    return-object v0
.end method
