.class public Lcom/snapchat/android/ui/here/HereTooltip;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private b:Z

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/ui/here/HereTooltip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 46
    const v1, 0x7f040055

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 48
    const v0, 0x7f0a00ea

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HereTooltip;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HereTooltip;->c:Landroid/widget/TextView;

    .line 50
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HereTooltip;->a:Landroid/content/SharedPreferences;

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HereTooltip;->setAlpha(F)V

    .line 53
    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/chat/ChatConversation;)I
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HereTooltip;->getWeSupportHere()Z

    move-result v0

    .line 88
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->D()Z

    move-result v1

    .line 90
    if-nez v0, :cond_0

    .line 91
    const v0, 0x7f0c0138

    .line 95
    :goto_0
    return v0

    .line 92
    :cond_0
    if-nez v1, :cond_1

    .line 93
    const v0, 0x7f0c0137

    goto :goto_0

    .line 95
    :cond_1
    const v0, 0x7f0c0106

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HereTooltip;->a(Z)V

    .line 66
    return-void
.end method

.method public a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HereTooltip;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/here/HereTooltip;->a(Lcom/snapchat/android/model/chat/ChatConversation;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/here/HereTooltip;->b(Lcom/snapchat/android/model/chat/ChatConversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 61
    :goto_0
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HereTooltip;->a(Z)V

    .line 62
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x3e8

    .line 124
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HereTooltip;->b:Z

    if-ne p1, v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 125
    :cond_0
    iput-boolean p1, p0, Lcom/snapchat/android/ui/here/HereTooltip;->b:Z

    .line 127
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HereTooltip;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 129
    if-eqz p1, :cond_3

    const/high16 v0, 0x3f80

    .line 130
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 132
    if-eqz p1, :cond_1

    .line 133
    :cond_1
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 135
    if-eqz p1, :cond_2

    .line 136
    new-instance v0, Lcom/snapchat/android/ui/here/HereTooltip$1;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/ui/here/HereTooltip$1;-><init>(Lcom/snapchat/android/ui/here/HereTooltip;Landroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 152
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HereTooltip;->c()V

    .line 155
    :cond_2
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 156
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 129
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HereTooltip;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->ah:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    return-void
.end method

.method protected b(Lcom/snapchat/android/model/chat/ChatConversation;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->C()Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HereTooltip;->getWeSupportHere()Z

    move-result v1

    .line 106
    invoke-virtual {p1}, Lcom/snapchat/android/model/chat/ChatConversation;->D()Z

    move-result v2

    .line 107
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 113
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HereTooltip;->a:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->ah:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 114
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HereTooltip;->a:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->ah:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HereTooltip;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 162
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->ah:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    return-void
.end method

.method protected getWeSupportHere()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/snapchat/android/util/ApiHelper;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/ui/here/LocalPreview;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
