.class public Lcom/snapchat/android/api2/GetLocationDataTask$RequestPayload;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/GetLocationDataTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPayload"
.end annotation


# instance fields
.field accuracy:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "loc_accuracy_in_meters"
    .end annotation
.end field

.field latitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lat"
    .end annotation
.end field

.field longitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "long"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/GetLocationDataTask;

.field username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api2/GetLocationDataTask;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/snapchat/android/api2/GetLocationDataTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/GetLocationDataTask;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 70
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask$RequestPayload;->username:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/GetLocationDataTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/GetLocationDataTask;->a(Lcom/snapchat/android/api2/GetLocationDataTask;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask$RequestPayload;->latitude:Ljava/lang/Double;

    .line 74
    iget-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/GetLocationDataTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/GetLocationDataTask;->a(Lcom/snapchat/android/api2/GetLocationDataTask;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask$RequestPayload;->longitude:Ljava/lang/Double;

    .line 76
    iget-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/GetLocationDataTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/GetLocationDataTask;->a(Lcom/snapchat/android/api2/GetLocationDataTask;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/GetLocationDataTask$RequestPayload;->accuracy:Ljava/lang/Double;

    return-void
.end method
