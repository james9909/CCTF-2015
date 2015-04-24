.class public Lcom/snapchat/android/util/FriendUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p1, p0}, Lcom/snapchat/android/model/User;->e(Lcom/snapchat/android/model/Friend;)V

    .line 108
    invoke-virtual {p1, p0}, Lcom/snapchat/android/model/User;->d(Lcom/snapchat/android/model/Friend;)V

    .line 112
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->w()Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 114
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 116
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->b(Z)V

    .line 118
    :cond_0
    return-object p0
.end method

.method public static a(Lcom/snapchat/android/model/server/ServerFriend;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 94
    new-instance v0, Lcom/snapchat/android/model/Friend;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/model/Friend;-><init>(Lcom/snapchat/android/model/server/ServerFriend;Lcom/snapchat/android/model/User;)V

    .line 95
    invoke-static {v0, p1}, Lcom/snapchat/android/util/FriendUtils;->a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1, p0}, Lcom/snapchat/android/model/User;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 29
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/snapchat/android/model/Friend;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/User;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    invoke-static {p1}, Lcom/snapchat/android/model/UserPrefs;->f(Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p2, p0}, Lcom/snapchat/android/model/User;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/Friend;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ZLcom/snapchat/android/model/User;)V
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 207
    invoke-virtual {p2, p0}, Lcom/snapchat/android/model/User;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/Friend;->b(Z)V

    .line 212
    :cond_0
    invoke-virtual {p2}, Lcom/snapchat/android/model/User;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 213
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    invoke-virtual {v0, p1}, Lcom/snapchat/android/model/Friend;->b(Z)V

    .line 218
    :cond_2
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/Friend;)Z
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    if-nez p0, :cond_2

    .line 84
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->h()I

    move-result v2

    sget-object v3, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->a:Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;

    invoke-virtual {v3}, Lcom/snapchat/android/fragments/settings/SettingsFragment$PrivacyOptions;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 84
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->J()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->H()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    .line 74
    :cond_0
    invoke-virtual {v0, p0}, Lcom/snapchat/android/model/User;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/snapchat/android/util/FriendUtils;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/model/Friend;->e(Z)V

    .line 136
    invoke-virtual {p1, p0}, Lcom/snapchat/android/model/User;->d(Lcom/snapchat/android/model/Friend;)V

    .line 137
    return-object p0
.end method

.method public static b(Lcom/snapchat/android/model/server/ServerFriend;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 126
    new-instance v0, Lcom/snapchat/android/model/Friend;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/model/Friend;-><init>(Lcom/snapchat/android/model/server/ServerFriend;Lcom/snapchat/android/model/User;)V

    .line 127
    invoke-static {v0, p1}, Lcom/snapchat/android/util/FriendUtils;->b(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 34
    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1, p0}, Lcom/snapchat/android/model/User;->c(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Lcom/snapchat/android/model/User;)Z
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1, p0}, Lcom/snapchat/android/model/User;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->r_()Z

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Lcom/snapchat/android/model/User;)Ljava/lang/String;
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1, p0}, Lcom/snapchat/android/model/User;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->o()Ljava/lang/String;

    move-result-object p0

    .line 53
    :cond_0
    return-object p0
.end method

.method public static e(Ljava/lang/String;Lcom/snapchat/android/model/User;)Z
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 57
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/snapchat/android/model/User;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;Lcom/snapchat/android/model/User;)Z
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, p0}, Lcom/snapchat/android/model/User;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Friend;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 67
    :cond_0
    return v0
.end method

.method public static g(Ljava/lang/String;Lcom/snapchat/android/model/User;)V
    .locals 4
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v3, 0x0

    .line 146
    new-instance v0, Lcom/snapchat/android/model/Friend;

    invoke-direct {v0, p0}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/User;->e(Lcom/snapchat/android/model/Friend;)V

    .line 148
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->w()Ljava/util/List;

    move-result-object v1

    .line 151
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 152
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 153
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 154
    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/Friend;->b(Z)V

    .line 156
    :cond_0
    invoke-static {p0, p1}, Lcom/snapchat/android/util/FriendUtils;->j(Ljava/lang/String;Lcom/snapchat/android/model/User;)V

    .line 157
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/model/StoryLibrary;->d(Ljava/lang/String;)V

    .line 158
    invoke-static {p0}, Lcom/snapchat/android/chat/ConversationUtils;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Lcom/snapchat/android/model/chat/ChatConversation;->e(Z)V

    .line 160
    :cond_1
    return-void
.end method

.method public static h(Ljava/lang/String;Lcom/snapchat/android/model/User;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 163
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/snapchat/android/model/User;->b(Ljava/lang/String;Z)V

    .line 164
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/snapchat/android/model/StoryLibrary;->d(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    .line 166
    invoke-static {p0}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversationManager;->c(Ljava/lang/String;)V

    .line 167
    invoke-static {p0, p1}, Lcom/snapchat/android/util/FriendUtils;->j(Ljava/lang/String;Lcom/snapchat/android/model/User;)V

    .line 168
    return-void
.end method

.method public static i(Ljava/lang/String;Lcom/snapchat/android/model/User;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/snapchat/android/model/User;->b(Ljava/lang/String;Z)V

    .line 190
    return-void
.end method

.method private static j(Ljava/lang/String;Lcom/snapchat/android/model/User;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->m()Ljava/util/List;

    move-result-object v1

    .line 172
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 173
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 179
    :cond_2
    invoke-virtual {p1}, Lcom/snapchat/android/model/User;->u()Ljava/util/List;

    move-result-object v1

    .line 180
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 181
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 182
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
