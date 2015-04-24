.class Lcom/snapchat/android/api/GetEndpointSetTask$PingResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api/GetEndpointSetTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PingResult"
.end annotation


# instance fields
.field private mPingTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latency_millis"
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gae_proxy"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api/GetEndpointSetTask;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api/GetEndpointSetTask;Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/snapchat/android/api/GetEndpointSetTask$PingResult;->this$0:Lcom/snapchat/android/api/GetEndpointSetTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/snapchat/android/api/GetEndpointSetTask$PingResult;->mUrl:Ljava/lang/String;

    .line 75
    iput-wide p3, p0, Lcom/snapchat/android/api/GetEndpointSetTask$PingResult;->mPingTime:J

    .line 76
    return-void
.end method
