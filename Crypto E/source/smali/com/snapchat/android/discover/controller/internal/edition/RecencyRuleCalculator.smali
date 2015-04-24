.class Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/snapchat/android/util/system/Clock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/snapchat/android/util/system/Clock;

    invoke-direct {v0}, Lcom/snapchat/android/util/system/Clock;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;-><init>(Lcom/snapchat/android/util/system/Clock;)V

    .line 16
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/util/system/Clock;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;->a:Lcom/snapchat/android/util/system/Clock;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/discover/model/DSnapPage;JJI)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 34
    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/snapchat/android/discover/controller/internal/edition/RecencyRuleCalculator;->a:Lcom/snapchat/android/util/system/Clock;

    invoke-virtual {v1}, Lcom/snapchat/android/util/system/Clock;->a()J

    move-result-wide v4

    sub-long/2addr v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 35
    const-wide/32 v4, 0x36ee80

    mul-long/2addr v4, p4

    .line 36
    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, p6, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
