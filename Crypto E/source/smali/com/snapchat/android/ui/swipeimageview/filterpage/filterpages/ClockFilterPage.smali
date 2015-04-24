.class public Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/ClockFilterPage;
.super Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/InfoFilterPage;
.source "SourceFile"


# instance fields
.field private final b:Lcom/snapchat/android/ui/smartfilters/ClockView;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/smartfilters/ClockView;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/InfoFilterPage;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/ClockFilterPage;->b:Lcom/snapchat/android/ui/smartfilters/ClockView;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "Time"

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/snapchat/android/ui/swipeimageview/filterpage/filterpages/ClockFilterPage;->b:Lcom/snapchat/android/ui/smartfilters/ClockView;

    return-object v0
.end method
