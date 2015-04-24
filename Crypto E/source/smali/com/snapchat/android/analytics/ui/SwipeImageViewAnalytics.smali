.class public Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->b:I

    .line 19
    iput v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->c:I

    .line 20
    iput v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->d:I

    .line 21
    const-string v0, "None"

    iput-object v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->a:I

    .line 26
    return-void
.end method

.method public a(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->b:I

    .line 34
    invoke-virtual {p0, p1}, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->c(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    .line 35
    return-void
.end method

.method protected a(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-static {p1, p2, p3, p4}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 57
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->c:I

    return v0
.end method

.method public b(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->c:I

    .line 43
    invoke-virtual {p0, p1}, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->c(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    .line 44
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->d(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V

    .line 48
    invoke-virtual {p1}, Lcom/snapchat/android/ui/swipefilters/FilterPage;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->e:Ljava/lang/String;

    .line 49
    iget-object v3, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->a:I

    if-nez v4, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->f:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 51
    return-void

    :cond_0
    move v0, v2

    .line 49
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public d()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->d:I

    return v0
.end method

.method protected d(Lcom/snapchat/android/ui/swipefilters/FilterPage;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    instance-of v0, p1, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/GeofilterPage;

    if-eqz v0, :cond_0

    .line 62
    iget v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->d:I

    .line 63
    check-cast p1, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/GeofilterPage;

    invoke-virtual {p1}, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/GeofilterPage;->f()Lcom/snapchat/android/model/Geofilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Geofilter;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->f:Ljava/lang/String;

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/snapchat/android/analytics/ui/SwipeImageViewAnalytics;->f:Ljava/lang/String;

    return-object v0
.end method
