.class Lcom/snapchat/android/api2/FriendExistsTask$ResponsePayload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/FriendExistsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResponsePayload"
.end annotation


# instance fields
.field exists:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "exists"
    .end annotation
.end field

.field logged:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logged"
    .end annotation
.end field

.field throttled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "throttled"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
