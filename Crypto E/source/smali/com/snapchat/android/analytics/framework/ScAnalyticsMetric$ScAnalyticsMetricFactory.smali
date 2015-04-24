.class public Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric$ScAnalyticsMetricFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScAnalyticsMetricFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;
    .locals 1
    .parameter

    .prologue
    .line 139
    new-instance v0, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;

    invoke-direct {v0, p1}, Lcom/snapchat/android/analytics/framework/ScAnalyticsMetric;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
