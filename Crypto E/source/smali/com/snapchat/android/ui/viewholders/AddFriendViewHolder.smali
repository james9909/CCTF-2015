.class public Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;
.super Lcom/snapchat/android/ui/viewholders/FriendViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/api/FriendActionTask$FriendActionCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$1;,
        Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;
    }
.end annotation


# instance fields
.field protected final J:Landroid/widget/CheckBox;

.field protected final K:Landroid/widget/ProgressBar;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    const v0, 0x7f0a0048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a004a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    invoke-direct {p0, p1, v0, v1}, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;-><init>(Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/ProgressBar;)V

    .line 43
    return-void
.end method

.method protected constructor <init>(Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/ProgressBar;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/viewholders/FriendViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->i:Z

    .line 48
    iput-object p2, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->J:Landroid/widget/CheckBox;

    .line 49
    iput-object p3, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->K:Landroid/widget/ProgressBar;

    .line 50
    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->K:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 64
    return-void
.end method

.method public B()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->K:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->K:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->J:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->J:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 135
    :cond_1
    return-void
.end method

.method public a(ILcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->J:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 114
    invoke-virtual {p5}, Lcom/snapchat/android/model/Friend;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p5}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FriendUtils;->e(Ljava/lang/String;Lcom/snapchat/android/model/User;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->J:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 117
    iget-object v6, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->J:Landroid/widget/CheckBox;

    new-instance v0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$FriendCheckboxOnClickListener;-><init>(Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {p5}, Lcom/snapchat/android/model/Friend;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-static {p5}, Lcom/snapchat/android/util/FriendExistsTaskCache;->b(Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/model/Friend;

    move-result-object p5

    .line 124
    :cond_1
    invoke-virtual {p5}, Lcom/snapchat/android/model/Friend;->D()Lcom/snapchat/android/model/Friend$SuggestState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->a(Lcom/snapchat/android/model/Friend$SuggestState;)V

    .line 125
    return-void

    .line 114
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/snapchat/android/model/Friend$SuggestState;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 142
    sget-object v0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$1;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend$SuggestState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 144
    :pswitch_0
    invoke-virtual {p0, v2, v2}, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->a(ZZ)V

    goto :goto_0

    .line 147
    :pswitch_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->B()V

    goto :goto_0

    .line 150
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->a(ZZ)V

    goto :goto_0

    .line 153
    :pswitch_3
    invoke-virtual {p0, v2, v2}, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->a(ZZ)V

    goto :goto_0

    .line 156
    :pswitch_4
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->J:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->a(ZZ)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Lcom/snapchat/android/model/FriendAction;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 187
    sget-object v0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder$1;->b:[I

    invoke-virtual {p1}, Lcom/snapchat/android/model/FriendAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 189
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->a(ZZ)V

    goto :goto_0

    .line 192
    :pswitch_1
    invoke-virtual {p0, v2, v2}, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->a(ZZ)V

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(ZZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 166
    if-eqz p1, :cond_2

    move v0, v1

    .line 174
    :goto_0
    iget-object v3, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->J:Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->J:Landroid/widget/CheckBox;

    invoke-virtual {v3, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 176
    iget-object v4, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->J:Landroid/widget/CheckBox;

    if-nez p1, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 177
    iget-object v3, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->J:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 180
    :cond_0
    if-eqz p1, :cond_5

    .line 181
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->K:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->K:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 182
    :cond_1
    return-void

    .line 168
    :cond_2
    iget-boolean v0, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->i:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    move v0, v1

    .line 169
    goto :goto_0

    :cond_3
    move v0, v2

    .line 171
    goto :goto_0

    :cond_4
    move v3, v2

    .line 176
    goto :goto_1

    :cond_5
    move v2, v1

    .line 180
    goto :goto_2
.end method

.method public e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->i:Z

    .line 139
    return-void
.end method

.method public t()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 53
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->J:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->K:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->J:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public z()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->J:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 60
    return-void
.end method
