.class public Lcom/snapchat/android/api2/FriendExistsTask$RequestPayload;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/FriendExistsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPayload"
.end annotation


# instance fields
.field request_username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "request_username"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/FriendExistsTask;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api2/FriendExistsTask;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/snapchat/android/api2/FriendExistsTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/FriendExistsTask;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 56
    iget-object v0, p0, Lcom/snapchat/android/api2/FriendExistsTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/FriendExistsTask;

    invoke-static {v0}, Lcom/snapchat/android/api2/FriendExistsTask;->a(Lcom/snapchat/android/api2/FriendExistsTask;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/FriendExistsTask$RequestPayload;->request_username:Ljava/lang/String;

    return-void
.end method
