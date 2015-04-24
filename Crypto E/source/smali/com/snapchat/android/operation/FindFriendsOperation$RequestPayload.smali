.class public Lcom/snapchat/android/operation/FindFriendsOperation$RequestPayload;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/operation/FindFriendsOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPayload"
.end annotation


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "numbers"
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "countryCode"
    .end annotation
.end field

.field final synthetic c:Lcom/snapchat/android/operation/FindFriendsOperation;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/operation/FindFriendsOperation;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/snapchat/android/operation/FindFriendsOperation$RequestPayload;->c:Lcom/snapchat/android/operation/FindFriendsOperation;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 86
    invoke-static {}, Lcom/snapchat/android/util/GsonUtil;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/operation/FindFriendsOperation$RequestPayload;->c:Lcom/snapchat/android/operation/FindFriendsOperation;

    iget-object v1, v1, Lcom/snapchat/android/operation/FindFriendsOperation;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/FindFriendsOperation$RequestPayload;->a:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/snapchat/android/operation/FindFriendsOperation$RequestPayload;->c:Lcom/snapchat/android/operation/FindFriendsOperation;

    iget-object v0, v0, Lcom/snapchat/android/operation/FindFriendsOperation;->c:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/operation/FindFriendsOperation$RequestPayload;->b:Ljava/lang/String;

    return-void
.end method
