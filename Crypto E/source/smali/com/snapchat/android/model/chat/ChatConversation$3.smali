.class Lcom/snapchat/android/model/chat/ChatConversation$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/Chat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/snapchat/android/model/chat/Chat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/model/chat/ChatConversation;


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 0
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/snapchat/android/model/chat/ChatConversation$3;->this$0:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/chat/Chat;Lcom/snapchat/android/model/chat/Chat;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 845
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 846
    const/4 v0, -0x1

    .line 850
    :goto_0
    return v0

    .line 847
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/snapchat/android/model/chat/Chat;->i()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 848
    const/4 v0, 0x1

    goto :goto_0

    .line 850
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 842
    check-cast p1, Lcom/snapchat/android/model/chat/Chat;

    check-cast p2, Lcom/snapchat/android/model/chat/Chat;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/model/chat/ChatConversation$3;->a(Lcom/snapchat/android/model/chat/Chat;Lcom/snapchat/android/model/chat/Chat;)I

    move-result v0

    return v0
.end method
