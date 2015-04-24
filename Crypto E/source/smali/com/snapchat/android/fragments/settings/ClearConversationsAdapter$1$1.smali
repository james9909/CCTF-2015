.class Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1$1;->b:Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1$1;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1$1;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->j(Z)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1$1;->b:Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1;->c:Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1$1;->b:Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1;

    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1;->a:Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1$1;->b:Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1;

    iget-object v2, v2, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$1;->b:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;->a(Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter;Lcom/snapchat/android/fragments/settings/ClearConversationsAdapter$ClearConversationsViewHolder;Lcom/snapchat/android/model/chat/ChatConversation;)V

    .line 85
    return-void
.end method
