.class public Lcom/snapchat/android/api2/UpdateUserTask$RequestPayload;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/UpdateUserTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPayload"
.end annotation


# instance fields
.field clientProperties:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_properties"
    .end annotation
.end field

.field seenTooltips:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seen_tooltips"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/UpdateUserTask;

.field username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api2/UpdateUserTask;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/snapchat/android/api2/UpdateUserTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/UpdateUserTask;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 47
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/UpdateUserTask$RequestPayload;->username:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api2/UpdateUserTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/UpdateUserTask;

    invoke-static {v1}, Lcom/snapchat/android/api2/UpdateUserTask;->a(Lcom/snapchat/android/api2/UpdateUserTask;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/UpdateUserTask$RequestPayload;->seenTooltips:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api2/UpdateUserTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/UpdateUserTask;

    invoke-static {v1}, Lcom/snapchat/android/api2/UpdateUserTask;->b(Lcom/snapchat/android/api2/UpdateUserTask;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/UpdateUserTask$RequestPayload;->clientProperties:Ljava/lang/String;

    return-void
.end method
