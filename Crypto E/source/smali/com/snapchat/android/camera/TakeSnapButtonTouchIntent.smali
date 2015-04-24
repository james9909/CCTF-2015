.class public Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;
    }
.end annotation


# instance fields
.field private a:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;->a:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    iput-object v0, p0, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;->a:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;->a:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    return-object v0
.end method

.method public a(Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;->a:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    .line 25
    return-void
.end method
