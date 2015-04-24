.class public Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/GeofilterPage;
.super Lcom/snapchat/android/ui/swipefilters/FilterPage;
.source "SourceFile"


# instance fields
.field private final b:Lcom/snapchat/android/model/Geofilter;

.field private final c:Lcom/snapchat/android/ui/smartfilters/GeofilterView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/Geofilter;Lcom/snapchat/android/ui/smartfilters/GeofilterView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/snapchat/android/ui/swipefilters/FilterPage;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/GeofilterPage;->b:Lcom/snapchat/android/model/Geofilter;

    .line 23
    iput-object p2, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/GeofilterPage;->c:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Geofilter~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/GeofilterPage;->b:Lcom/snapchat/android/model/Geofilter;

    invoke-virtual {v1}, Lcom/snapchat/android/model/Geofilter;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/snapchat/android/ui/swipefilters/FilterPageType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/snapchat/android/ui/swipefilters/FilterPageType;->b:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/GeofilterPage;->c:Lcom/snapchat/android/ui/smartfilters/GeofilterView;

    return-object v0
.end method

.method public f()Lcom/snapchat/android/model/Geofilter;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/GeofilterPage;->b:Lcom/snapchat/android/model/Geofilter;

    return-object v0
.end method
