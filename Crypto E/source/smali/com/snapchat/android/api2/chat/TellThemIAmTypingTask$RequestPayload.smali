.class public Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask$RequestPayload;
.super Lcom/snapchat/android/api2/AuthPayload;
.source "SourceFile"


# annotations
.annotation runtime Lcom/snapchat/android/api2/framework/FormEncodedBody;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPayload"
.end annotation


# instance fields
.field private recipientUsernames:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipient_usernames"
    .end annotation
.end field

.field final synthetic this$0:Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;Ljava/util/List;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask$RequestPayload;->this$0:Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;

    invoke-direct {p0}, Lcom/snapchat/android/api2/AuthPayload;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;->a(Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask;)Lcom/snapchat/android/util/GsonWrapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api2/chat/TellThemIAmTypingTask$RequestPayload;->recipientUsernames:Ljava/lang/String;

    .line 45
    return-void
.end method
