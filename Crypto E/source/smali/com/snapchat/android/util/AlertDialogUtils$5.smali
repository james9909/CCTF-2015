.class final Lcom/snapchat/android/util/AlertDialogUtils$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/ReceivedSnap;

.field final synthetic b:Lcom/snapchat/android/model/User;

.field final synthetic c:Lcom/snapchat/android/model/ChronologicalSnapProvider;


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/ChronologicalSnapProvider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/snapchat/android/util/AlertDialogUtils$5;->a:Lcom/snapchat/android/model/ReceivedSnap;

    iput-object p2, p0, Lcom/snapchat/android/util/AlertDialogUtils$5;->b:Lcom/snapchat/android/model/User;

    iput-object p3, p0, Lcom/snapchat/android/util/AlertDialogUtils$5;->c:Lcom/snapchat/android/model/ChronologicalSnapProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/snapchat/android/util/AlertDialogUtils$5;->a:Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->x()V

    .line 177
    iget-object v0, p0, Lcom/snapchat/android/util/AlertDialogUtils$5;->b:Lcom/snapchat/android/model/User;

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->C()V

    .line 178
    iget-object v0, p0, Lcom/snapchat/android/util/AlertDialogUtils$5;->c:Lcom/snapchat/android/model/ChronologicalSnapProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/AlertDialogUtils$5;->c:Lcom/snapchat/android/model/ChronologicalSnapProvider;

    instance-of v0, v0, Lcom/snapchat/android/model/chat/ChatConversation;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/snapchat/android/util/AlertDialogUtils$5;->c:Lcom/snapchat/android/model/ChronologicalSnapProvider;

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->r()V

    .line 181
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/SnapUtils;->b()V

    .line 182
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SnapSelectedForReplayEvent;

    invoke-direct {v1}, Lcom/snapchat/android/util/eventbus/SnapSelectedForReplayEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 184
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$5;->a:Lcom/snapchat/android/model/ReceivedSnap;

    iget-object v2, p0, Lcom/snapchat/android/util/AlertDialogUtils$5;->b:Lcom/snapchat/android/model/User;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ZLcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/User;)V

    .line 185
    return-void
.end method
