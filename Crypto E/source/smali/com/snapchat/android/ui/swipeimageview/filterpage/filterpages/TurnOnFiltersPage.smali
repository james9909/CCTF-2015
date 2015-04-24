.class public Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/TurnOnFiltersPage;
.super Lcom/snapchat/android/ui/swipefilters/FilterPage;
.source "SourceFile"


# instance fields
.field private final b:Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/snapchat/android/ui/swipefilters/FilterPage;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/TurnOnFiltersPage;->b:Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "TurnOnSmartFilters"

    return-object v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/TurnOnFiltersPage;->b:Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->e:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/TurnOnFiltersPage;->b:Lcom/snapchat/android/ui/smartfilters/TurnOnFiltersView;

    return-object v0
.end method
