.class public Lcom/snapchat/android/api2/LoginTask$RequestPayload;
.super Lcom/snapchat/android/api2/StaticAuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/LoginTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestPayload"
.end annotation


# instance fields
.field mDeviceSignature:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dsig"
    .end annotation
.end field

.field mDeviceTokenId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dtoken1i"
    .end annotation
.end field

.field mGcmRegistrationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ptoken"
    .end annotation
.end field

.field mHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "height"
    .end annotation
.end field

.field mMaxVideoHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_video_height"
    .end annotation
.end field

.field mMaxVideoWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "max_video_width"
    .end annotation
.end field

.field mNeedsToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nt"
    .end annotation
.end field

.field mNumRetries:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "retry"
    .end annotation
.end field

.field mPassword:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field

.field mWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "width"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/snapchat/android/api2/StaticAuthPayload;-><init>()V

    return-void
.end method
