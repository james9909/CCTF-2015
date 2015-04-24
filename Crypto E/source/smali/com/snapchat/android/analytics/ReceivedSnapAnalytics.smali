.class public Lcom/snapchat/android/analytics/ReceivedSnapAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$1;,
        Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;
    }
.end annotation


# instance fields
.field private mContext:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->UNINITIALIZED:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    iput-object v0, p0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics;->mContext:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    .line 13
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)V
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 31
    invoke-virtual {p0, v0, v1, p3}, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics;->b(JLjava/lang/String;)V

    .line 32
    return-void
.end method

.method public a(Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics;->mContext:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    .line 23
    return-void
.end method

.method protected b(JLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 35
    sget-object v0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$ReceivedSnapAnalytics$LoadingReceivedSnapContext:[I

    iget-object v1, p0, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics;->mContext:Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ReceivedSnapAnalytics$LoadingReceivedSnapContext;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 37
    :pswitch_0
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "STORY_DOWNLOAD"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "context"

    const-string v2, "default"

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    goto :goto_0

    .line 44
    :pswitch_1
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "STORY_DOWNLOAD"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v1, "context"

    const-string v2, "tap"

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    const-string v1, "reachability"

    invoke-virtual {v0, v1, p3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
