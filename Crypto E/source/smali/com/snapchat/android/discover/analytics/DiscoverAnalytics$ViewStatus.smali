.class public final enum Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/analytics/DiscoverAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

.field public static final enum b:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

.field private static final synthetic c:[Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    const-string v1, "INCOMPLETE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->a:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    .line 56
    new-instance v0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->b:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    sget-object v1, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->a:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->b:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->c:[Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;
    .locals 1
    .parameter

    .prologue
    .line 54
    const-class v0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->c:[Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    invoke-virtual {v0}, [Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->b:Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/discover/analytics/DiscoverAnalytics$ViewStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
