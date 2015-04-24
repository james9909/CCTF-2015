.class public Lcom/snapchat/android/util/eventbus/CameraReadyEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lcom/snapchat/android/util/eventbus/CameraReadyEvent;->a:Z

    .line 17
    iput-boolean p2, p0, Lcom/snapchat/android/util/eventbus/CameraReadyEvent;->b:Z

    .line 18
    return-void
.end method
