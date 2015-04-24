.class public Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/WeatherFilterPage;
.super Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/InfoFilterPage;
.source "SourceFile"


# instance fields
.field private final b:Lcom/snapchat/android/ui/smartfilters/WeatherView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/smartfilters/WeatherView;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/InfoFilterPage;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/WeatherFilterPage;->b:Lcom/snapchat/android/ui/smartfilters/WeatherView;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "Weather"

    return-object v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/WeatherFilterPage;->b:Lcom/snapchat/android/ui/smartfilters/WeatherView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/smartfilters/WeatherView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/WeatherFilterPage;->b:Lcom/snapchat/android/ui/smartfilters/WeatherView;

    return-object v0
.end method
