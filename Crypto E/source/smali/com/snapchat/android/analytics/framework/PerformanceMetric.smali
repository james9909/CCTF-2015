.class public Lcom/snapchat/android/analytics/framework/PerformanceMetric;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 62
    invoke-static {p0}, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;->x:Lcom/snapchat/android/analytics/framework/PerformanceMetric$Event;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
