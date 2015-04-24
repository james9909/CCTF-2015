.class Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;
.super Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContinueButtonCountDownTimer"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 818
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    .line 819
    const-wide/16 v0, 0x3e8

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/snapchat/android/util/system/time/BlockingCountDownTimer;-><init>(IJLandroid/os/Handler;)V

    .line 820
    iget-object v0, p1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 821
    iput v3, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;->b:I

    .line 822
    iget-object v0, p1, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c0179

    invoke-virtual {p1, v2}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 823
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 827
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    :goto_0
    return-void

    .line 828
    :cond_0
    iget v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;->b:I

    .line 829
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    const v3, 0x7f0c0179

    invoke-virtual {v2, v3}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 834
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    :goto_0
    return-void

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Landroid/widget/Button;

    const v1, 0x7f0c0179

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 836
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$ContinueButtonCountDownTimer;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->u:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
