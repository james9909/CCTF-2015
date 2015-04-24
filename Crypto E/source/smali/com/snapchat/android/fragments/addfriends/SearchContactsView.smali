.class public Lcom/snapchat/android/fragments/addfriends/SearchContactsView;
.super Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/addfriends/AddFriendsAdapter$AddFriendsAdapterInterface;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/SearchContactsView;->setFastScrollAlwaysVisible(Z)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/SearchContactsView;->setTextFilterEnabled(Z)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/Friend;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public getAnalyticsContext()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->SEARCH:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-object v0
.end method

.method public getAnalyticsParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SearchContactsView;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN (parent not set)"

    .line 37
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/SearchContactsView;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAnalyticsParent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/SearchContactsView;->a:Ljava/lang/String;

    .line 33
    return-void
.end method
