.class public Lcom/snapchat/android/api2/HideSharedStoryTask$RequestPayload;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/HideSharedStoryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPayload"
.end annotation


# instance fields
.field final friend:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friend"
    .end annotation
.end field

.field final hide:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hide"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/HideSharedStoryTask;


# direct methods
.method constructor <init>(Lcom/snapchat/android/api2/HideSharedStoryTask;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/snapchat/android/api2/HideSharedStoryTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/HideSharedStoryTask;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/snapchat/android/api2/HideSharedStoryTask;->a(Lcom/snapchat/android/api2/HideSharedStoryTask;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/HideSharedStoryTask$RequestPayload;->friend:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/snapchat/android/api2/HideSharedStoryTask;->b(Lcom/snapchat/android/api2/HideSharedStoryTask;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/api2/HideSharedStoryTask$RequestPayload;->hide:Z

    .line 47
    return-void
.end method
