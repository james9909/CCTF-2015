.class public Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder$UpdateTaskFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/controller/countdown/SnapConsumptionRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateTaskFactory"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/api/UpdateStoriesTask;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/snapchat/android/api/UpdateStoriesTask;

    invoke-direct {v0}, Lcom/snapchat/android/api/UpdateStoriesTask;-><init>()V

    return-object v0
.end method
