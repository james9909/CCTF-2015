.class public Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/SpeedometerFilterPage;
.super Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/InfoFilterPage;
.source "SourceFile"


# instance fields
.field private b:Lcom/snapchat/android/ui/smartfilters/SpeedometerView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/smartfilters/SpeedometerView;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/InfoFilterPage;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/SpeedometerFilterPage;->b:Lcom/snapchat/android/ui/smartfilters/SpeedometerView;

    .line 19
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "Speed"

    return-object v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/SpeedometerFilterPage;->b:Lcom/snapchat/android/ui/smartfilters/SpeedometerView;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/smartfilters/SpeedometerView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/SpeedometerFilterPage;->b:Lcom/snapchat/android/ui/smartfilters/SpeedometerView;

    return-object v0
.end method
