.class public abstract Lcom/snapchat/android/api2/cash/blockers/CardBlocker;
.super Lcom/snapchat/android/api2/cash/blockers/Blocker;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/camera/cameradecor/CardLinkCameraDecor$CardDetailsListener;


# instance fields
.field protected mCardBlockerManager:Lcom/snapchat/android/cash/CardBlockerManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/snapchat/android/api2/cash/blockers/Blocker;-><init>()V

    return-void
.end method
