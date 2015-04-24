.class Lcom/snapchat/android/notification/AndroidNotificationManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api2/chat/LoadConversationPageTask$LoadConversationPageTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snapchat/android/model/User;

.field final synthetic c:Lcom/snapchat/android/notification/AndroidNotificationManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/notification/AndroidNotificationManager;Ljava/lang/String;Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->c:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iput-object p2, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->b:Lcom/snapchat/android/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 359
    const-string v0, "AndroidNotificationManager"

    const-string v1, "CHAT-LOG: AndroidNotificationManager LoadConversationPageTask completed for %s with success: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->a:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    if-eqz p1, :cond_1

    .line 362
    iget-object v0, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/chat/ConversationUtils;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 364
    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->aC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {v0, v5}, Lcom/snapchat/android/model/chat/ChatConversation;->n(Z)V

    .line 368
    :cond_0
    invoke-static {}, Lcom/snapchat/android/database/table/ConversationTable;->b()Lcom/snapchat/android/database/table/ConversationTable;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$1;->b:Lcom/snapchat/android/model/User;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/database/table/ConversationTable;->c(Lcom/snapchat/android/model/User;)V

    .line 371
    :cond_1
    return-void
.end method
