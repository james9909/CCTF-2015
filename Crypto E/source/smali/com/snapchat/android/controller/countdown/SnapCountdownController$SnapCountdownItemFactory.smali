.class public Lcom/snapchat/android/controller/countdown/SnapCountdownController$SnapCountdownItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/controller/countdown/SnapCountdownController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapCountdownItemFactory"
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;

    invoke-direct {v0}, Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownController$SnapCountdownItemFactory;-><init>(Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;)V

    .line 319
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$SnapCountdownItemFactory;->a:Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;

    .line 323
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/ReceivedSnap;Z)Lcom/snapchat/android/controller/countdown/SnapCountdownItem;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 329
    new-instance v0, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;

    invoke-direct {v0, p1, p2}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;-><init>(Lcom/snapchat/android/model/ReceivedSnap;Z)V

    .line 330
    iget-object v1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$SnapCountdownItemFactory;->a:Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/controller/countdown/SnapCountdownItem;->a(Lcom/snapchat/android/controller/countdown/SnapCountdownListener;)V

    .line 331
    return-object v0
.end method
